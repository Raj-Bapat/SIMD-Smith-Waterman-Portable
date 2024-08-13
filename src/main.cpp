#include <iostream>
#include <fstream>
#include <algorithm>
#include <vector>
#include <cmath>
#include <iomanip>
#include <unistd.h>
#include "Aligner.h"
#include "sw1.h"
#include "sw2.h"
#include "sw3.h"
#include "sw4.h"
using namespace std;

Aligner* Aligner::makeAligner(int version, const int& match_score, const int& mismatch_penalty, const int& gap_opening_penalty, const int& gap_extending_penalty) {
    if (version == 1) {
        return new sw1(match_score, mismatch_penalty, gap_opening_penalty, gap_extending_penalty);
    } else if (version == 2) {
        return new sw2(match_score, mismatch_penalty, gap_opening_penalty, gap_extending_penalty);
    } else if (version == 3) {
        return new sw3(match_score, mismatch_penalty, gap_opening_penalty, gap_extending_penalty);
    } else {
        return new sw4(match_score, mismatch_penalty, gap_opening_penalty, gap_extending_penalty);
    }

}

/*
    -m N	N is a positive integer for weight match in genome sequence alignment. [default: 2]
	-x N	N is a positive integer. -N will be used as weight mismatch in genome sequence alignment. [default: 2]
	-o N	N is a positive integer. -N will be used as the weight for the gap opening. [default: 3]
	-e N	N is a positive integer. -N will be used as the weight for the gap extension. [default: 1]
	-b	Output in BLAST format. 
*/

int main(int argc, char * const argv[]) {
    clock_t cpu_clock;
    double cpu_time;
    string target, query;
    int version = 1, match = 2, mismatch = 2, gap_open = 3, gap_extension = 1;
    int l;
    while ((l = getopt(argc, argv, "v:m:x:o:e:")) >= 0) {
        switch(l) {
            case 'v': version = atoi(optarg); break;
            case 'm': match = atoi(optarg); break;
			case 'x': mismatch = atoi(optarg); break;
			case 'o': gap_open = atoi(optarg); break;
			case 'e': gap_extension = atoi(optarg); break; 
        }
    }
    if (optind + 2 > argc) {
        fprintf(stderr, "\n");
		fprintf(stderr, "Usage: ssw_test [options] ... <target.fasta> <query.fasta>(or <query.fastq>)\n");
		fprintf(stderr, "Options:\n");
		fprintf(stderr, "\t-m N\tN is a positive integer for weight match in genome sequence alignment. [default: 2]\n");
		fprintf(stderr, "\t-x N\tN is a positive integer. -N will be used as weight mismatch in genome sequence alignment. [default: 2]\n");
		fprintf(stderr, "\t-o N\tN is a positive integer. -N will be used as the weight for the gap opening. [default: 3]\n");
		fprintf(stderr, "\t-e N\tN is a positive integer. -N will be used as the weight for the gap extension. [default: 1]\n");
        return 0;
    }
    ifstream fin;
    fin.open(argv[optind]);
    fin >> target;
    fin.close();
    fin.open(argv[optind + 1]);
    fin >> query;
    fin.close();
    Aligner* ssw_aligner = Aligner::makeAligner(version, match, mismatch, gap_open, gap_extension);
    cpu_clock = clock();
    Alignment ans = ssw_aligner->Align(target, query);
    cpu_time = clock()-cpu_clock;
    cout << ans.sw_score << "\n";
    cout << "time: " << ((float)cpu_time/CLOCKS_PER_SEC)*1000 << " ms" << "\n";
    return 0;
}