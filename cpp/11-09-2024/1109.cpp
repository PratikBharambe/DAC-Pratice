#include <iostream>
using namespace std;
#include <string.h>
#include <cmath>

/* -------------------------------------------------------------------------- */
/*                           Math Library Functions                           */
/* -------------------------------------------------------------------------- */
/*
int main()
{
    // double answer;
    // answer = sqrt(9);
    // cout << "Square root of " << " is " << answer;

    // int val1, val2;

    // /// finding absolute value using
    // /// abs() function.
    // val1 = abs(2.7);
    // val2 = abs(-43);

    // cout << "abs(22) = " << val1 << "\n";
    // cout << "abs(-43) = " << val2 << "\n";

    // int base = 4;
    // int exponent = 2;
    // int power = pow(base, exponent);
    // std::cout << "Power of a given number is :" << power;

    // float x = 10.5;
    // std::cout << "Initial value of x is :" << x;
    // cout << '\n';
    // cout << "final value of x is :" << ceil(x);

    // float x = -2.2;
    // std::cout << "Initial value of x is :" << x;
    // cout << '\n';
    // cout << "final value of x is :" << ceil(x);

    // float x = 7.8;
    // std::cout << "Initial value of x is : " << x << std::endl;
    // cout << "Now, the value of x is :" << floor(x);

    // float x = -10.2;
    // std::cout << "Initial value of x is : " << x << std::endl;
    // cout << "Now, the value of x is :" << floor(x);

    // float x=8.4;  
    // std::cout << "The value of x is : " <<x<< std::endl;  
    // cout<<"Rounded value of x is : "<<round(x); 

    //  float x=8.6;  
    // std::cout << "The value of x is : " <<x<< std::endl;  
    // cout<<"Rounded value of x is : "<<round(x); 

    double x=-9.9;  
    std::cout << "The value of x is : " <<x<< std::endl;  
    cout<<"Rounded value of x is : "<<round(x); 

    return 0;
}
*/

/* ----------------------- FAQ on multiple inheritance ---------------------- */

/*
class P {
public:
   void print()  { cout <<" Inside P"; }
};

class Q : public P {
public:
   void print() { cout <<" Inside Q"; }
};

class R: public Q { };

int main(void)
{
  R r;
  r.print();
  return 0;
}

*/

/*
class Base1 {
 public:
     ~Base1()  { cout << " Base1's destructor" << endl; }
};

class Base2 {
 public:
     ~Base2()  { cout << " Base2's destructor" << endl; }
};

class Derived: public Base1, public Base2 {
   public:
     ~Derived()  { cout << " Derived's destructor" << endl; }
};

int main()
{
   Derived d;
   return 0;
}
*/

/*
class Base1 {
 public:
     Base1()
     { cout << " Base1's constructor called" << endl;  }
};

class Base2 {
 public:
     Base2()
     { cout << "Base2's constructor called" << endl;  }
};

class Derived: public Base1, public Base2 {
   public:
     Derived()
     {  cout << "Derived's constructor called" << endl;  }
};

int main()
{
   Derived d;
   return 0;
}
*/

/*

class time
{
    int hr;
    int min;
    int sec;

public:
    time(int h, int m, int s)
    {
        hr = h;
        min = m;
        sec = s;
    }

    friend time operator-(time &, int);
    friend time operator+(time &, int);
    void display()
    {
        cout << "time:" << hr << ":" << min << ":" << sec << endl;
    }
};
time operator-(time &x, int y)
{
    x.hr = x.hr - y;
    x.min = x.min - y;
    x.sec = x.sec - y;
    return x;
}
time operator+(time &x, int y)
{
    x.hr = x.hr + y;
    x.min = x.min + y;
    x.sec = x.sec + y;
    return x;
}
int main()
{
    int hr, min, sec;
    cout << "Enter hr:";
    cin >> hr;
    cout << "Enter Min:";
    cin >> min;
    cout << "Enter sec:";
    cin >> sec;

    time t(hr, min, sec);
    t = t - 1;
    t.display();

    return 0;
}
*/

