#include <iostream>
 
using namespace std;
 
class Packet {
  public:
    string contents;
    string destinationNode;
    bool networkStatus;

    Packet(string destination, string contents) { 
        this->destinationNode = destination;
        this->contents = contents;
     }
    ~Packet() {  }     
};
 

 
