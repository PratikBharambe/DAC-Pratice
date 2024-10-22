#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    int size;
    cout << "Enter the size of the array : ";
    cin >> size;

    int *ptr = new int[5];

    cout << "Enter the data : ";
    for (int i = 0; i < size; i++)
        cin >> *(ptr + i);

    cout << "Data is : ";
    for (int i = 0; i < size; i++)
        cout << *(ptr + i) << "  ";

    delete[] ptr;

    return 0;
}
