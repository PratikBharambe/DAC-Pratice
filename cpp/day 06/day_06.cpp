#include <iostream>
using namespace std;

/* -------------------------------------------------------------------------- */
/*                            Pure Virtual function                           */
/* -------------------------------------------------------------------------- */
// ? The class containing at least one pure virtual function becomes the abstract class .................... 
// ? The class containing at all the functions as pure virtual functions is known as pure abstract class ................. 
/*
class Employee
{

    int id;

public:
    Employee();
    Employee(int);
    virtual void display();
    virtual int findSalary() = 0; //! Pure Virtual Function ............................
};

Employee::Employee()
{
    id = 0;
    cout << "Employee default constructor." << endl;
}

Employee::Employee(int id)
{
    this->id = id;
    cout << "Employee parameterized Constructor." << endl;
}

void Employee::display()
{
    cout << "Id of Employee is : " << id << endl;
}

class WageEmployee : public Employee
{
    int hrs, rate;

public:
    WageEmployee();
    WageEmployee(int, int, int);
    void display();
    int findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = rate = 0;
    cout << "Default constructor of WageEmployee." << endl;
}

WageEmployee::WageEmployee(int id, int hrs, int rate) : Employee{id}
{
    this->hrs = hrs;
    this->rate = rate;
    cout << "Parameterized constructor of WageEmployee." << endl;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "The no of hours are : " << hrs << endl;
    cout << "The rate is : " << rate << endl;
}

int WageEmployee::findSalary()
{
    return (rate * hrs);
}

int main()
{
    Employee *ptr = new WageEmployee(2, 2, 300);
    ptr->display();
    cout << "The salary is : " << ptr->findSalary() << endl;
    return 0;
}

*/

/* -------------------------------------------------------------------------- */
/*                              Virtual Function                              */
/* -------------------------------------------------------------------------- */

/* --------------------------------- Case 04 -------------------------------- */
// ? case 4: object creation on heap with virtual keyword
/*
class Employee
{

    int id;

public:
    Employee();
    Employee(int);
    virtual void display();
    virtual int findSalary() { return 0; }
};

Employee::Employee()
{
    id = 0;
    cout << "Employee default constructor." << endl;
}

Employee::Employee(int id)
{
    this->id = id;
    cout << "Employee parameterized Constructor." << endl;
}

void Employee::display()
{
    cout << "Id of Employee is : " << id << endl;
}

class WageEmployee : public Employee
{
    int hrs, rate;

public:
    WageEmployee();
    WageEmployee(int, int, int);
    void display();
    int findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = rate = 0;
    cout << "Default constructor of WageEmployee." << endl;
}

WageEmployee::WageEmployee(int id, int hrs, int rate) : Employee{id}
{
    this->hrs = hrs;
    this->rate = rate;
    cout << "Parameterized constructor of WageEmployee." << endl;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "The no of hours are : " << hrs << endl;
    cout << "The rate is : " << rate << endl;
}

int WageEmployee::findSalary()
{
    return (rate * hrs);
}

class SalesManager : public WageEmployee
{
    int sales;
    float commission;

public:
    SalesManager();
    SalesManager(int, int, int, int, float);
    void display();
    int findSalary();
};

SalesManager::SalesManager()
{
    sales, commission = 0;
    cout << "Default constructor of SalesEmployee." << endl;
}

SalesManager::SalesManager(int id, int hrs, int rate, int sales, float commission) : WageEmployee(id, hrs, rate)
{
    this->sales = sales;
    this->commission = commission;
    cout << "Parameterized Constructor of SalesEmployee." << endl;
}

void SalesManager::display()
{
    WageEmployee::display();
    cout << "The Sales is : " << sales << endl;
    cout << "The Commission is : " << commission << endl;
}

int SalesManager::findSalary()
{
    return (float)(WageEmployee::findSalary() + (sales * commission));
}

int main()
{
    Employee *ptr = new WageEmployee(2, 2, 300);
    ptr->display();
    cout << "The salary is : " << ptr->findSalary() << endl;
    return 0;
}
*/

