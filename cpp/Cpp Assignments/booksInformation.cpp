#include <iostream>
#include <string>
using namespace std;

class Book
{
    int id;
    string name;
    int yearOfPublish;

public:
    Book(int, string, int);
    void display();
};

Book::Book(int id, string name, int yearOfPublish)
{
    this->id = id;
    this->name = name;
    this->yearOfPublish = yearOfPublish;
}

void Book::display()
{
    cout << "The id : " << id << endl
         << "The name is : " << name << endl
         << "The year of publish : " << yearOfPublish << endl;
}

int main()
{
    Book books[] = {
        Book(1, "ABC", 2012),
        Book(2, "DEF", 2013),
        Book(3, "IFK", 2014),
        Book(4, "BCG", 2015),
        Book(5, "DJK", 2016),
        Book(6, "LKI", 2017),
        Book(7, "AUV", 2018),
        Book(8, "AHUV", 2019),
        Book(9, "BCH", 2020),
        Book(10, "DJD", 2021)};

    int data = 1;
    for (Book data : books)
    {
        data.display();
        cout << endl;
    }
}