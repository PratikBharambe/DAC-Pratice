#include <stdio.h>

void printArray(int[], int);
void bubbleSort(int[], int);
void selectionSort(int[], int);
void insertionSort(int[], int);

int main()
{
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int size = sizeof(arr) / sizeof(arr[0]);
    bubbleSort(arr, size);
    selectionSort(arr, size);
    return 0;
}

/* -------------------------------------------------------------------------- */
/*                           Function to print array                          */
/* -------------------------------------------------------------------------- */
void printArray(int arr[], int length)
{
    printf("\n");
    for (int i = 0; i < length; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

/* -------------------------------------------------------------------------- */
/*                                 Bubble Sort                                */
/* -------------------------------------------------------------------------- */
void bubbleSort(int arr[], int length)
{
    int i, j, temp;
    for (int i = 0; i < length; i++)
    {
        for (int j = i + 1; j < length; j++)
        {
            if (arr[i] > arr[j])
            {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    printArray(arr, length);
    printf("Size is : %d", length);
}

/* -------------------------------------------------------------------------- */
/*                               Selection Sort                               */
/* -------------------------------------------------------------------------- */
void selectionSort(int arr[], int length)
{
    for (int i = 0; i < length - 1; i++)
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
    printArray(arr, length);
}

/* -------------------------------------------------------------------------- */
// TODO                          Insertion Sort                               */
/* -------------------------------------------------------------------------- */
void insertionSort(int arr[], int length)
{
    for (int i = 1; i < length; i++)
    {
        for (int j = 0; j <= i - 1; i++)
        {
            if (arr[j] < arr[i])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    printArray(arr, length);
}

int factorial(int num)
{
    int facto = 1;
    for (int i = 2; i <= num; i++)
        facto *= i;
    return facto;
}