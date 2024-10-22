#include <iostream>
#include <string>
#include "Login.cpp"
#include "SignUp.cpp"
using namespace std;

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
    return choice;
}

enum loginChoice
{
    pratik,
    viaUserName,
    ViaEmail,
    forgotPassword,
    newUserSignUp
};

int loginMenu()
{
    int choice;
    cout << viaUserName << "Login via Username and password " << endl
         << ViaEmail << "Login via E-Mail and password." << endl
         << forgotPassword << "Forgot Password ?"
         << newUserSignUp << "New User, want to Sign up";
    cin >> choice;
    return choice;
}

// Execution start from here ............................
int main()
{
    cout << "\n\n------------------------- Welcome to Login System ------------------------\n\n"
         << endl;

    Login login;

    while (true)
    {
        switch (newORRegisteredUserMenu())
        {
        case EXIT:
            cout << "The Login System is turned off.\nBye Bye";
            return 0;

        case ALREADY:

            switch (loginMenu())
            {
            case viaUserName:
                login.loginWithUsername();
                break;

            case ViaEmail:
                login.loginWithEmail();
                break;

            case forgotPassword:
                login.forgotPassword();
                break;

            case newUserSignUp:
                SignUp up;
                up.signUp();
                break;

            default:
                cout << "Invalid Choice.";
                break;
            }

            break;

        case NEW:
            SignUp up;
            up.signUp();
            break;

        default:
            cout << "Invalid choice.\n"
                 << endl;
            break;
        }
    }
    return 0;
}