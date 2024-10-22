// cpp program to find average of the elements from the array using pointer ...................

#include <iostream>
using namespace std;

int main()
{
    // defining the szie of the array and acceping it form the user ..................
    int size;
    cout << "Enter the size of the array : ";
    cin >> size;

    // defining the array of szie eneted by the user ........
    int array[size];

    // defining an sum variable to store the sum of all the elemnts .....................
    int sum = 0;

    cout << "Enter the elements fo the array  : ";
    for (int i = 0; i < size; i++)
    {
        // acceping the data from userand adding it to the sum variable ...............
        cin >> *(array + i);
        sum += *(array + i);
    }
    // calculating the average of elements of the array and displayed it ...................
    double average = sum / size;
    cout << "The average is : " << average << endl;

    return 0;
}
