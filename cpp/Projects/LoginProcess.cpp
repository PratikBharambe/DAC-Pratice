#include <iostream>
#include <string>
#include <cctype>
using namespace std;



class VerifyAndValidate
{
    bool isAlphaNumeric(string &);
};

bool VerifyAndValidate ::isAlphaNumeric(string &str)
{
    for (char c : str)
    {
        if (!isalnum(c))
        {
            return false; // Non-alphanumeric character found
        }
    }
    return true; // All characters are alphanumeric
}

class FormatVerification : public VerifyAndValidate
{
    string username;
    string password;

public:
    void verifyUsername();
    void verifyPassword();
};

// Enum to increase the code readability .....................
// enum for login or signUp ...........................
enum newORRegistered
{
    EXIT,
    ALREADY,
    NEW
};

// Menu function to get check sign in or sign UP choice ........................
int newORRegisteredUserMenu()
{
    int choice;
    cout << "\n"
         << EXIT << ". Terminate the Program." << endl;
    cout << ALREADY << ". Log In." << endl;
    cout << NEW << ". Sign Up." << endl;
    cout << "Enter your choice : ";
    cin >> choice;
}

// Execution start from here ............................
int main()
{
    cout << "\n\n------------------------- Welcome to Login System ------------------------\n\n"
         << endl;

    while (true)
    {
        switch (newORRegisteredUserMenu())
        {
        case EXIT:
            return 0;

        case ALREADY:
            break;

        // TODO NEW User sign UP process .............................
        case NEW:
            break;

        default:
            cout << "Invalid choice.\n"
                 << endl;
            break;
        }
    }
}