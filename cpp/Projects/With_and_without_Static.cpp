#include <iostream>
using namespace std;

void withoutStatic();
void withStatic();

int main()
{
    cout << "\n.................. Without Static keyword .................." << endl;
    for (int i = 0; i < 5; i++)
    {
        withoutStatic();
    }

    cout << "\n.................. With Static keyword ....................." << endl;
    for (int i = 0; i < 5; i++)
    {
        withStatic();
    }

    return 0;
}

void withoutStatic()
{
    int count = 0;
    cout << "The value is : " << count << endl;
    count++;
}
void withStatic()
{
    static int count = 0;
    cout << "The value is : " << count << endl;
    count++;
}