/*
class Date1
{
    int day;
    int month;
    int year;

public:
    Date1(int d, int m, int y)
    {
        day = d;
        month = m;
        year = y;
    }

    friend void operator-(Date1 &, int);
    friend void operator+(Date1 &, int);
    void display()
    {
        cout << "Date:" << day << "-" << month << "-" << year << endl;
    }
};
void operator-(Date1 &x, int y)
{
    x.day = x.day - y;
    x.month = x.month - 3;
    x.year = x.year - 6;
    cout << "Date:" << x.day << "/" << x.month << "/" << x.year << endl;
}
void operator+(Date1 &x, int y)
{
    x.day = x.day + y;
    x.month = x.month + 3;
    x.year = x.year + 6;
    cout << "Date:" << x.day << "/" << x.month << "/" << x.year << endl;
}
int main()
{
    int dd, mm, yy;
    cout << "Enter Day:";
    cin >> dd;
    cout << "Enter Month:";
    cin >> mm;
    cout << "Enter Year:";
    cin >> yy;

    Date1 d1(dd, mm, yy);
    d1 - 1; // d1=d1.operator-(1)
    d1+3;
    return 0;
}

*/

/* --------------------- Insertion & Extraction Opeator --------------------- */
/*
class Complex
{
private:
    int real, imag;

public:
    Complex(int r = 0, int i = 0)
    {
        real = r;
        imag = i;
    }
    friend void operator<<(ostream &out, const Complex &c);
    friend void operator>>(istream &in, Complex &c);
};

void operator<<(ostream &out, const Complex &c)
{
    out << c.real;
    out << "+" << c.imag << "i" << endl;
}

void operator>>(istream &in, Complex &c)
{
    cout << "Enter Real Part ";
    in >> c.real;

    cout << "Enter Imaginary Part ";
    in >> c.imag;
}

int main()
{
    Complex c1;
    cin >> c1; //
    cout << "The complex object is ";
    cout << c1;
    return 0;
}
*/
/* ---------------------------- Equality Operator --------------------------- */
/*
class Car
{
private:
    string name;
    int cost;

public:
    Car(string n, int c)
    {
        name = n;
        cost = c;
    }
    bool operator==(Car &c)
    {
        if (name == c.name && cost == c.cost)
            return true;
        return false;
    }
};
int main()
{
    Car car1("Santro", 500000);
    Car car2("Safari", 1000000);
    if (car1 == car2) // car1.operator==(car2)
        cout << "Equivalent" << endl;
    else
        cout << "Not Equivalent" << endl;
}
*/

/* -------------------------------------------------------------------------- */
/*                            Operator Overloading                            */
/* -------------------------------------------------------------------------- */
/*
class complex
{
    int real, img;

public:
    complex();
    complex(int, int);
    void display();
    complex operator+(int);
    friend complex operator+(int, complex &);
};
complex::complex()
{
}
complex::complex(int real, int img)
{
    this->real = real;
    this->img = img;
}
void complex::display()
{
    if (img > 0)
        cout << "complex number is " << real << "+" << img << "i" << endl;
    else
        cout << "complex number is " << real << img << "i" << endl;
}
complex complex::operator+(int num)
{
    complex temp;
    temp.real = real + num;
    temp.img = this->img + num;
    return temp;
}
complex operator+(int num, complex &c)
{
    complex temp;
    temp.real = c.real + num;
    temp.img = c.img + num;
    return temp;
}
int main()
{
    //complex c1(1,2);
        //complex c2=c1 + 5;//c2=c1.operator+(5)
       // c2.display();//6+7i

complex c1(1, 2);
complex c2 = 5 + c1; // c2=5.operator+(c1) =====> c2=operator+(5,c1)
c2.display();
}

*/

/* --------------------------- assignment operator -------------------------- */

