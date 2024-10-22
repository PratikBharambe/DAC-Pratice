#include <iostream>
using namespace std;

/* -------------------------------------------------------------------------- */
/*                            Modes of inheritance                            */
/* -------------------------------------------------------------------------- */

/* ------------------------------ private mode ------------------------------ */

// In private mode all the members of the base are inherted by the derived class as private  ...................
// means their derived calsss cannot access them  .............................

/* ----------------------------- protected mode ----------------------------- */
/*
class Parent
{
private:
    int pvt;

public:
    int pub;

protected:
    int prot;

public:
    void displayParent()
    {
        cout << "Private from base class : " << pvt << endl;
    }
};

// ! Public and protected variables are passed to derived class using " protected " access specifer ................
// ! thats means their access specifier in derived class is protected .............
// ! cannot used outside of the class not even in " main menthod " .............
class child : protected Parent
{
private:
    int pvtChild;

public:
    int pubChild;

protected:
    int protChild;

public:
    void displayChild()
    {
        cout << "Private from child : " << pvtChild << endl;
        cout << "Protected from child : " << protChild << endl;
        cout << "Protected from parent : " << prot << endl; // * allowed
    }
};

int main()
{
    // creating object of derived class .....................
    child c1;
    // cout << "protected of parent using child object : " << c1.prot << endl; // * not allowed ...........................
    // cout << "protected of child using child object : " << c1.protChild << endl; // * not allowed ....................

    // We can access the private and proteced menbers by using therir ...................
    // presense in public functions of the class ...............
    c1.displayChild(); // * allowed ....................
    // c1.displayParent(); // ! not allowed .................
}

*/

/* ------------------------------- Public Mode ------------------------------ */
/**
* ! Main method is not written ....................................
class Parent
{
private:
    int pvt;

public:
    int pub;

protected:
    int prot;

public:
    void displayPVTParent()
    {
        cout << "Parent class functio to access  private variable\nof the parent class and the value is : " << pvt << endl;
    }
};

class Child : public Parent
{
    int pvtChild;

    public:
    void DisplayChild(){
        // Accessing private variable of parent class is not possible in chlid class ................
        // cout << "Try to access privatet variable  of parent class :  " << pvt << endl; // * Not Alloed ...........................
    }
};
*/

/*
class stud_basic
{

    char name[30];
    int age;
    char gender;

public:
    void getStudentData();
    void displayStudentData();
};

void stud_basic ::getStudentData()
{
    cout << "Enter name : ";
    cin >> name;

    cout << "Enter age : ";
    cin >> age;

    cout << "Enter the gender : ";
    cin >> gender;
}

void stud_basic ::displayStudentData()
{
    cout << "Name is : " << name << endl
         << "Age is : " << age << endl
         << "Gender is : " << gender << endl;
}

class stud_result : public stud_basic
{

    int totalMarks;
    float percentage;
    char grade;

public:
    void getResultData();
    void displayResultData();
};

void stud_result::getResultData()
{
    cout << "Enter total marks : ";
    cin >> totalMarks;

    percentage = (float)((totalMarks * 100) / 500);

    cout << "Enter grade : ";
    cin >> grade;
}

void stud_result::displayResultData()
{
    displayStudentData();
    cout << "Total marks are : " << totalMarks << endl
         << "Percentage : " << percentage << endl
         << "Grade : " << grade << endl;
}

int main(){
    stud_result s1;
    s1.getStudentData();
    s1.getResultData();
    s1.displayResultData();
    return 0;
}
*/