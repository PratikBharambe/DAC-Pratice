#include <iostream>
using namespace std;

/*
? Largest Element of array ...................................
*/
/*
int main()
{
    int length;
    cout << "Enter the length of array : ";
    cin >> length;

    int arr[length];
    int max = 0;
    cout << "Enter the elements : ";
    for (int i = 0; i < length; i++)
    {
        cin >> arr[i];
        if (arr[i] > max)
            max = arr[i];
    }

    cout << "The largest element is : " << max;
}
*/

/*
? Calculate average of all elements of a array using pointers ...................
*/
/*
int main()
{
    int length;
    cout << "Enter the length of array : ";
    cin >> length;

    int arr[length];
    int sum = 0;
    cout << "Enter the elements : ";
    for (int i = 0; i < length; i++)
    {
        cin >> *(arr + i);
        sum += *(arr + i);
    }

    double average = (double)sum / length;
    cout << "The average of the elemets is : " << average << endl;
}
*/

/*
? copy elements of one array into another array .........................
*/
/*
int main()
{
    int size;
    cout << "Enter the size eof the array : ";
    cin >> size;

    int array[size];
    int newArray[size];

    for (int i = 0; i < size; i++)
    {
        cin >> *(array + i);
        *(newArray + i) = *(array + i);
    }

    cout << "The elemnts of tnew array are : ";
    for (int i = 0; i < size; i++)
        cout << *(newArray + i);
}
*/

/*
? Addition of two matriceses ............................................
*/
/*
int main()
{
    int size;
    cout << "Enter the size of matrix : ";
    cin >> size;

    int firstMatrix[size][size];
    int secondMatrix[size][size];
    int resultMatrix[size][size];

    cout << "Enter the values of first matrix : " << endl;
    for (int i = 0; i < size; i++)
        for (int j = 0; j < size; j++)
            cin >> firstMatrix[i][j];

    cout << "Enter the values of second matrix : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            cin >> secondMatrix[i][j];
            resultMatrix[i][j] = firstMatrix[i][j] + secondMatrix[i][j];
        }
    }

    cout << "The result matrix is : ";
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            cout << resultMatrix[i][j] << " ";
        cout << endl;
    }
}
*/

/*
? Transpose of Matrix ....................
*/
/*
int main()
{
    int size;
    cout << "Enter the size of matrix : ";
    cin >> size;

    int firstMatrix[size][size];

    cout << "Enter the values of matrix : " << endl;
    for (int i = 0; i < size; i++)
        for (int j = 0; j < size; j++)
            cin >> firstMatrix[i][j];

    cout << "The transpose of matrix : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            cout << firstMatrix[j][i];
        cout << endl;
    }
}
*/

/*
? Square of all elements of 2d array ................................
*/
/*
int main()
{
    int size;
    cout << "Enter the size of matrix : ";
    cin >> size;

    int firstMatrix[size][size];

    cout << "Enter the values of matrix : " << endl;
    for (int i = 0; i < size; i++)
        for (int j = 0; j < size; j++)
            cin >> firstMatrix[i][j];

    cout << "The square of matrix : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            cout << firstMatrix[i][j] * firstMatrix[i][j] << " ";
        cout << endl;
    }
}
*/
