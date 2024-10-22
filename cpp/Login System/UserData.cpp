#include <iostream>
#include <string>
using namespace std;

class UserData
{
private:
    int id;
    string name;
    string username;
    string password;
    string email;
    long int phoneNumber;

public:
    UserData() {}
    UserData(int, string, string, string, string, long int);

    void display();

    void setid(int);
    int getid();

    void setname(string);
    string getname();

    void setusername(string);
    string getusername();

    void setpassword(string);
    string getpassword();

    void setgmail(string);
    string getgmail();

    void setPhoneNumber(long int);
    long int getPhoneNumber();
};

UserData ::UserData(int id, string name, string username, string password, string email, long int phoneNumber)
{
    this->id = id;
    this->name = name;
    this->username = username;
    this->password = password;
    this->email = email;
    this->phoneNumber = phoneNumber;
}

void UserData::display()
{
    cout << "\nId : " << id << endl
         << "Name : " << name << endl
         << "Usernamem : " << username << endl
         << "Password : " << password << endl
         << "E-Mail : " << email << endl
         << "Phone Number : " << phoneNumber << endl;
}

void UserData::setid(int id)
{
    this->id = id;
}

int UserData::getid()
{
    return id;
}

void UserData::setname(string name)
{
    this->name = name;
}

string UserData::getname()
{
    return name;
}

void UserData::setusername(string username)
{
    this->username = username;
}

string UserData::getusername()
{
    return username;
}

void UserData::setpassword(string password)
{
    this->password = password;
}

string UserData::getpassword()
{
    return password;
}

void UserData::setgmail(string email)
{
    this->email = email;
}

string UserData::getgmail()
{
    return email;
}

void UserData::setPhoneNumber(long int phoneNumber)
{
    this->phoneNumber = phoneNumber;
}

long int UserData::getPhoneNumber()
{
    return phoneNumber;
}
