#include "sw1.h"
using namespace std;

Alignment sw1::Align(std::string &target, std::string &query) {
    int l1 = target.length(), l2 = query.length();
    vector<vector<int>> D(l1+1, vector<int>(l2+1, 0));
    vector<vector<int>> P(l1+1, vector<int>(l2+1, 0));
    vector<vector<int>> Q(l1+1, vector<int>(l2+1, 0));
    vector<vector<int>> tracebackD(l1+1, vector<int>(l2+1, 0));
    vector<vector<int>> tracebackP(l1+1, vector<int>(l2+1, 0));
    vector<vector<int>> tracebackQ(l1+1, vector<int>(l2+1, 0));
    Alignment ans;
    ans.version = 1, ans.sw_score = -1, ans.sw_score_next_best = -1, ans.ref_end = -1, ans.ref_begin = -1;
    for (int i = 1; i<l1+1; i++) {
        for (int j = 1; j<l2+1; j++) {
            P[i][j] = -numeric_limits<int>::max()/2;
            Q[i][j] = -numeric_limits<int>::max()/2;
            int weight = (target[i-1] == query[j-1]) ? match_score_ : -mismatch_penalty_;
            if (D[i-1][j]-gap_opening_penalty_> P[i][j]) {
                P[i][j] = D[i-1][j]-gap_opening_penalty_;
                tracebackP[i][j] = 1;
            }
            if (P[i-1][j]-gap_extending_penalty_ > P[i][j]) {
                P[i][j] = P[i-1][j]-gap_extending_penalty_;
                tracebackP[i][j] = 2;
            }
            if (D[i][j-1]-gap_opening_penalty_ > Q[i][j]) {
                Q[i][j] = D[i][j-1]-gap_opening_penalty_;
                tracebackQ[i][j] = 1;
            }
            if (Q[i][j-1]-gap_extending_penalty_ > Q[i][j]) {
                Q[i][j] = Q[i][j-1]-gap_extending_penalty_;
                tracebackQ[i][j] = 2;
            }
            if (D[i-1][j-1]+weight > D[i][j]) {
                D[i][j] = D[i-1][j-1]+weight;
                tracebackD[i][j] = 1;
            }
            if (P[i][j] > D[i][j]) {
                D[i][j] = P[i][j];
                tracebackD[i][j] = 2;
            }
            if (Q[i][j] > D[i][j]) {
                D[i][j] = Q[i][j];
                tracebackD[i][j] = 3;
            }
            if (D[i][j] > ans.sw_score) {
                ans.sw_score_next_best = ans.sw_score;
                ans.sw_score = D[i][j];
            } else if (D[i][j] > ans.sw_score_next_best) {
                ans.sw_score_next_best = D[i][j];
            }
            // cout << "(" << D[i][j] << ", " << P[i][j] << ", " << Q[i][j] << ") ";
        }
        // cout << "\n";
    }
    return ans;
}