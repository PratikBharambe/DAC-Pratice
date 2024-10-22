// Cpp program to fet the transpose of the entered matrix  .....................

#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    // Defining the size of the matrix and accepting its value fro  user ....................
    int size;
    cout << "enter the size of the matrix : ";
    cin >> size;

    // Defining an 2D array to get trans[ose of it .................
    int matrixToTranspose[size][size];

    // Acceping the values of matrix from the user ..................
    cout << "Enter the values for matrix : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            cin >> matrixToTranspose[i][j];
        }
    }

    // Printinf the accepted matrix in to transpose format ,,,,,,,,,,,,,,
    cout << "The transpose matrix is : " << endl;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            cout << matrixToTranspose[j][i] << "  ";
        }
        cout << endl;
    }

    return 0;
}
