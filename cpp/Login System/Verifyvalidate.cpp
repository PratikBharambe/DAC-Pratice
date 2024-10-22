#include <iostream>
#include <string>
#include <cctype>
#include "UserData.cpp"
using namespace std;

class VerifyAndValidate
{
public:
    bool isAlphaNumeric(string &);
};

bool VerifyAndValidate ::isAlphaNumeric(string &str)
{
    for (char c : str)
        if (!isalnum(c))
            return false;
    return true;
}

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class FormatVerification : public VerifyAndValidate
{
private:
    const static int minUsernameLenghtLimit = 6;
    const static int minPasswordLenghtLimit = 8;

public:
    bool verifyUsernameFormat(string &);
    bool verifyPasswordFormat(string &);
};

bool FormatVerification::verifyUsernameFormat(string &username)
{
    bool isAlphaNum = false;
    if (username.length() >= minUsernameLenghtLimit)
        isAlphaNum = isAlphaNumeric(username);
    else
        cout << "usmername must contains atleasst 6 characters." << endl;
    return isAlphaNum;
}

bool FormatVerification::verifyPasswordFormat(string &password)
{
    bool containsUpperCase,
        containsSpecialCharacter,
        containsNumber = false;

    if (password.length() >= minPasswordLenghtLimit)
    {
        for (char ch : password)
        {
            if (isupper(ch))
                containsUpperCase = true;
            if (isdigit(ch))
                containsNumber = true;
            if (isalpha(ch) && !isspace(ch))
                containsSpecialCharacter = true;
        }
    }
    else
    {
        cout << "The length of the password must be greater than 8 characters." << endl;
    }

    return (containsUpperCase && containsSpecialCharacter && containsNumber);
}

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class ValidateUser : public VerifyAndValidate
{
public:
    bool vaildateUsername(UserData, string &);
    bool vaildateEmail(UserData, string &);
    bool vaildatePassword(UserData, string &);
};

bool ValidateUser::vaildateUsername(UserData data, string &enteredUserName)
{
    string userName = data.getusername();
    if (isAlphaNumeric(enteredUserName))
        if (userName == enteredUserName)
            return true;
    return false;
}

bool ValidateUser::vaildateEmail(UserData data, string &enteredEmail)
{
    string email = data.getgmail();
    if (email == enteredEmail)
        return true;
    return false;
}

bool ValidateUser::vaildatePassword(UserData data, string &enteredPassword)
{
    string password = data.getpassword();
    if (password == enteredPassword)
    {
        return 0;
    }

    return false;
}
