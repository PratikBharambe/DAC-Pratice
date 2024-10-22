#include <iostream>
#include <cstdlib>
#include <ctime>
#include <string>
#include "VerifyValidate.cpp"
using namespace std;

class SignUp
{

public:
    int getOTP();
    bool verifyMail(string);
    void signUp();
};

bool SignUp ::verifyMail(string mail)
{
    int otp = getOTP();
    int otpByUser;
    cout << "Enter the otp sent on your mail : ";
    cin >> otpByUser;
    if (otp == otpByUser)
    {
        return true;
    }

    return false;
}

int SignUp::getOTP()
{
    srand(time(0));
    int OTP = rand() % 10000;
    cout << "One Time Password is : " << OTP << endl;
    return OTP;
}

void SignUp::signUp()
{
    string mail;
    cout << "Enter the E-Mail : ";
    getline(cin, mail);
    bool ismailValid = verifyMail(mail);
    UserData data;

    int id;
    string name;
    string userName;
    string password;
    string reenteredPassword;
    long int number;

    if (ismailValid)
    {
        cout << "Enter id : ";
        cin >> id;
        cout << "Enter name : ";
        getline(cin, name);
        cout << "Enter Username : ";
        getline(cin, userName);

        FormatVerification verify;
        bool isUsernameCorrect = verify.verifyUsernameFormat(userName);
        if (isUsernameCorrect)
        {
            cout << "Enter Password : ";
            getline(cin, password);
            bool isPasswordCorrect = verify.verifyPasswordFormat(password);
            if (isPasswordCorrect)
            {
                cout << "Retype Password : ";
                getline(cin, reenteredPassword);
            }
            if (password == reenteredPassword)
            {
            }
            else
            {
                cout << "Password and re-entered password doesn't match." << endl;
                return;
            }
        }
        else
        {
            cout << "The username is not in proper format." << endl;
            return;
        }

        cout << "Enter Phone Number : ";
        cin >> number;

        data.setid(id);
        data.setgmail(mail);
        data.setname(name);
        data.setusername(userName);
        data.setpassword(password);
        data.setPhoneNumber(number);

        // Block of code to add data to database ..................
    }
}