#include <iostream>
#include <string>
#include "UserData.cpp"
using namespace std;

UserData userData[] = {
    UserData(01, "Pratik Bharambe", "PratikBharambe", "Pratik@2024", "pratikbharambe@gmail.com", 1234567890),
    UserData(02, "Test Demo", "TestDemo", "Test@2024", "testdemo@gmail.com", 7588041737)};

int main()
{

    int size = sizeof(userData) / sizeof(userData[0]);
    cout << "The size of the array is : " << size << endl;

    for (UserData data : userData)
    {
        data.display();
    }
}