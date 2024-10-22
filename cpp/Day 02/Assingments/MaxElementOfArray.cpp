// Cpp Program to find largest number of an array ........................

#include <iostream>
using namespace std;

int main()
{
    // defining the size of the array and accepting it from the user ...................
    int size;
    cout << "Enter the size of the array : ";
    cin >> size;

    // defining an variable to store the largest value .................
    // among the values entered by the user ......................
    int max = 0;

    // defining the array ...............
    int array[size];
    // acceping the array elements from the user ..............
    cout << "Enter the elemnts of the array : ";
    for (int i = 0; i < size; i++)
    {
        // Acceping the elemets of array and checking it is largest or not .............
        cin >> array[i];
        if (max < array[i])
            max = array[i];
    }

    // displaying the largest element of the array ......................
    cout << "The largest number from the array is : " << max << endl;

    return 0;
}
