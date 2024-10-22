/*
? 1) WRITE A CPP PROGRAM TO SWAP 2 VARIABLES WITHOUT USING 3RD VARIABLE.
 */
/*
#include <iostream>
using namespace std;

void uswap(int &a, int &b)
{
    a = a + b;
    b = a - b;
    a = a - b;
}
int main()
{
    int first, second;
    cout << "Enter first number : ";
    cin >> first;
    cout << "Enter second number : ";
    cin >> second;

    cout << "Before swapping " << first << "  " << second << endl;
    uswap(first, second);
    cout << "After swapping " << first << "  " << second << endl;
}
*/

/*
? 2) WRITE A CPP PROGRAM TO CHECK WHETHER THE GIVEN NUMBER IS PALINDROM OR NOT.
*/
/*
#include <iostream>
using namespace std;

bool checkPalindrome(int num)
{
    int checkNum = num;
    int revNum = 0;
    while (num > 0)
    {
        int lastDigit = num % 10;
        revNum = (revNum * 10) + lastDigit;
        num /= 10;
    }
    return (revNum == checkNum) ? true : false;
}

int main()
{
    int number;
    cout << "Enter a number : ";
    cin >> number;

    bool isPalindrome = checkPalindrome(number);
    if (isPalindrome)
        cout << "The number is palindrome.";
    else
        cout << "The number not is palindrome.";
}
*/

/*
? 3) WRITE A CPP PROGRAM TO DISPLAY 1ST 25 PRIME NUMBER.
*/
/*
#include <iostream>
using namespace std;

bool checkPrime(int &num)
{
    bool isPrime = true;
    for (int i = 2; i < num; i++)
    {
        if (num % i == 0)
        {
            isPrime = false;
            break;
        }
    }
    return isPrime;
}

int main()
{
    int limit;
    cout << "Enter the number of prime numbers you want : ";
    cin >> limit;

    int count = 1;
    int toCheckPrime = 1;
    while (count != (limit + 1))
    {
        bool isPrime = checkPrime(toCheckPrime);
        if (isPrime)
        {
            cout << "The " << count << " prime number is : " << toCheckPrime << endl;
            count++;
        }
        toCheckPrime++;
    }
}
*/

/*
? 4) WRITE A CPP PROGRAM TO DISPLAY FACTORIAL FROM NUMBER 5 TO 8.
*/
/*
#include <iostream>
using namespace std;

int getFacorial(int &number)
{
    int facto = 1;
    for (int i = 2; i <= number; i++)
    {
        facto *= i;
    }
    return facto;
}

int main()
{
    int starting, ending;
    cout << "Enter the starting number : ";
    cin >> starting;
    cout << "Enter the ending number : ";
    cin >> ending;

    for (int i = starting; i <= ending; i++)
    {
        cout << "The factorial of " << i << " is : " << getFacorial(i) << endl;
    }
}
*/

/*
? 5) WRITE A CPP PROGRAM TO DISPLAY SUMMATION OF EVEN AND ODD NUMBERS IN AN ARRAY OF INTEGERS.
*/
/*
#include <iostream>
using namespace std;

int main()
{
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    int size = sizeof(arr) / sizeof(arr[0]);
    int evenSum = 0, oddSum = 0;
    cout << "The given array is : ";
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << "  ";
        if (arr[i] % 2 == 0)
            evenSum += arr[i];
        else
            oddSum += arr[i];
    }
    cout << "\nThe sum of even numbers is : " << evenSum << endl;
    cout << "The sum of odd numbers is : " << oddSum << endl;
}
*/

/*
? 6) WRITE A CPP PROGRAM TO CHANGE THE CASE OF EACH CHARACTER IN A GIVEN STRING.
*/
/*
#include <iostream>
#include <string>
#include <cctype>
using namespace std;

int main()
{
    string str;
    cout << "Enter a string : ";
    getline(cin, str);

    for (char &ch : str)
    {
        if (isupper(ch))
            ch = tolower(ch);
        else
            ch = toupper(ch);
    }

    cout << "The modified string is : " << str << endl;
}
*/

/*
? 7) Write a template function swap () to swap the variables of int, char and complex types.
*/
/*
#include <iostream>
#include <complex>
using namespace std;

template <class P>
void uswap(P &first, P &second)
{
    P temp = first;
    first = second;
    second = temp;
}

int main()
{
    int i1 = 10, i2 = 20;
    char ch1 = 'A', ch2 = 'B';
    complex<double> c1(30, 40);
    complex<double> c2(10, 20);

    cout << "Before swapping : " << i1 << "  " << i2 << endl;
    cout << "Before swapping : " << ch1 << "  " << ch2 << endl;
    cout << "Before swapping : " << c1 << "  " << c2 << endl;

    uswap(i1, i2);
    uswap(ch1, ch2);
    uswap(c1, c2);

    cout << "After swapping : " << i1 << "  " << i2 << endl;
    cout << "After swapping : " << ch1 << "  " << ch2 << endl;
    cout << "After swapping : " << c1 << "  " << c2 << endl;
}
*/

/*
? 8) C++ Program to Find number of Digits in any number
*/
/*
#include <iostream>
using namespace std;

int main()
{
    int number;
    cout << "Enter a number : ";
    cin >> number;

    int count = 0;

    while (number > 0)
    {
        count++;
        number /= 10;
    }

    cout << "The number of digits are : " << count << endl;
}
*/

/*
? 9) C++ Program to Reverse a Number
*/
/*
#include <iostream>
using namespace std;

int getReverse(int num)
{
    int revNum = 0;
    while (num > 0)
    {
        int lastDigit = num % 10;
        revNum = (revNum * 10) + lastDigit;
        num /= 10;
    }
    return revNum;
}

int main()
{
    int number;
    cout << "Enter a number : ";
    cin >> number;
    cout << "The reversed number is : " << getReverse(number) << endl;
}
*/

/*
? 10 )C++ Program to remove all special characters from a given string.
*/

#include <iostream>
#include <string>
#include <cctype>
using namespace std;

int main()
{
    string str;
    string nstr = "";
    cout << "Enter a string : ";
    getline(cin, str);

    int length = str.length();
    cout << "The Length of string is : " << length << endl;

    for (int i = 0; i < length; i++)
    {
        if (isalnum(str[i]) || isspace(str[i]))
            nstr.push_back(str[i]);
    }
    cout << "The new string : " << nstr;
}