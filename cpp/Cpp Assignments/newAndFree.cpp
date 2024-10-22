

#include <iostream>
using namespace std;

class newAndFree
{
    int *ptr;

public:
    newAndFree();
    ~newAndFree();
};

newAndFree::newAndFree()
{
    cout << "Inside Constructor" << endl;
}

newAndFree::~newAndFree()
{
    delete[] ptr;
    cout << "Inside destructor." << endl;
}

int main()
{
    newAndFree *n = new newAndFree;
    free(n);
    // delete n;
}