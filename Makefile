GXX49_VERSION := $(shell g++-4.9 --version 2>/dev/null)


TARGETS = file1 file2 file3

ifdef GXX49_VERSION
	CXX_COMMAND := g++-4.9
else
	CXX_COMMAND := g++
endif

CXX = ${CXX_COMMAND} -std=c++11 -Wall

all: clean $(TARGETS)
#run_test: disks_test
#	./disks_test

#headers: rubrictest.hpp disks.hpp

$(TARGETS):
	${CXX} $@.cpp -o $@

clean:
	rm -f $(TARGETS)