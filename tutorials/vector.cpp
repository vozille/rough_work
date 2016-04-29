#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
using namespace std;

// function which returns a vector of factors
vector<int> getfactors(int num){
	vector<int> res;
	int lim = sqrt(num) + 1;
	for(int i = 1; i <= lim; i++){
		if(num % i == 0){
			if(num/i != i){
				res.push_back(i);
			}
			res.push_back(num/i);
		}
	}
	return res;
}

int main(void){
	vector<int> factors = getfactors(48);
	for(vector<int> i : factors){
		cout << i << '\n';
	}
}

