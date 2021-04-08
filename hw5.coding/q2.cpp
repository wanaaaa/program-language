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

template<class _InIt1, class _InIt2, class _OutIt, class _Fn> inline
void combine (_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Fn& _Func
	, _OutIt _Out) {
	for(; _First1 != _Last1; ++ _First1, ++ _First2, ++ _Out)
		*_Out = _Func(*_First1, *_First2);
}


int int main(int argc, char const *argv[]) {
	

	return 0;
}