/*
class string1
{
    int len;
    char *ptr;

public:
    void display();
    string1(char *);
    string1 &operator=(string1 &);
    string1(string1 &)
    {
        cout << "copy constructor is called";
    }
};
string1 &string1::operator=(string1 &s)
{
    cout << "assignment is called\n";
    len = s.len;
    delete[] ptr;
    ptr = new char[len + 1];
    strcpy(ptr, s.ptr);
    return (*this);
}
void string1::display()
{
    cout << "length is " << len << endl;
    cout << "string is " << ptr << endl;
}
string1::string1(char *sptr)
{
    len = strlen(sptr);
    ptr = new char[len + 1];
    strcpy(ptr, sptr);
}

int main()
{

    string1 s1("abc");
    string1 s2("xyz");
    s2 = s1; // s2.operator=(s1)
    s2.display();
}
// Output :
// assignment is called
// length is 3
// string is abc
*/

/* --------------------------- Decrement Operator --------------------------- */
/*
class complex
{
    int real, img;

public:
    complex();
    complex(int, int);
    void display();
    complex operator--();
    complex operator--(int);
};

complex::complex()
{
    real = 0;
    img = 0;
}

complex::complex(int real, int img)
{
    this->real = real;
    this->img = img;
}

void complex ::display()
{
    cout << real << " + " << img << "i " << endl;
}

complex complex ::operator--()
{
    this->real--;
    this->img--;
    return (*this);
}

complex complex ::operator--(int)
{
    complex temp = *this;
    this->real--;
    this->img--;
    return temp;
}

int main()
{
    complex c1(1,2);

    // complex c2=--c1;
    complex c2=c1--;


    c1.display();
    c2.display();
}

*/

/* --------------------------- Increment operator --------------------------- */
/*
class complex
{
    int real, img;

public:
    complex();
    complex(int, int);
    void display();
    complex operator++();
    complex operator++(int);
};

complex::complex()
{
    real = 0;
    img = 0;
}

complex::complex(int real, int img)
{
    this->real = real;
    this->img = img;
}

void complex ::display()
{
    cout << real << " + " << img << "i " << endl;
}

complex complex ::operator++()
{
    this->real++;
    this->img++;
    return (*this);
}

complex complex ::operator++(int)
{
    complex temp = *this;
    this->real++;
    this->img++;
    return temp;
}

int main()
{
    complex c1(1,2);

    complex c2=++c1;
    //complex c2=c1++;


    c1.display();
    c2.display();
}
// output :

// 2 + 3i
// 2 + 3i

// 2 + 3i
// 1 + 2i
*/

/* ------------------------------- Exercise 05 ------------------------------ */

/*

class item
{
public:
    static int x;
    int number;

public:
    void getdata(int a)
    {
        number = a;
        number++;
        x++;
    }
    void getcount()
    {
        x = 10;
        cout << "value is " << x << endl;
    }
    void getcount_1()
    {
        x++;
        cout << "value is  " << number << endl;
        cout << "value is " << x << endl;
    }
};
int number = 9;
int item::x;
int main()
{
    item a;
    a.getcount();
    a.getdata(100);
    a.getcount_1();
    cout <<"Global number variable"<< number << endl;
    cout <<"class member"<< a.number;
}

// Output :

// value is 10
// value is  101
// value is 12
// Global number variable9
// class member 101

*/

/* ------------------------------- Exercise 04 ------------------------------ */

/*
class temp
{
    int z;
    static int y;
public:
    temp();
    void show();
    void display();
};
int x;
int temp::y;
void temp::show()
{
    y++;
}
temp::temp()
{
    int z=200;
    x=100;
    cout<<"value of z is "<<z<<endl;
}
void temp::display()
{
    cout<<"value of x is "<<x<<endl;
    cout<<"value of y is  "<<y<<endl;
}
int main()
{
    temp t;
    t.show();
    t.show();
    t.display();
    cout<<"Size of Class temp"<<sizeof(t);
}

// Output :
// value of z is 200
// value of x is 100
// value of y is  2
// Size of Class temp4

*/

