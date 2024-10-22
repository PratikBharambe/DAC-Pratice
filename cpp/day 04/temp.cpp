#include <iostream>
using namespace std;

class temp
{

    int size;
    int *ptr;

public:
    temp();
    void get();
    void show();
    int max();
    int min();

    ~temp();
};

temp ::temp()
{
    cout << "Enter the size : ";
    cin >> size;
    ptr = new int[size];
}

void temp ::get()
{
    cout << "Enter the data : ";
    for (int i = 0; i < size; i++)
        cin >> *(ptr + i);
}

void temp::show()
{
    cout << "The array is : ";
    for (int i = 0; i < size; i++)
        cout << *(ptr + i) << " ";
}

int temp::max()
{
    int max = ptr[0];
    for (int i = 0; i < size; i++)
        if (max < ptr[i])
            max = ptr[i];

    return max;
}

int temp::min()
{
    int min = ptr[0];
    for (int i = 0; i < size; i++)
        if (min > ptr[i])
            min = ptr[i];

    return min;
}

temp::~temp()
{
    if (ptr)
        delete[] ptr;

    ptr = NULL;
}

int main()
{
    temp t1;
    t1.get();
    t1.show();
    cout << "The largest number is : " << t1.max();
    cout << "The smallest number is : " << t1.min();
}