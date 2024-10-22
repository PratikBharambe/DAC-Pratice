#include <iostream>
using namespace std;

// Can we delete heap memeory uding free() function created using new operator ........................

class Test
{
    int a;

public:
    Test()
    {
        cout << "Inside constructor" << endl;
    }
    void write()
    {
        cout << "Inside write" << endl;
    }
    ~Test()
    {
        a = 10;
        cout << "Inside Destructor." << endl;
        cout << "The value of a is " << a << endl;
    }
};

int main()
{

    Test *test = new Test[2];
    // delete[] test;
    free(test);

    test[5].write();
}