#include <chrono>
#include <iostream>

using namespace std;

unsigned long long factorial(unsigned int n) {
    if(n == 0) 
        return 1.0;
    return n* factorial(n-1);
}

int main() {
    auto start = chrono::high_resolution_clock::now();
    int x = factorial(12);
    int y = factorial(15);
    cout << x << endl;
    cout << y << endl;
    auto stop = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<std::chrono::microseconds>(stop - start).count()/ 1000000.0; 
    cout << duration << endl;
    return 0;
}