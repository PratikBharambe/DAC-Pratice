// cpp program to perform addition of two matrix ..................

#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    // defining the size of the array and accepting it from the user ...................
    int size;
    cout << "Enter size of matrix : ";
    cin >> size;

    // defining first, second and result matrix to store results ...................
    int firstMatrix[size][size];
    int secondMatrix[size][size];
    int resultMatrix[size][size];

    // Accetinng the data for first matrix from the user ...............
    cout << "Enter the data for first matrix : " << endl;
    for (int i = 0; i < size; i++)
        for (int j = 0; j < size; j++)
            cin >> firstMatrix[i][j];

    // Accepting the data for the second matrix and striong the sum to the resultMatrix ......................
    cout << "Enter the data for the second matrix : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            cin >> secondMatrix[i][j];
            resultMatrix[i][j] = firstMatrix[i][j] + secondMatrix[i][j];
        }
    }

    // display of the resukt matrix ................
    cout << "The result matrix is : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; i < size; j++)
        {
            cout << resultMatrix[i][j] << "  ";
        }
        cout << "\n";
    }

    return 0;
}
