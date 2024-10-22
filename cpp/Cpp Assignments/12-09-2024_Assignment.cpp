#include <iostream>
#include <string>
using namespace std;

/*
? Accept a string from user and count the number of characters, spaces, .........................
? vowels, words & occurance of a perticular character .........................
*/
/*
int main()
{
    string str;
    cout << "Enter the string : ";
    getline(cin, str);

    char ch;
    cout << "Enter a character to check its occurance : ";
    cin >> ch;

    int countOfCharacters = 0,
        countOfSpaces = 0,
        countOfVowels = 0,
        countOfWords = 0,
        countOfSpecificCharacter = 0;

    int length = str.length();

    for (int i = 0; i < length; i++)
    {
        if (isalnum(str[i]))
            countOfCharacters++;
        if (isspace(str[i]))
        {
            countOfSpaces++;
            countOfWords++;
        }
        if (str[i] == 'A' || str[i] == 'E' || str[i] == 'I' || str[i] == 'O' || str[i] == 'U')
            countOfVowels++;
        if (str[i] == 'a' || str[i] == 'e' || str[i] == 'i' || str[i] == 'o' || str[i] == 'u')
            countOfVowels++;
        if (str[i] == ch)
            countOfSpecificCharacter++;
    }

    cout << "The total number of characters are : " << countOfCharacters << endl;
    cout << "The total number of spaces are : " << countOfSpaces << endl;
    cout << "The total number of vowels are : " << countOfVowels << endl;
    cout << "The total number of words are : " << countOfWords++ << endl;
    cout << "The total number of specific characters are : " << countOfSpecificCharacter << endl;
}
*/

/*
? To accept and print name surname, roll number .......................
? and marks for n numbers of students ................
*/
/*
class student
{
    string name;
    int rollNumber;
    int marks[5];

public:
    void acceptData();
    void displayData();
};

void student::acceptData()
{
    cout << "\nEnter the roll number of student : ";
    cin >> rollNumber;

    cout << "Enter the roll number of student : ";
    cin.ignore();
    getline(cin, name);

    cout << "Enter the marks for student : ";
    for (int i = 0; i < 5; i++)
        cin >> *(marks + i);
}

void student::displayData()
{
    cout << "\n\nThe roll number of student is : " << rollNumber << endl;
    cout << "The name of student is : " << name << endl;
    cout << "The marks of student is : ";
    for (int i = 0; i < 5; i++)
        cout << *(marks + i) << " ";
}

int main()
{
    int numberOfStudents;
    cout << "Enter the number of students : ";
    cin >> numberOfStudents;

    student s[numberOfStudents];
    for (int i = 0; i < numberOfStudents; i++)
        s[i].acceptData();
    for (int i = 0; i < numberOfStudents; i++)
        s[i].displayData();
}
*/