/* ------------------------------- Exercise 03 ------------------------------ */

/*
class Test
{
public:
    Test()
    {
        cout << "Constructor called";
    }
};
int main()
{
    Test *t = (Test *)malloc(sizeof(Test));
    return 0;
}
// Unlike new, malloc() doesn’t call constructor
*/

/* ------------------------------- excercise 1 ------------------------------ */
/*

 class Point {
    Point() { cout << "Constructor called"; }
};
int main()
{
    Point t1;
    return 0;
}
*/

/* ------------------------------ Excercise 2: ------------------------------ */
/*
class Point
{
public:
    Point() { cout << "Constructor called"; }
};
int main()
{
    Point t1, *t2;
    return 0;
}
*/

/* ----------------------- Array of pointer to string ----------------------- */

/*
int main()
{
    char *names[5] = {"rohan", "ram", "rahul", "rohit", "rachana"};
    for (int i = 0; i <= 5; i++)
    {

        // cout << names[i] << endl;

        int len = strlen(names[i]);
        for (int j = 0 ; j <= len ; j++){
            cout << *(*(names + i) + j) << "  ";
        }
         cout << *(names + i) << endl;
    }
}
*/

/* -------------------- this pointer with static function ------------------- */

/*
class Test
{
     int x;
public:
    Test() {
        x=10; }
    static int getX()
    {
        return this->x; // error this cannot use with static
    }

};
int Test::x;
int main()
{
    cout << Test::getX() << " ";
}
*/

/* ---------------------------- const with static --------------------------- */

/*
class Test {
   static void fun() const//error const
   { // compiler error
     return;
   }
};
  int main()
{

}
*/

/*
! Excercise 4:
Which of the following is true?
a)Static methods cannot be overloaded.
b)Static data members can only be accessed by static methods.
c)Non-static data members can be accessed by static methods.
d)Static methods can only access static members (data and methods)//true
*/

/* ------------------------------- exercise 3 ------------------------------- */
/*
class Player
{
private:
    int id;
    static int next_id;
public:
    int getID() { return id; }
    Player()  {  id = next_id++; }
};
int Player::next_id = 1;

int main()
{
  Player p1;
  Player p2;
  Player p3;
  cout << p1.getID() << " ";
  cout << p2.getID() << " ";
  cout << p3.getID();
  return 0;
}
*/

/* ------------------------------- exercise 2 ------------------------------- */
/*
class Test
{
    static int x;
public:
    Test() { x++; }
    static int getX() {return x;}
};
int Test::x;
int main()
{
    cout << Test::getX() << " ";
}
*/

/* ------------------------------- exercise 1 ------------------------------- */
/*
#include<iostream>
using namespace std;
class complex
{
    int real,img;
    public:static const int cnt;
    private:static const int cnt1;
    public:
        complex()
        {
            cout<<"default is invoked\n";
            real=5;
            img=5;
        //	cnt++;//not allowed
        }
        static int getcnt()
        {
            return cnt1;
        }
};
const int complex::cnt=5;//memory alloaction takes place
const int complex::cnt1=10;
int main()
{
    complex c1;
    cout<<"no of obj created is   "<<complex::getcnt();
    cout<<"sizeoof obj is     "<<sizeof(c1)<<endl;
    cout<<complex::cnt;
    //cout<<complex::cnt1;

}
*/

/*
class Account {
   public:
       int accno;
       char name[10];
       static float rateOfInterest;
       Account(int accno, char* name)
        {
             this->accno = accno;
           strcpy(this->name,name);
        }
       void display()
        {
            cout<<accno<<"   "<<name<<"   "<<rateOfInterest<<endl;
        }
};
float Account::rateOfInterest=6.5;
int main() {
    Account a1 =Account(201, "Sanjay");
    Account a2=Account(202, "Nakul");
    a1.display();
    a2.display();
    return 0;
}
*/
