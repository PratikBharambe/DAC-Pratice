// Pratik Bharambe ..............

#include <iostream>
using namespace std;

void swapCallByValue(int, int);
void swapCallByAddress(int *, int *);

int main(int argc, char const *argv[])
{
    int a, b;
    cout << "Enter the value of A & B : ";
    cin >> a >> b;

    cout << "\n................... Call By Value ..................." << endl;
    cout << "Values of A & B before swapping are " << a << " & " << b << " Resp." << endl;
    swapCallByValue(a, b);
    cout << "Values of A & B after swapping are " << a << " & " << b << " Resp." << endl;

    cout << "\n................... Call By Address ..................." << endl;
    cout << "Values of A & B before swapping are " << a << " & " << b << " Resp." << endl;
    swapCallByAddress(&a, &b);
    cout << "Values of A & B after swapping are " << a << " & " << b << " Resp." << endl;

    return 0;
}

void swapCallByValue(int a, int b)
{
    int temp = a;
    a = b;
    b = temp;
}

void swapCallByAddress(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}