#include <iostream>
#include <string.h>
using namespace std;

char *ustrrev(char *str)
{
    int length = strlen(str);
    cout << "The length is : " << length << endl;
    char *nstr = new char[length + 1];

    int i = length - 1;
    int j;
    for (j = 0; j < length; j++)
    {
        nstr[j] = str[i];
        i--;
    }
    nstr[j] = '\0';

    return nstr;
}

int main()
{
    char ptr[20];
    cout << "Enter the string : ";
    cin >> ptr;

    cout << "The entered string is : " << ptr << endl;
    char *reversed = ustrrev(ptr);

    cout << "The reversed string is : " << reversed << endl;

    delete[] reversed;
}