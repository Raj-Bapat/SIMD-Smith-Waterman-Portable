#ifndef ALIGNER_H
#define ALIGNER_H

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

struct Alignment {
    int version;            // The version of aligner we want to use         
    int sw_score;           // The best alignment score
    int sw_score_next_best; // The next best alignment score
    int  ref_begin;          // Reference begin position of the best alignment
    int  ref_end;            // Reference end position of the best alignment
    int  query_begin;        // Query begin position of the best alignment
    int  query_end;          // Query end position of the best alignment
    int  ref_end_next_best;  // Reference end position of the next best alignment
    int  mismatches;         // Number of mismatches of the alignment
    std::string cigar_string;    // Cigar string of the best alignment
};

class Aligner {
    public:
        
    Aligner(void);
    Aligner(const int& match_score, const int& mismatch_penalty, const int& gap_opening_penalty, const int& gap_extending_penalty);
    Alignment Align(std::string &target, std::string &query, const int&version);
    Alignment sw1(std::string &target, std::string &query);
    Alignment sw2(std::string &target, std::string &query);
    Alignment sw3(std::string &target, std::string &query);
    Alignment sw4(std::string &target, std::string &query);
    
    private:

    int match_score_;
    int mismatch_penalty_;
    int gap_opening_penalty_;
    int gap_extending_penalty_;
};       

#endif