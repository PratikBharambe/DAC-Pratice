#include <iostream>
#include <cstdlib> // For rand() and srand() .....................
#include <ctime>   // For the time() function ........................
using namespace std;

int main()
{

    cout << "\n\n!!!!!!!!!!!! The Nmber Guessing Ganme !!!!!!!!!!!\n" << endl;

    // Getting the name of the player and print welcome message .................
    cout << "\nEnter your name : ";
    static char name[10];
    cin >> name;
    cout << "\nWelcome " << name << ", to the Number guessing game.\n"
         << endl;

    // Initialization of random seed ...................
    srand(static_cast<unsigned int>(time(0)));

    // Generating random number between 1 to 100 ..................
    int secretNumber = rand() % 100 + 1;
    // cout << "The secret number is : " << secretNumber << endl;

    cout << "I have generated a number between 1 to 100." << endl;
    cout << "Can you guess that naumber ?" << endl;

    int guessedNumber = 0;

    // Getting the guessed number and comparing with the secret number ................
    // till the guessed number is not get matched with scret number .................
    while (secretNumber != guessedNumber)
    {

        // Acceping the guesssed Number ................
        cout << "Enter the guess : ";
        cin >> guessedNumber;

        // Comparing the guessed number with secret number ............
        if (guessedNumber > secretNumber)
            cout << "The number is too high, try again .......................\n" << endl;
        else if (guessedNumber < secretNumber)
            cout << "The number is too low, try again .......................\n" << endl;
        else if (guessedNumber == secretNumber){
            cout << "\nCongratulations "<< name <<", you have guessed the number !!!!!!!!!!" << endl;
            cout << "The Secret number geenerated by me was : " << secretNumber << ".\n" << endl;
        }
    }

    return 0;
}