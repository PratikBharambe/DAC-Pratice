#include <iostream>
#include <cstdlib>
#include <ctime>
#include <string>
#include "Verifyvalidate.cpp"
using namespace std;

UserData userData[] = {
    UserData(01, "Pratik Bharambe", "PratikBharambe", "Pratik@2024", "pratikbharambe@gmail.com", 1234567890),
    UserData(02, "Test Demo", "TestDemo", "Test@2024", "testdemo@gmail.com", 9087654321)};

class Login : public ValidateUser
{

private:
    string username = NULL;
    string password = NULL;
    string email = NULL;
public:
    bool loginWithUsername();
    bool loginWithEmail();
    void forgotPassword();
    int getOTP();
    void resetPassword(UserData);
};

bool Login ::loginWithUsername()
{
    cout << "Enter the username : ";
    getline(cin, username);
    bool isValidUserName = false;
    for (UserData data : userData)
    {
        string user = data.getusername();
        if (vaildateUsername(data, user))
        {
            isValidUserName = true;
            break;
        }
        else
        {
            isValidUserName = false;
        }
    }

    cout << "Enter the password : ";
    getline(cin, password);
    bool isValidPassword = false;
    for (UserData data : userData)
    {
        string pass = data.getpassword();
        if (vaildatePassword(data, pass))
        {
            isValidPassword = true;
            break;
        }
        else
        {
            isValidPassword = false;
        }
    }
    return (isValidUserName && isValidPassword);
}

bool Login::loginWithEmail()
{
    cout << "Enter the E-Mail : ";
    getline(cin, email);
    bool isValidEmail = false;
    for (UserData data : userData)
    {
        string mail = data.getgmail();
        if (vaildateEmail(data, mail))
        {
            isValidEmail = true;
            break;
        }
        else
        {
            isValidEmail = false;
        }
    }

    cout << "Enter the password : ";
    getline(cin, password);
    bool isValidPassword = false;
    for (UserData data : userData)
    {
        string pass = data.getpassword();
        if (vaildatePassword(data, pass))
        {
            isValidPassword = true;
            break;
        }
        else
        {
            isValidPassword = false;
        }
    }
    return (isValidEmail && isValidPassword);
}

int Login::getOTP()
{
    srand(time(0));
    int OTP = rand() % 10000;
    cout << "One Time Password is : " << OTP << endl;
    return OTP;
}

void Login::resetPassword(UserData data)
{
    string newPassword = NULL;
    string retypedNewPassword = NULL;
    cout << "Enter the New Password : ";
    getline(cin, newPassword);
    cout << "Re-type the new password : ";
    getline(cin, retypedNewPassword);

    if (newPassword == retypedNewPassword)
    {
        data.setpassword(newPassword);
        cout << "The password is reseted Successfully" << endl;
        return;
    }
    else
    {
        cout << "The new password and retyped new password does not matched." << endl;
    }
}

void Login::forgotPassword()
{
    string mail;
    cout << "Enter the registerd E-Mail : ";
    getline(cin, mail);
    bool isValidEmail = false;
    int index = -1;
    for (UserData data : userData)
    {
        index++;
        string mail = data.getgmail();
        if (vaildateEmail(data, mail))
        {
            isValidEmail = true;
            break;
        }
        else
            isValidEmail = false;
    }

    if (isValidEmail)
    {
        int otpFromSystem = getOTP();
        int otpFromUser;
        cout << "Enter the OTP sent on your E-Mail : ";
        cin >> otpFromUser;

        if (otpFromSystem == otpFromUser)
            resetPassword(userData[index]);
    }
    else
        cout << "The user Not found." << endl;
}
