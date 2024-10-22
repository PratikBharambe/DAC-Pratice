#include <iostream>
using namespace std;

/* -------------------------------------------------------------------------- */
/*                               Employee class                               */
/* -------------------------------------------------------------------------- */

class Employee
{
    int id;
    double salary;

public:
    Employee();
    Employee(int, double);
    virtual void accept();
    double getSalary();
    virtual void display();
    virtual double findSalary() = 0;
};

Employee::Employee()
{
    id = 0;
    salary = 0.0;
}

Employee::Employee(int id, double salary)
{
    this->id = id;
    this->salary = salary;
}

void Employee::accept()
{
    cout << "Enter Employee id : ";
    cin >> id;
    cout << "Enter Employee salary : ";
    cin >> salary;
}

double Employee::getSalary() { return salary; }

void Employee::display()
{
    cout << "Employee id is : " << id << endl
         << "The Employee Salary is : " << salary << endl;
}

/* -------------------------------------------------------------------------- */
/*                             WageEmployee class                             */
/* -------------------------------------------------------------------------- */

class WageEmployee : public Employee
{
    int hrs;
    double rate;

public:
    WageEmployee();
    WageEmployee(int, double, int, double);
    void accept();
    void display();
    double findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = 0;
    rate = 0.0;
}

WageEmployee::WageEmployee(int id, double salary, int hrs, double rate) : Employee(id, salary)
{
    this->hrs = hrs;
    this->rate = rate;
}

void WageEmployee::accept()
{
    Employee::accept();
    cout << "Enter hours : ";
    cin >> hrs;
    cout << "Enter rate : ";
    cin >> rate;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "No of hours : " << hrs << endl;
    cout << "rate per hour is : " << rate << endl;
}

double WageEmployee::findSalary()
{
    return getSalary() + (hrs * rate);
}

/* -------------------------------------------------------------------------- */
/*                             SalesManager class                             */
/* -------------------------------------------------------------------------- */

class SalesManager : public Employee
{
    int sales;
    double commission;

public:
    SalesManager();
    SalesManager(int, double, int, double);
    void accept();
    void display();
    double findSalary();
};

SalesManager::SalesManager()
{
    sales = 0;
    commission = 0.0;
}

SalesManager::SalesManager(int id, double salary, int sales, double commission) : Employee(id, salary)
{
    this->sales = sales;
    this->commission = commission;
}

void SalesManager::accept()
{
    Employee::accept();
    cout << "Enter sales : ";
    cin >> sales;
    cout << "Enter commission : ";
    cin >> commission;
}

void SalesManager::display()
{
    Employee::display();
    cout << "No of sales : " << sales << endl;
    cout << "commission is : " << commission << endl;
}

double SalesManager::findSalary()
{
    return getSalary() + (sales * commission);
}

/* -------------------------------------------------------------------------- */
/*                                Main function                               */
/* -------------------------------------------------------------------------- */

int main()
{
    // Employee *ptr = new WageEmployee;
    Employee *ptr = new SalesManager;
    ptr->accept();
    ptr->display();
    cout << "The final salary is " << ptr->findSalary();
}