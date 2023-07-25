#include "Aligner.h"
using namespace std;


Aligner::Aligner(const int& match_score, const int& mismatch_penalty, const int& gap_opening_penalty, const int& gap_extending_penalty) {
    match_score_ = match_score;
    mismatch_penalty_ = mismatch_penalty;
    gap_opening_penalty_ = gap_opening_penalty;
    gap_extending_penalty_ = gap_extending_penalty;
}

Alignment Aligner::Align(std::string &target, std::string &query, const int&version) {
    if (version == 1) {
        return sw1(target, query);
    } else if (version == 2) {
        return sw2(target, query);
    } else if (version == 3) {
        return sw3(target, query);
    } else {
        return sw4(target, query);
    }
}

Alignment Aligner::sw1(std::string &target, std::string &query) {
    Alignment a;
    return a;
}
Alignment Aligner::sw2(std::string &target, std::string &query) {
    Alignment a;
    return a;
}
Alignment Aligner::sw3(std::string &target, std::string &query) {
    Alignment a;
    return a;
}
Alignment Aligner::sw4(std::string &target, std::string &query) {
    Alignment a;
    return a;
}