#include <iostream>
#include <fstream>
#include <algorithm>
#include <vector>
#include <cmath>
#include <iomanip>
#include <unistd.h>
using namespace std;

/*
    -m N	N is a positive integer for weight match in genome sequence alignment. [default: 2]
	-x N	N is a positive integer. -N will be used as weight mismatch in genome sequence alignment. [default: 2]
	-o N	N is a positive integer. -N will be used as the weight for the gap opening. [default: 3]
	-e N	N is a positive integer. -N will be used as the weight for the gap extension. [default: 1]
	-b	Output in BLAST format. 
*/

int main(int argc, char * const argv[]) {
    clock_t start, end;
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
}