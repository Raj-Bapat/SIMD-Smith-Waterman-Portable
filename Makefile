# Paths to Highway
HWY_DIR = /tmp/highway
HWY_BUILD_DIR = $(HWY_DIR)/build
HWY_LIB = $(HWY_BUILD_DIR)/libhwy.a
HWY_SRC_DIR = /tmp/highway/hwy

# Compiler and flags
CXX = g++
CXXFLAGS = -g
HWY_CXXFLAGS = -mavx2 -I$(HWY_DIR) -O2 -std=c++11 -march=haswell -maes  # Include Highway headers and AVX2 flags
LDFLAGS = -mavx2 $(HWY_LIB)          # Link against Highway and enable AVX2

# Target for the final executable
sw_test.out: main.o sw1.o sw2.o sw3.o sw4.o per_target.o targets.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o sw_test.out main.o sw1.o sw2.o sw3.o sw4.o per_target.o targets.o

# Object file targets
main.o: src/main.cpp src/Aligner.h src/sw1.h src/sw2.h src/sw3.h src/sw4.h
	$(CXX) $(CXXFLAGS) -c src/main.cpp

sw1.o: src/sw1.cpp src/sw1.h src/Aligner.h
	$(CXX) $(CXXFLAGS) -c src/sw1.cpp

sw2.o: src/sw2.cpp src/sw2.h src/Aligner.h 
	$(CXX) $(HWY_CXXFLAGS) -c src/sw2.cpp  # Use Highway-specific flags

sw3.o: src/sw3.cpp src/sw3.h src/Aligner.h
	$(CXX) $(CXXFLAGS) -c src/sw3.cpp

sw4.o: src/sw4.cpp src/sw4.h src/Aligner.h
	$(CXX) $(CXXFLAGS) -c src/sw4.cpp

per_target.o: $(HWY_SRC_DIR)/per_target.cc $(HWY_SRC_DIR)/per_target.h
	$(CXX) $(HWY_CXXFLAGS) -c $(HWY_SRC_DIR)/per_target.cc

# Compile targets.o from targets.cc
targets.o: $(HWY_SRC_DIR)/targets.cc $(HWY_SRC_DIR)/targets.h
	$(CXX) $(HWY_CXXFLAGS) -c $(HWY_SRC_DIR)/targets.cc

# Clean target
clean:
	rm -f *.o *.out