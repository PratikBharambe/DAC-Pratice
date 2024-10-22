#include <iostream>
using namespace std;

/* -------------------------------------------------------------------------- */
/*                               Employee Class                               */
/* -------------------------------------------------------------------------- */

class Employee
{

    int id;
    double salary;

public:
    Employee();
    Employee(int, double);
    void setId(int);
    int getId();
    void setSalary(double);
    double getSalary();
    virtual void accept();
    virtual void display();
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

void Employee::setId(int id) { this->id = id; }

int Employee::getId() { return id; }

void Employee::setSalary(double salary) { this->salary = salary; }

double Employee::getSalary() { return salary; }

void Employee::accept()
{
    cout << "\nEnter employee id : ";
    cin >> id;
    cout << "Enter employee salary : ";
    cin >> salary;
}

void Employee::display()
{
    cout << "The employee id is : " << id << endl
         << "The salary of employee is : " << salary << endl;
}

/* -------------------------------------------------------------------------- */
/*                  Manager class derived from Employee class                 */
/* -------------------------------------------------------------------------- */

class Manager : public Employee
{
    double bonus;

public:
    Manager();
    Manager(int, double, double);
    void setBonus(double);
    double getBonus();
    void accept();
    void display();
    void acceptManager();
    void displayManager();
};

Manager::Manager() { this->bonus = 0.0; }

Manager::Manager(int id, double salary, double bonus) : Employee(id, salary) { this->bonus = bonus; }

void Manager::setBonus(double bonus) { this->bonus = bonus; }

double Manager::getBonus() { return bonus; }

void Manager::accept()
{
    int id;
    double salary;
    cout << "Enter Manager id : ";
    cin >> id;
    setId(id);
    cout << "Enter Manager Salary : ";
    cin >> salary;
    setSalary(salary);
    acceptManager();
}

void Manager::display()
{
    cout << "The employee id is : " << getId() << endl
         << "The salary of employee is : " << getSalary() << endl;
    displayManager();
}

void Manager::acceptManager()
{
    cout << "Enter Mannager Bonus : ";
    cin >> bonus;
}

void Manager::displayManager() { cout << "Bonus for Manager is : " << bonus; }

/* -------------------------------------------------------------------------- */
/*                 Salesman class derived from Employee class                 */
/* -------------------------------------------------------------------------- */

class Salesman : public Employee
{
    double commission;

public:
    Salesman();
    Salesman(int, double, double);
    void setcommission(double);
    double getcommission();
    void accept();
    void display();
    void acceptSalesman();
    void displaySalesman();
};

Salesman::Salesman() { this->commission = 0.0; }

Salesman::Salesman(int id, double salary, double commission) : Employee(id, salary) { this->commission = commission; }

void Salesman::setcommission(double commission) { this->commission = commission; }

double Salesman::getcommission() { return commission; }

void Salesman::accept()
{
    int id;
    double salary;
    cout << "Enter Manager id : ";
    cin >> id;
    setId(id);
    cout << "Enter Manager Salary : ";
    cin >> salary;
    setSalary(salary);
    acceptSalesman();
}

void Salesman::display()
{
    cout << "The employee id is : " << getId() << endl
         << "The salary of employee is : " << getSalary() << endl;
    displaySalesman();
}

void Salesman::acceptSalesman()
{
    cout << "Enter Salesman commission : ";
    cin >> commission;
}

void Salesman::displaySalesman() { cout << "Commission of salesman is : " << commission << endl; }

/* -------------------------------------------------------------------------- */
/*          class SalesManager derived from Manager & Salesman class          */
/* -------------------------------------------------------------------------- */

class SalesManager : public Manager, public Salesman
{
public:
    SalesManager();
    SalesManager(int, double, double, double);
    void accept();
    void display();
};

SalesManager::SalesManager() {}

SalesManager::SalesManager(int id, double salary, double bonus, double commission)
    : Manager(id, salary, bonus), Salesman(id, salary, commission) {}

void SalesManager::accept()
{
    int id;
    double salary, bonus, commission;

    cout << "Enter id : ";
    cin >> id;
    Manager::setId(id);

    cout << "Enter salary : ";
    cin >> salary;
    Manager::setSalary(salary);

    cout << "Enter bonus : ";
    cin >> bonus;
    Manager::setBonus(bonus);

    cout << "Enter Commission : ";
    cin >> commission;
    Salesman::setcommission(commission);
}

void SalesManager::display()
{
    cout << "Id is : " << Manager::getId() << endl;
    cout << "Salary is : " << Manager::getSalary() << endl;
    cout << "Bonus is :" << Manager::getBonus() << endl;
    cout << "Commission is : " << Salesman::getcommission() << endl;
}

/* -------------------------------------------------------------------------- */
/*                                Main function                               */
/* -------------------------------------------------------------------------- */

int main()
{
    SalesManager s;
    s.accept();
    s.display();

    // TODO TO Be modified soon .............................
}