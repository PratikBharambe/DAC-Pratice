// Display infoprmation of 10 books using object array ,,,,,,,,,,,,,,,,,,,

#include <iostream>
using namespace std;

// defining the class Book to store the book informations .........................
class Book
{
    // declaring private variables ehisch are attributes to book class ............
    int id;
    int year;
    double price;

public:
    // constructor to initialoztion of the object ....................
    Book(int, int, double);
    // function to display the details of the book ........................
    void displayDetails();
};

// defining the of constructor outside the class suing scope resolution operator .................
Book::Book(int id, int year, double price)
{
    this->id = id;
    this->year = year;
    this->price = price;
}

// defining the of function outside the class suing scope resolution operator .................
void Book::displayDetails()
{
    cout << "\nThe details of the book is : " << endl;
    cout << "The id of the book is : " << id << endl;
    cout << "The year of publishing fot book is : " << year << endl;
    cout << "The price of the book is : " << price << endl;
}

// main method .....................
int main(int argc, char const *argv[])
{
    // defining and intialing an array of Book class using constructor to store multiple books ,,,,,,,,,,,,,,,,,,,,
    Book books[] = {
        Book(1, 2012, 500.00),
        Book(2, 2013, 300.00),
        Book(3, 2014, 600.00),
        Book(4, 2015, 800.00),
        Book(5, 2016, 500.00),
        Book(6, 2012, 100.00),
        Book(7, 2018, 500.00),
        Book(8, 2019, 500.00),
        Book(9, 2020, 500.00),
        Book(10, 2022, 500.00),
    };

    // defining the size of the array ,,,,,,,,,,,,,,,,
    int size = 10;

    // Interatinf over the array and printing the deayls using the predefind function ...................
    for (int i = 0; i < size; i++)
    {
        books[i].displayDetails();
    }
    

    return 0;
}
