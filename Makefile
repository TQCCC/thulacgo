all:
	g++ -std=c++11 -I./cppthulac -DLOGGING_LEVEL=LL_WARNING -O3 -Wall -fprofile-arcs -ftest-coverage -c thulac.cc

test:
	go test -v ./... -count=1
	gcov --branch-probabilities --branch-counts thulac.cc -o .

clean:
	rm -f *.o
	rm -f *.gcda
	rm -f *.gcno
	rm -f *.gcov
	rm -rf bw-output