/* --------------------------------- Case 03 -------------------------------- */
// ? case 3: object creation on stack with virtual keyword
/*
class Employee
{

    int id;

public:
    Employee();
    Employee(int);
    virtual void display();
    virtual int findSalary() { return 0; }
};

Employee::Employee()
{
    id = 0;
    cout << "Employee default constructor." << endl;
}

Employee::Employee(int id)
{
    this->id = id;
    cout << "Employee parameterized Constructor." << endl;
}

void Employee::display()
{
    cout << "Id of Employee is : " << id << endl;
}

class WageEmployee : public Employee
{
    int hrs, rate;

public:
    WageEmployee();
    WageEmployee(int, int, int);
    void display();
    int findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = rate = 0;
    cout << "Default constructor of WageEmployee." << endl;
}

WageEmployee::WageEmployee(int id, int hrs, int rate) : Employee{id}
{
    this->hrs = hrs;
    this->rate = rate;
    cout << "Parameterized constructor of WageEmployee." << endl;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "The no of hours are : " << hrs << endl;
    cout << "The rate is : " << rate << endl;
}

int WageEmployee::findSalary()
{
    return (rate * hrs);
}

class SalesManager : public WageEmployee
{
    int sales;
    float commission;

public:
    SalesManager();
    SalesManager(int, int, int, int, float);
    void display();
    int findSalary();
};

SalesManager::SalesManager()
{
    sales, commission = 0;
    cout << "Default constructor of SalesEmployee." << endl;
}

SalesManager::SalesManager(int id, int hrs, int rate, int sales, float commission) : WageEmployee(id, hrs, rate)
{
    this->sales = sales;
    this->commission = commission;
    cout << "Parameterized Constructor of SalesEmployee." << endl;
}

void SalesManager::display()
{
    WageEmployee::display();
    cout << "The Sales is : " << sales << endl;
    cout << "The Commission is : " << commission << endl;
}

int SalesManager::findSalary()
{
    return (float)(WageEmployee::findSalary() + (sales * commission));
}

int main()
{
    Employee *ptr;
    WageEmployee w(20, 3, 400);
    ptr = &w;
    ptr->display();
    cout << "The salary is : " << ptr->findSalary() << endl;
    return 0;
}
*/

/* --------------------------------- Case 02 -------------------------------- */
// ? case 2: object creation on heap with new operator without virtual keyword

/*
class Employee
{

    int id;

public:
    Employee();
    Employee(int);
    void display();
    int findSalary() { return 0; }
};

Employee::Employee()
{
    id = 0;
    cout << "Employee default constructor." << endl;
}

Employee::Employee(int id)
{
    this->id = id;
    cout << "Employee parameterized Constructor." << endl;
}

void Employee::display()
{
    cout << "Id of Employee is : " << id << endl;
}

class WageEmployee : public Employee
{
    int hrs, rate;

public:
    WageEmployee();
    WageEmployee(int, int, int);
    void display();
    int findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = rate = 0;
    cout << "Default constructor of WageEmployee." << endl;
}

WageEmployee::WageEmployee(int id, int hrs, int rate) : Employee{id}
{
    this->hrs = hrs;
    this->rate = rate;
    cout << "Parameterized constructor of WageEmployee." << endl;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "The no of hours are : " << hrs << endl;
    cout << "The rate is : " << rate << endl;
}

int WageEmployee::findSalary()
{
    return (rate * hrs);
}

class SalesManager : public WageEmployee
{
    int sales;
    float commission;

public:
    SalesManager();
    SalesManager(int, int, int, int, float);
    void display();
    int findSalary();
};

SalesManager::SalesManager()
{
    sales, commission = 0;
    cout << "Default constructor of SalesEmployee." << endl;
}

SalesManager::SalesManager(int id, int hrs, int rate, int sales, float commission) : WageEmployee(id, hrs, rate)
{
    this->sales = sales;
    this->commission = commission;
    cout << "Parameterized Constructor of SalesEmployee." << endl;
}

void SalesManager::display()
{
    WageEmployee::display();
    cout << "The Sales is : " << sales << endl;
    cout << "The Commission is : " << commission << endl;
}

int SalesManager::findSalary()
{
    return (float)(WageEmployee::findSalary() + (sales * commission));
}

int main()
{
    Employee * ptr = new WageEmployee(10, 5, 30);
    cout << "The salary is : " << ptr->findSalary() << endl;
    ptr->display();
    return 0;
}
*/

