#include <iostream>
using namespace std;

void printArray(int[], int);
int bubbleSort(int[], int);
// void selectionSort(int[], int);


int main(int argc, char const *argv[])
{
    int arr[] = {10, 55, 84, 36, 45, 96};
    int size = sizeof(arr) / sizeof(arr[0]);
    bubbleSort(arr, size);
    return 0;
}

void printArray(int arr[], int size)
{
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << "  ";
    }
}

int bubblesort(int array[], int lengthofarray)
{
    for (int i = 0; i < lengthofarray; i++)
    {
        for (int j = i + 1; j < lengthofarray; j++)
        {
            if (array[i] > array[j])
            {
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
    printArray(array, lengthofarray);
    return 0;
}