#include <iostream>
using namespace std;

int getReverse(int number)
{
    int reverse = 0;
    while (number > 0)
    {
        int lastDigit = number % 10;
        reverse = (reverse * 10) + lastDigit;
        number /= 10;
    }
}

int main()
{
    int number;
    cout << "Enter a number : ";
    cin >> number;

    cout << "The reversed number is : " << getReverse(number) << endl;
}