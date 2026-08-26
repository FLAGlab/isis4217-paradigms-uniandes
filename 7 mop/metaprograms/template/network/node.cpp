#include <iostream>

#include "packet.cpp"

using namespace std;
 
class Node {
  public:
    string name;
    Node(string name) { 
        this-> name = name;
    }

    virtual void handle(Packet p) { 
        if(p.destinationNode == this->name) {

        }
    }
    virtual void process(Packet p) {

    }
    virtual ~Node() {  }     
};
 
class Derived : public Node {
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