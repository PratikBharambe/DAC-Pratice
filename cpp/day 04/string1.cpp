#include <iostream>
#include <string.h>
using namespace std;

class string1
{
    int len;
    char *ptr;

public:
    string1();
    string1(int);
    string1(char, int);
    string1(char *);

    ~string1();

    void charDisplay();
    void stringDisplay();
};

string1::string1()
{
    len = 1;
    ptr = new char[len];
    *ptr = 'P';
}

string1::string1(int len)
{
    this->len = len;
    ptr = new char[len + 1];
    cout << "Enter the string : ";
    cin >> ptr;
}

string1::string1(char ch, int len)
{
    this->len = len;
    ptr = new char[len + 1];
    int i;
    for (i = 0; i < len; i++)
        *(ptr + i) = ch;
    *(ptr + i) = '\0';
}

string1::string1(char *sptr)
{
    int size = strlen(sptr);
    len = size;
    ptr = new char[len + 1];
    strcpy(ptr, sptr);
}

string1::~string1()
{
    cout << "Inside destructor" << endl;
    if (ptr)
        delete[] ptr;
    ptr = NULL;
}

void string1::charDisplay()
{
    cout << "Length is : " << len << endl;
    cout << "Character is : " << *ptr << endl;
}

void string1::stringDisplay()
{
    cout << "Length is : " << len << endl;
    cout << "String is : " << ptr << endl;
}

int main()
{
    string1 s1;
    s1.charDisplay();
    string1 s2("Pratik");
    s2.stringDisplay();
    string1 s3('#', 50);
    s3.stringDisplay();
    string1 s4(10);
    s3.stringDisplay();
    return 0;
}