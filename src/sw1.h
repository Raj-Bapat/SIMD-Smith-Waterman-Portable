#ifndef SW1_H
#define SW1_H

#include "Aligner.h"

class sw1: public Aligner {
    public:
    sw1(const int& match_score, const int& mismatch_penalty, const int& gap_opening_penalty, const int& gap_extending_penalty) : Aligner(match_score, mismatch_penalty, gap_opening_penalty, gap_extending_penalty) {}
    virtual Alignment Align(std::string &target, std::string &query);
};


#endif