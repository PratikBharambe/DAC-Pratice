#include <iostream>
using namespace std;

void callByValue(int, int);
void callByAddress(int *, int *);
void callByReference(int &, int &);

int main()
{
    int a, b;
    cout<<"Enter the values of A and B : ";
    cin>>a>>b;
    cout << "Values before swaping are " << a << " & " << b << " resp." << endl;
    // callByValue(a, b);
    // callByAddress(&a, &b);
    callByReference(a, b);
    cout << "Values after swaping are " << a << " & " << b << " resp." << endl;
}

void callByValue(int a, int b)
{
    int temp = a;
    a = b;
    b = temp;
}

void callByAddress(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

void callByReference(int &a, int &b)
{
    int temp = a;
    a = b;
    b = temp;
}
