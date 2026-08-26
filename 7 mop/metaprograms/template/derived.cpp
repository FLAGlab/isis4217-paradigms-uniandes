#include <iostream>
 
using namespace std;
 
class Base {
  public:
    Base() { cout << "Constructing base\n"; }
    virtual void method() { cout << "Base"; }
    virtual ~Base() { cout << "Destructing base\n"; }     
};
 
class Derived : public Base {
  public:
    Derived() { cout << "Constructing derived\n"; }
    ~Derived() { cout << "Destructing derived\n"; }
    virtual void method() {cout << "derived method"; }
};
 
int main() {
  Base *pBase = new Derived;
  pBase->method();
  
  return 0;
}