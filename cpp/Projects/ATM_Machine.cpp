#include <iostream>
#include <string>
using namespace std;

class BankAccount
{
    // ! a member of type "const std::string" cannot have an in-class initializerC/C++(1591)
    // static const string bankName = "ABC Bank";
    // static const string IFSC = "ABC00000123";
    int cardNumber;
    int accountNumber;
    int pin;
    string name;
    string accountType;
    double balance;

public:
    // Constructor to initialize the predefined account ...................
    BankAccount(int, int, int, string, string, double);
    BankAccount() {}

    // Getters .................
    int getCardNumber();
    int getAccountNumber();
    int getPin();
    string getName();
    string getAccountType();
    double getBalance();

    // Function display the details of the account holder ...................
    // Functions to perform various operations after successfull authentication ......................
    void withdraw(BankAccount, int);
    void changePin(BankAccount);
    void displayDetails(BankAccount);
};

// Defination of the constructor ....................
BankAccount::BankAccount(int cardNumber, int accountNumber, int pin, string name, string accountType, double balance)
{
    this->cardNumber = cardNumber;
    this->accountNumber = accountNumber;
    this->pin = pin;
    this->name = name;
    this->accountType = accountType;
    this->balance = balance;
}

// Defination of getters ................
int BankAccount ::getCardNumber()
{
    return cardNumber;
}

int BankAccount ::getAccountNumber()
{
    return accountNumber;
}

int BankAccount::getPin()
{
    return pin;
}

string BankAccount ::getName()
{
    return name;
}

string BankAccount ::getAccountType()
{
    return accountType;
}

double BankAccount ::getBalance()
{
    return balance;
}

// Function to perform withdraw operation ..............
void BankAccount::withdraw(BankAccount account, int amount)
{
    int avaliableBalance = account.getBalance();
    if (avaliableBalance < amount)
    {
        cout << "Your account does not have gnough balace." << endl;
        return;
    }
    else
        account.balance = account.balance - amount;
    cout << "Withdraw operation performed successfully." << endl;
    cout << "The avaliable balnace is : " << account.getBalance() << endl;
}

// Function to perform withdraw operation ..............
void BankAccount::changePin(BankAccount account)
{
    int currentPin = account.getPin();
    int pinbyuser;
    cout << "Enter the current pin : ";
    cin >> pinbyuser;
    if (pinbyuser == currentPin)
    {
        int newPin, renterdNewPin;
        cout << "Enter new pin : ";
        cin >> newPin;
        cout << "Re-Enter new pin : ";
        cin >> renterdNewPin;
        if (newPin == renterdNewPin)
        {
            account.pin == newPin;
            cout << "Your Pin is channged successfully." << endl;
            return;
        }
        else
        {
            cout << "The Pin and re-enterd pin does not matched." << endl;
        }
    }
    else
    {
        cout << "The Pin enterd by you is incorrect ." << endl;
    }
}

// Defination of displayDetails() function .................
void BankAccount::displayDetails(BankAccount account)
{
    cout << "\nThe Account details are >>>>>>>>>>>>>> " << endl;
    cout << "Account Holder Name : " << account.getName() << endl;
    cout << "Account Number : " << account.getAccountNumber() << endl;
    cout << "Account Type : " << account.getAccountType() << endl;
    cout << "Avaliable Balance : " << account.getBalance() << endl;
}

// Variable to define the total number of accounts present ................
static const int numberOfAccounts = 5;

// array to retun the results of authetication process .........
// first value will give that is the card is found or not ..............
// and second value to give the index + 1 value of the card if found ..............
int authnticationArr[2];
// Functions defination to perform authentication ......................
int *authenticate(BankAccount accounts[], int cardNumber)
{
    for (int i = 0; i < numberOfAccounts; i++)
    {
        if (accounts[i].getCardNumber() == cardNumber)
        {
            authnticationArr[0] = 1;
            authnticationArr[1] = i + 1;
            return authnticationArr;
        }
    }
    authnticationArr[0] = 0;
    return authnticationArr;
}

// Function to authenticate the pin number enterd by the user or not ..........
// If the user entered incorrect pin more than 3 times then programm will get terminated .............
bool pinAuthentication(BankAccount account)
{
    int trials = 3;
    int pinNumber;
    while (trials != 0)
    {
        cout << "Enter the Pin : ";
        cin >> pinNumber;
        if (account.getPin() == pinNumber)
            return true;
        trials--;
        cout << "Incorret pin.";
    }
    return false;
}

// function to diplay options of operations .......................
int choiceMenu()
{
    int choice;
    cout << "1. Withdraw Cash." << endl;
    cout << "2. Balance Enquiry." << endl;
    cout << "3. Account Details." << endl;
    cout << "4. Pin change." << endl;
    cout << "Enter your choice : ";
    cin >> choice;
    return choice;
}

int main()
{
    BankAccount accounts[numberOfAccounts]{
        BankAccount(123456, 200001, 1234, "Pratik Bharambe", "Saving", 82345.25),
        BankAccount(654321, 200002, 5678, "Krutika Patil", "Saving", 65485.55),
        BankAccount(987654, 200003, 4321, "Aniket Ghate", "Current", 5885.95),
        BankAccount(654789, 200004, 8765, "Pallavi Supe", "Current", 158464.45)};

    int cardNumber;
    cout << "Enter your card Number : ";
    cin >> cardNumber;

    int *arr = authenticate(accounts, cardNumber);
    int index = arr[1] - 1;
    if (arr[0])
    {
        if (pinAuthentication(accounts[index]))
        {
        }
        else
        {
            cout << "You have crossed the limit entering incorrect Pin.\nTry  after some time." << endl;
            return 0;
        }
    }
    else
    {
        cout << "The Card  enterd by you is not valid .\nCollect your card before leaving.";
        return 0;
    }

    switch (choiceMenu())
    {
    case 1:
        int amount;
        cout << "Enter amount to withdraw : ";
        cin >> amount;
        accounts[index].withdraw(accounts[index], amount);
        break;

    case 2:
        cout << "Avalibake balance is : " << accounts[index].getBalance() << endl;
        break;

    case 3:
        accounts[index].displayDetails(accounts[index]);
        break;

    case 4:
        accounts[index].changePin(accounts[index]);
        break;

    default:
        cout << "Invalid Choice." << endl;
        break;
    }

    return 0;
}