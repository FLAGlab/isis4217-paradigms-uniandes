#include <chrono>
#include <iostream>

using namespace std;

template <long long N>
struct Factorial {
    enum { value = N * Factorial<N - 1>::value };
};

template <>
struct Factorial<0> {
    enum { value = 1 };
};
// Factorial<12>::value == 479001600
// Factorial<15>::value == 2004310016

int main() {
    auto start = chrono::high_resolution_clock::now();
    int x = Factorial<12>::value; // == 479001600
    cout << x << endl;
    int y = Factorial<15>::value; // == 2004310016
    cout << y << endl;
    auto stop = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<std::chrono::microseconds>(stop - start).count() / 1000000.0;
    cout << duration << endl;
    return 0;
}