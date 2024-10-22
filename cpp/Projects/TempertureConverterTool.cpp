#include <iostream>
using namespace std;

// enum to increase the code readabilty ...............
enum choice
{
    EXIT,
    CtoF,
    FtoC,
    CtoK,
    KtoC
};

// All function declarations ....................
int choiceMenu();
double CelsiusToFahrenheit(double);
double FahrenheitToCelsius(double);
double CelsiusToKelvin(double);
double KelvinToCelsius(double);

// method to print avaliablle choice and returns the selected choice .....................
int choiceMenu()
{
    int choice;
    cout << "\n"
         << EXIT << ". Terminate Program." << endl;
    cout << CtoF << ". celsius to Fahrenheit." << endl;
    cout << FtoC << ". Fahrenheit to Celsius." << endl;
    cout << CtoK << ". Celsius to Kelvin." << endl;
    cout << KtoC << ". Kelvin to Celsius." << endl;
    cout << "\nEnter your choice : ";
    cin >> choice;
    return choice;
}

// Function to convert Celsius To Fahrenheit .......................
double CelsiusToFahrenheit(double celsius)
{
    return (celsius * 9.0 / 5.0) + 32.0;
}

// Function to convert Fahrenheit to Celsius .......................
double FahrenheitToCelsius(double fahrenheit)
{
    return (fahrenheit - 32.0) * 5.0 / 9.0;
}

// Function to convert Celsius To Kelvin .......................
double CelsiusToKelvin(double celsius)
{
    return celsius + 273.15;
}

// Function to convert Kelvin To Celsius .......................
double KelvinToCelsius(double kelvin)
{
    return kelvin - 273.15;
}

int main()
{
    // Infinte loop for continous accessment .....................
    while (true)
    {
        double temp;
        // switch case to perform differnt case as per user choice ..............
        switch (choiceMenu())
        {

        case EXIT:
            cout << "The program is terminated.\n";
            return 0;

        case CtoF:
            cout << "Enter the temperture in Celsius : ";
            cin >> temp;
            cout << "The converted temperture is : " << CelsiusToFahrenheit(temp) << " F" << endl;
            break;

        case FtoC:
            cout << "Enter the temperture in Fahrenheit : ";
            cin >> temp;
            cout << "The converted temperture is : " << FahrenheitToCelsius(temp) << " C" << endl;
            break;

        case CtoK:
            cout << "Enter the temperture in Celsius : ";
            cin >> temp;
            cout << "The converted temperture is : " << CelsiusToKelvin(temp) << " K" << endl;
            break;

        case KtoC:
            cout << "Enter the temperture in Kelvin : ";
            cin >> temp;
            cout << "The converted temperture is : " << KelvinToCelsius(temp) << " C" << endl;
            break;

        default:
            cout << "Invalid Choice.";
            break;
        }
    }

    return 0;
}
