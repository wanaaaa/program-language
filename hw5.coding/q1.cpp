#include <iostream>
#include <string>
#include <sstream>
#include <iomanip>
#include <algorithm> 

#include <fstream> 
#include <vector>
#include <cstdlib>
#include <list>
#include <queue>
#include <map>
#include <cmath>

using namespace std;

class Average {
private:
	int n, sum;
public:
	Average(): n(0), sum(0) {}
	void operator() (int i) {
		sum +=i; n += 1;
	}
	int getAverage() {
		if(n != 0) return sum / n; 
		else return 0;
	}
}	

int int main(int argc, char const *argv[]) {
	int myArr[] = {5, 1, 27, 29, 17};
	const int N = sizeof(myArr) / sizeof(int);

	const int * begin = myArr;
	const int * end = myArr + N;

	Average avg;
	avg = for_each(begin, end, avg);


	return 0;
}