/* --------------------------------- Case 01 -------------------------------- */
// ? case 1: object creation on stack with out virtual keyword
/*
class Employee
{

    int id;

public:
    Employee();
    Employee(int);
    void display();
    int findSalary() { return 0; }
};

Employee::Employee()
{
    id = 0;
    cout << "Employee default constructor." << endl;
}

Employee::Employee(int id)
{
    this->id = id;
    cout << "Employee parameterized Constructor." << endl;
}

void Employee::display()
{
    cout << "Id of Employee is : " << id << endl;
}

class WageEmployee : public Employee
{
    int hrs, rate;

public:
    WageEmployee();
    WageEmployee(int, int, int);
    void display();
    int findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = rate = 0;
    cout << "Default constructor of WageEmployee." << endl;
}

WageEmployee::WageEmployee(int id, int hrs, int rate) : Employee{id}
{
    this->hrs = hrs;
    this->rate = rate;
    cout << "Parameterized constructor of WageEmployee." << endl;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "The no of hours are : " << hrs << endl;
    cout << "The rate is : " << rate << endl;
}

int WageEmployee::findSalary()
{
    return (rate * hrs);
}

class SalesManager : public WageEmployee
{
    int sales;
    float commission;

public:
    SalesManager();
    SalesManager(int, int, int, int, float);
    void display();
    int findSalary();
};

SalesManager::SalesManager()
{
    sales, commission = 0;
    cout << "Default constructor of SalesEmployee." << endl;
}

SalesManager::SalesManager(int id, int hrs, int rate, int sales, float commission) : WageEmployee(id, hrs, rate)
{
    this->sales = sales;
    this->commission = commission;
    cout << "Parameterized Constructor of SalesEmployee." << endl;
}

void SalesManager::display()
{
    WageEmployee::display();
    cout << "The Sales is : " << sales << endl;
    cout << "The Commission is : " << commission << endl;
}

int SalesManager::findSalary()
{
    return (float)(WageEmployee::findSalary() + (sales * commission));
}

int main()
{
    Employee *ptr;
    WageEmployee w(10, 5, 30);
    ptr = &w;
    cout << "The salary is : " << ptr->findSalary() << endl;
    ptr->display();
    return 0;
}
*/

/* -------------------------------------------------------------------------- */
/*                           Multilevel Inheritance                           */
/* -------------------------------------------------------------------------- */

/*
class Employee
{

    int id;

public:
    Employee();
    Employee(int);
    void display();
    int findSalary() { return 0; }
};

Employee::Employee()
{
    id = 0;
    cout << "Employee default constructor." << endl;
}

Employee::Employee(int id)
{
    this->id = id;
    cout << "Employee parameterized Constructor." << endl;
}

void Employee::display()
{
    cout << "Id of Employee is : " << id << endl;
}

class WageEmployee : public Employee
{
    int hrs, rate;

public:
    WageEmployee();
    WageEmployee(int, int, int);
    void display();
    int findSalary();
};

WageEmployee::WageEmployee()
{
    hrs = rate = 0;
    cout << "Default constructor of WageEmployee." << endl;
}

WageEmployee::WageEmployee(int id, int hrs, int rate) : Employee{id}
{
    this->hrs = hrs;
    this->rate = rate;
}

void WageEmployee::display()
{
    Employee::display();
    cout << "The no of hours are : " << hrs << endl;
    cout << "The rate is : " << rate << endl;
}

int WageEmployee::findSalary()
{
    return (rate * hrs);
}

class SalesManager : public WageEmployee
{
    int sales;
    float commission;

public:
    SalesManager();
    SalesManager(int, int, int, int, float);
    void display();
    int findSalary();
};

SalesManager::SalesManager()
{
    sales, commission = 0;
    cout << "Default constructor of SalesEmployee." << endl;
}

SalesManager::SalesManager(int id, int hrs, int rate, int sales, float commission) : WageEmployee(id, hrs, rate)
{
    this->sales = sales;
    this->commission = commission;
    cout << "Parameterized Constructor of SalesEmployee." << endl;
}

void SalesManager::display()
{
    WageEmployee::display();
    cout << "The Sales is : " << sales << endl;
    cout << "The Commission is : " << commission << endl;
}

int SalesManager::findSalary()
{
    return (float)(WageEmployee::findSalary() + (sales * commission));
}

int main()
{
    SalesManager sm(10, 5, 500, 230, 0.1);
    cout << "The salary is : " << sm.findSalary() << endl;
    sm.display();
}
*/

