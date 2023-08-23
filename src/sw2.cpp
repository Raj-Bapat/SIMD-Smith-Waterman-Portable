#include "sw2.h"
#include <immintrin.h>
#include <smmintrin.h>
using namespace std;

Alignment sw2::Align(std::string &target, std::string &query) {
    string mtarget = target + "12345678";
    string mquery = "90BDEFHI" + query;
    int l1 = target.length(), l2 = mquery.length();
    Alignment ans;
    ans.version = 1, ans.sw_score = -1, ans.sw_score_next_best = -1, ans.ref_end = -1, ans.ref_begin = -1;
    vector<int> D2(1+8+1, 0), D1(1+8+1, 0), P1(1+8+1, 0), Q1(1+8+1, 0);
    __m256i GOP = _mm256_set1_epi32(gap_opening_penalty_);
    __m256i GEP = _mm256_set1_epi32(gap_extending_penalty_);
    __m256i mANS = _mm256_set1_epi32(0);
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
            __m256i mP1 = _mm256_setr_epi32(mtarget[i-1], mtarget[i], mtarget[i+1], mtarget[i+2], mtarget[i+3], mtarget[i+4], mtarget[i+5], mtarget[i+6]);
            __m256i mQ1 = _mm256_setr_epi32(mquery[j-1], mquery[j-2], mquery[j-3], mquery[j-4], mquery[j-5], mquery[j-6], mquery[j-7], mquery[j-8]);
            __m256i msk = _mm256_cmpeq_epi32(mP1, mQ1);
            __m256i weight = _mm256_blendv_epi8(_mm256_set1_epi32(-mismatch_penalty_), _mm256_set1_epi32(match_score_), _mm256_cmpeq_epi32(mP1, mQ1));
            __m256i mD2 =  _mm256_loadu_si256((__m256i *)&D2[pt+diagInc]);
            __m256i mD1 =  _mm256_loadu_si256((__m256i *)&D1[pt+upInc]);
            __m256i mD0 = _mm256_set1_epi32(0);
            __m256i mP0 = _mm256_set1_epi32(0);
            __m256i mQ0 = _mm256_set1_epi32(0);
            mP0 = _mm256_max_epi32(mP0, _mm256_sub_epi32(mD1, GOP)); // P[i][j] = max(P[i][j], D[i-1][j]-gap_opening_penalty_);
            mP1 =  _mm256_loadu_si256((__m256i *)&P1[pt+upInc]);
            mP0 = _mm256_max_epi32(mP0, _mm256_sub_epi32(mP1, GEP)); // P[i][j] = max(P[i][j], P[i-1][j]-gap_extending_penalty_);
            mD1 =  _mm256_loadu_si256((__m256i *)&D1[pt+leftInc]);
            mQ0 = _mm256_max_epi32(mQ0, _mm256_sub_epi32(mD1, GOP)); // Q[i][j] = max(Q[i][j], D[i][j-1]-gap_opening_penalty_);
            mQ1 = _mm256_loadu_si256((__m256i *)&Q1[pt+leftInc]);
            mQ0 = _mm256_max_epi32(mQ0, _mm256_sub_epi32(mQ1, GEP)); // Q[i][j] = max(Q[i][j], Q[i][j-1]-gap_extending_penalty_);
            mD0 = _mm256_max_epi32(mD0, _mm256_add_epi32(mD2, weight)); // D[i][j] = max(D[i][j], D[i-1][j-1]+weight);
            mD0 = _mm256_max_epi32(mD0, mP0); // D[i][j] = max(D[i][j], P[i][j]);
            mD0 = _mm256_max_epi32(mD0, mQ0); // D[i][j] = max(D[i][j], Q[i][j]);
            mANS = _mm256_max_epi32(mANS, mD0);
            _mm256_storeu_si256((__m256i *)&P0[pt], mP0);
            _mm256_storeu_si256((__m256i *)&Q0[pt], mQ0);
            _mm256_storeu_si256((__m256i *)&D0[pt], mD0);
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
    _mm256_storeu_si256((__m256i *)&values[0], mANS);
    ans.sw_score = max(values[0], max(values[1], max(values[2], max(values[3], max(values[4], max(values[5], max(values[6], values[7])))))));
    return ans;
}