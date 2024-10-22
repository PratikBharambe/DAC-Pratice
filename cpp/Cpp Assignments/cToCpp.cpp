#include <iostream>
using namespace std;

/*
? ----------------------------- to print tables ---------------------------- */
/*
int main()
{
    int number;
    cout << "Enter number of tables : ";
    cin >> number;

    for (int i = 1; i <= number; i++)
    {
        cout << "The table of " << i << " is : " << endl;
        for (int j = 1; j <= 10; j++)
            cout << i << " * " << j << " = " << (i * j) << endl;
        cout << endl;
    }
}
*/

/*
? ---------------------------- fibonacci series ---------------------------- */
/*
int main()
{
    int number;
    cout << "Enter number of numbers : ";
    cin >> number;

    int n1 = 0;
    int n2 = 1;
    cout << "The fibonacci series is : " << endl
         << n1 << " " << n2 << " ";
    for (int i = 0; i < (number - 2); i++)
    {
        int n3 = n1 + n2;
        cout << n3 << " ";
        n1 = n2;
        n2 = n3;
    }
}
*/

/*
? -------------------------- to check prime number ------------------------- */
/*
int main()
{
    int number;
    cout << "Enter number to check prime : ";
    cin >> number;
    bool isPrime = true;
    for (int i = 2; i < number / 2; i++)
        if (number % i == 0)
            isPrime = false;

    if (isPrime)
        cout << "The number " << number << " is a prime number.";
    else
        cout << "The number " << number << " is not a prime number.";
}
*/

/*
? ---------------------------- Armstrong Number ---------------------------- */
/*
int main()
{
    int number;
    cout << "Enter number to check armstrong : ";
    cin >> number;

    int checkNumber = number;
    int armstrong = 0;
    while (number > 0)
    {
        int lastDigit = number % 10;
        armstrong += lastDigit * lastDigit * lastDigit;
        number /= 10;
    }
    if (armstrong == checkNumber)
        cout << "The number is armstrong number.";
    else
        cout << "The number is not armstrong number.";
}
*/

/*
? -------------- accept 5 marks for 5 students & print average ------------- */
/*
int main()
{
    int number;
    cout << "Enter number of students : ";
    cin >> number;

    for (int i = 0; i < number; i++)
    {
        int a, b, c, d, e, sum;
        double average;

        cout << "Enter a marks : ";
        cin >> a >> b >> c >> d >> e;
        sum = a + b + c + d + e;
        average = (double)sum / 5;
        cout << "The sum of marks is : " << sum << endl;
        cout << "The average is : " << average << endl;
    }
}
*/

/*
? -------------- to print even numbers using continue keyword -------------- */
/*
int main()
{
    int number;
    cout << "Enter limit to get even numbers till : ";
    cin >> number;
    for (int i = 1; i <= number; i++)
    {
        if (i % 2 != 0)
            continue;
        else
            cout << i << endl;
    }
}
*/

/*
? ------------------------ print factorial of number ----------------------- */
/*
int main()
{
    int number;
    cout << "Enter a number : ";
    cin >> number;

    int factorial = 1;
    for (int i = 2; i <= number; i++)
        factorial *= i;

    cout << "The factorial of " << number << " is : " << factorial << endl;
}
*/

/*
? ----------------------------- To print table ----------------------------- */
/*
int main()
{
    int num;
    cout << "Enter a number to get table : ";
    cin >> num;

    for (int i = 1; i <= 10; i++)
        cout << num << " * " << i << " = " << (num * i) << endl;
}
*/

/*
? ---------------------------- Ternary operaotr ---------------------------- */
/*
int main()
{
    int a, b, c;
    cout << "Enter the values of a, b & c : ";
    cin >> a >> b >> c;

    int max = (a > b) ? (a > c) ? a : c : (b > c) ? b : c;

    cout << "The largest number is : " << max << endl;
}
*/