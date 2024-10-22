

#include <iostream>
#include <string.h>
#include <cctype>
using namespace std;

/* -------------------------------------------------------------------------- */
/*                                Assignment 02                               */
/* -------------------------------------------------------------------------- */

class Student
{
    char name[30];
    int rollCall;
    int marks[5];

public:
    void getData();
    void display();
};

void Student ::getData()
{
    cout << "Enter name & surname of student : "<<endl;
    cin.ignore();
    gets(name);

    cout << "Enter the roll Number of student : "<<endl;
    cin >> rollCall;

    cout << "Enter the marks : "<<endl;
    for (int i = 0; i < 5; i++)
        cin >> *(marks + i);
}

void Student::display()
{
    cout << "The name of the student is : "<<endl;
    puts(name);
    cout << "Roll number is : " << rollCall<<endl;
    cout << "The marks of student are : "<<endl;
    for (int i = 0; i < 5; i++)
        cout << *(marks + i) << "  ";
}

int main()
{
    cout << "Enter the number of students : "<<endl;
    int numOfStud;
    cin >> numOfStud;

    Student stud[numOfStud];

    for (int i = 0; i < numOfStud; i++)
    {
        stud[i].getData();
        stud[i].display();
    }
    
}

/* -------------------------------------------------------------------------- */
/*                                Assignment 01                               */
/* -------------------------------------------------------------------------- */

/*
int main()
{
    char sstr[30];
    cout << "Enter a string : ";
    gets(sstr);

    char specificChar;
    cout << "Enter the specific character to find occurance : ";
    cin >> specificChar;

    int numOfChar = 0,
        numOfSpace = 0,
        numOfSpecificChar = 0,
        numOfVowels = 0,
        noOfWords = 0;

    for(char * str = sstr ; *str != '\0' ; str++)
    {
        if (isspace(*str))
        {
            numOfSpace++;
            noOfWords++;
        }
        if (*str == specificChar)
            numOfSpecificChar++;
        if (*str == 'a' || *str == 'e' || *str == 'i' || *str == 'o' || *str == 'u')
            numOfVowels++;
        if (*str == 'A' || *str == 'E' || *str == 'I' || *str == 'O' || *str == 'U')
            numOfVowels++;
        if (isalpha(*str))
            numOfChar++;

    }
    noOfWords++;

    cout << "The number of characters is : " << numOfChar << endl;
    cout << "The number of spaces is : " << numOfSpace << endl;
    cout << "The number of Vowels is : " << numOfVowels << endl;
    cout << "The number of Specific character " << specificChar << " is : " << numOfSpecificChar << endl;
    cout << "The number of words is : " << noOfWords << endl;
}
*/
