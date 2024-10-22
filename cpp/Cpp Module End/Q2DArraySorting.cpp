#include <iostream>
using namespace std;

int main()
{
    int arr[] = {8, 6, 4, 9, 7, 2, 0, 3, 1};
    int length = sizeof(arr) / sizeof(arr[0]);

    for (int i = 0; i < length; i++)
    {
        int min = i;
        for (int j = i + 1; j < length; j++)
        {
            if (arr[min] > arr[j])
                min = j;
        }
        int temp = arr[min];
        arr[min] = arr[i];
        arr[i] = temp;
    }

    cout << "The sorted array is : " << endl;
    for (int data : arr)
        cout << data << "  ";
}