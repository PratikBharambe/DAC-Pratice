#include <iostream>
using namespace std;

bool isPalindrome(int number)
{
    int checknum = number;
    int reverse = 0;

    while (number > 0)
    {
        int lastDigit = number % 10;
        reverse = (reverse * 10) + lastDigit;
        number /= 10;
    }

    if (checknum == reverse)
        return true;
    else
        return false;
}

int main()
{
    int number;
    cout << "Enter a number : ";
    cin >> number;

    if (isPalindrome(number))
        cout << "The number " << number << " is a palindrome number." << endl;
    else
        cout << "The number " << number << " is not a palindrome number." << endl;
}