/*
class A
{
public:
    A()
    {
        cout << "Class A constructor." << endl;
    }
    ~A()
    {
        cout << "Class A destructor." << endl;
    }
};

class B : public A
{
public:
    B()
    {
        cout << "Class B constructor." << endl;
    }
    ~B()
    {
        cout << "Class B destructor." << endl;
    }
};

class C : public B
{
public:
    C()
    {
        cout << "Class C constructor." << endl;
    }
    ~C()
    {
        cout << "Class C destructor." << endl;
    }
};

int main()
{
    C c;
    return 0;
}
*/

/* -------------------------------------------------------------------------- */
/*                             Constructor Calling                            */
/* -------------------------------------------------------------------------- */

/* --------------------------------- case 04 -------------------------------- */
/*
class A
{
    int a;

public:
    A(int a)
    {
        this->a = a;
        cout << "Inside class A constructor" << endl;
    }
    void display()
    {
        cout << "The value of a is : " << a << endl;
    }
};

class B : public A
{
    int b;

public:
    B(int b) : A(50)
    {
        this->b = b;
        cout << "Inside Class b constructor." << endl;
    }
    void display()
    {
        A::display();
        cout << "The value of B is " << b << endl;
    }
};

int main()
{
    B b(20);
    b.display();
    return 0;
}
*/

/* --------------------------------- case 03 -------------------------------- */
/*
class A
{
    int a;

public:
    A(int a)
    {
        this->a = a;
        cout << "Inside class A constructor" << endl;
    }
    void display()
    {
        cout << "The value of a is : " << a << endl;
    }
};

class B : public A
{
    int b;

public:
    B(int a, int b) : A(a)
    {
        this->b = b;
        cout << "Inside Class b constructor." << endl;
    }
    void display()
    {
        A::display();
        cout << "The value of B is " << b << endl;
    }
};

int main()
{
    B b(30, 20);
    b.display();
    return 0;
}
*/

/* --------------------------------- case 02 -------------------------------- */
/*
class A
{
    int a;

public:
    A()
    {
        cout << "Inside class A constructor" << endl;
    }
    void display()
    {
        cout << "The value of a is : " << a << endl;
    }
};

class B : public A
{
    int b;

public:
    B(int a, int b)
    {
        this->b = b;
        cout << "Inside Class b constructor." << endl;
    }
    void display()
    {
        A::display();
        cout << "The value of B is " << b << endl;
    }
};

int main()
{
    B b(30, 20);
    b.display();
    return 0;
}
*/

/* --------------------------------- case 01 -------------------------------- */
/*
class A
{

    int a;

public:
    A()
    {
        a = 10;
        cout << "Inside class A constructor" << endl;
    }
    void display()
    {
        cout << "The value of a is : " << a << endl;
    }
};

class B : public A
{
    int b;

public:
    B()
    {
        b = 20;
        cout << "Inside class B constructor" << endl;
    }
    void display()
    {
        A::display();
        cout << "The value of B is : " << b << endl;
    }
};

int main()
{
    B b;
    b.display();
    return 0;
}
*/

/* -------------------------------------------------------------------------- */
/*                          Single level inheritance                          */
/* -------------------------------------------------------------------------- */
/*
class Account
{
protected:
    float bonus = 2000;
};

class Programmer : public Account
{

public:
    float monthly_salay = 5000;

    void calculateTotalSalary()
    {
        cout << "Total Salary is : " << monthly_salay + bonus << endl;
    }
};

int main()
{
    Programmer p1;
    p1.calculateTotalSalary();
    return 0;
}
*/