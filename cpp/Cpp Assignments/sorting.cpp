#include <iostream>
using namespace std;

void printArray(int *arr, int length)
{
    for (int i = 0; i < length; i++)
        cout << arr[i] << "  ";
    cout << endl;
}

void bubbleSort(int arr[], int length)
{
    for (int i = 0; i < length; i++)
    {
        for (int j = 0; j < length; j++)
        {
            if (arr[i] < arr[j])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    cout << "The sorted array is : ";
    printArray(arr, length);
}

void selectionSort(int arr[], int length)
{
    for (int i = 0; i < length; i++)
    {
        int min = i;
        for (int j = i + 1; j < length; j++)
        {
            if (arr[j] < arr[min])
            {
                min = j;
            }
        }
        int temp = arr[min];
        arr[min] = arr[i];
        arr[i] = temp;
    }
    cout << "The sorted array is : ";
    printArray(arr, length);
}

int main()
{
    int arr[] = {10, 5, 6, 4, 8, 25, 30};
    int length = sizeof(arr) / sizeof(arr[0]);
    cout << "The length is : " << length << endl;
    // bubbleSort(arr, length);
    selectionSort(arr, length);
}