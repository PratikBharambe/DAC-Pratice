// CPP program to copy elemets of one array to another array using pointer .................

#include <iostream>
using namespace std;

int main()
{
    // defining the szie of the array and acceping it form the user ..................
    int size;
    cout << "Enter the size eof the array : ";
    cin >> size;

    // Initializing the array and newArray to copy elements from the array ..............
    int array[size];
    int newArray[size];

    // accepting the elemets fo the array and copying them to newArray ..................
    for (int i = 0; i < size; i++)
    {
        cin >> *(array + i);
        *(newArray + i) = *(array + i);
    }

    // Printed the copied elemets of the newArray .....................
    cout << "The elemnts of tnew array are : ";
    for (int i = 0; i < size; i++)
        cout << *(newArray + i);

    return 0;
}
