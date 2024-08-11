#include "sw2.h"
#include <immintrin.h>
#include <smmintrin.h>
#include <cstring>
#include </tmp/highway/hwy/highway.h>

namespace hn = hwy::HWY_NAMESPACE;
using T = int;
using namespace std;
constexpr size_t N = 8;  // Number of lanes
const hn::ScalableTag<T> D;

Alignment sw2::Align(std::string &target, std::string &query) {
    string mtargetstring = target + "12345678";
    int len = mtargetstring.length();
    T HWY_RESTRICT mtarget[len];
    for (int i = 0; i < len; ++i) {
        mtarget[i] = static_cast<int>(mtargetstring[i]);
    }
    string mquerystring = "90BDEFHI" + query;
    len = mquerystring.length();
    T HWY_RESTRICT mquery[len];
    for (int i = 0; i < len; ++i) {
        mquery[i] = static_cast<int>(mquerystring[i]);
    }
    int l1 = mtargetstring.length(), l2 = mquerystring.length();
    Alignment ans;
    ans.version = 1, ans.sw_score = -1, ans.sw_score_next_best = -1, ans.ref_end = -1, ans.ref_begin = -1;
    vector<int> D2(1+8+1, 0), D1(1+8+1, 0), P1(1+8+1, 0), Q1(1+8+1, 0);
    auto GOP = hn::Set(D, gap_opening_penalty_);
    auto GEP = hn::Set(D, gap_extending_penalty_);
    auto mANS = hn::Zero(D);
    for (int d = 1; d<=l1+l2-8-1; d++) {
        int i = max(1, d-l2+1+8);
        int j = d-i+1+8;
        int ie = min(d, l1);
        int je = d-ie+1+8;
        int dist = min(ie-i+1+8, j-je+1+8);
        vector<int> D0(dist+2, 0), P0(dist+2, 0), Q0(dist+2, 0);
        int pt = 1;
        int diagInc = 0, upInc = 0, leftInc = 0; // if the diagonal is greater than the number of cols, the add/sub stuff is switched (check example)
        if (i == 1 && d != l2-8) {
            diagInc = -1;
            upInc = -1;
        } else if (i == 1 && d == l2-8) {
            leftInc = 1;
            pt = 0;
        } else {
            diagInc = 1;
            leftInc = 1;
            pt = 0;
        }
        while (i <= ie && j >= je) {
            auto mP1 = hn::LoadU(D, mtarget + i - 1);
            auto mQ1 = hn::Reverse(D, hn::LoadU(D, mquery + j - 8));
            auto msk = hn::Eq(mP1, mQ1);
            auto weight = hn::IfThenElse(msk, hn::Set(D, match_score_), hn::Set(D, -mismatch_penalty_));
            auto mD2 = hn::LoadU(D, &D2[pt + diagInc]);
            auto mD1 = hn::LoadU(D, &D1[pt + upInc]);
            auto mD0 = hn::Zero(D);
            auto mP0 = hn::Zero(D);
            auto mQ0 = hn::Zero(D);
            mP0 = hn::Max(mP0, hn::Sub(mD1, GOP)); // P[i][j] = max(P[i][j], D[i-1][j]-gap_opening_penalty_);
            mP1 = hn::LoadU(D, &P1[pt+upInc]);
            mP0 = hn::Max(mP0, hn::Sub(mP1, GEP)); // P[i][j] = max(P[i][j], P[i-1][j]-gap_extending_penalty_);
            mD1 = hn::LoadU(D, &D1[pt+leftInc]);
            mQ0 = hn::Max(mQ0, hn::Sub(mD1, GOP)); // Q[i][j] = max(Q[i][j], D[i][j-1]-gap_opening_penalty_);
            mQ1 = hn::LoadU(D, &Q1[pt+leftInc]);
            mQ0 = hn::Max(mQ0, hn::Sub(mQ1, GEP)); // Q[i][j] = max(Q[i][j], Q[i][j-1]-gap_extending_penalty_);
            mD0 = hn::Max(mD0, hn::Add(mD2, weight)); // D[i][j] = max(D[i][j], D[i-1][j-1]+weight);
            mD0 = hn::Max(mD0, mP0); // D[i][j] = max(D[i][j], P[i][j]);
            mD0 = hn::Max(mD0, mQ0); // D[i][j] = max(D[i][j], Q[i][j]);
            mANS = hn::Max(mANS, mD0);
            hn::StoreU(mP0, D, &P0[pt]);
            hn::StoreU(mQ0, D, &Q0[pt]);
            hn::StoreU(mD0, D, &D0[pt]);
            i+=8;
            j-=8;
            pt+=8;
        }
        D1.swap(D2);
        D1.swap(D0);
        Q0.swap(Q1);
        P0.swap(P1);

    }
    vector<int> values(8, 0);
    hn::StoreU(mANS, D, &values[0]);
    ans.sw_score = max(values[0], max(values[1], max(values[2], max(values[3], max(values[4], max(values[5], max(values[6], values[7])))))));
    return ans;
}