#include <iostream>
using namespace std;

/* -------------------------- Operator Overloading -------------------------- */
class Complex
{
    int real, img;

public:
    Complex();
    Complex(int, int);
    void display();
    Complex operator+(Complex &);
    Complex operator-(Complex &);
    Complex operator-();
};

Complex::Complex() {}

Complex::Complex(int real, int img)
{
    this->real = real;
    this->img = img;
}

void Complex::display()
{
    if (img < 0)
        cout << real << img << "i" << endl;
    else
        cout << real << "+" << img << "i" << endl;
}

Complex Complex::operator+(Complex& c)
{
    Complex temp;
    temp.real = this->real + c.real;
    temp.img = this->img + c.img;
    return temp;
}

Complex Complex::operator-(Complex& c)
{
    Complex temp;
    temp.real = this->real - c.real;
    temp.img = this->img - c.img;
    return temp;
}

Complex Complex::operator-()
{
    Complex temp;
    temp.real = -this->real;
    temp.img = -this->img;
    return temp;
}

int main()
{
    Complex c1(10, 20);
    // Complex c2(30, 40);
    // Complex c3 = c1 - c2;
    // c3.display();
    c1 = -c1;
    c1.display();
}


/* ------------------ defination methods outside namespace ------------------ */
/*
namespace first
{
    class geek
    {
        public:
        void display();
    };
}
void first::geek::display()
{
    cout<<"Define outside namespace";
}
int main()
{
    first::geek obj;
    obj.display();
}
*/

/* ----------------------- use of class in a namespace ---------------------- */
/*
namespace first
{
    class geek
    {
        public:
        void display()
        {
            cout<<"inside geek"<<endl;
        }
    };
}
int main()
{
    first::geek obj;
    obj.display();
}
*/

/* -------------------------------------------------------------------------- */
/*                           using nested namespace                           */
/* -------------------------------------------------------------------------- */
/*
namespace first
{
    void show()
    {
        cout<<"inside first show";
    }
    namespace second
    {
        void show()
        {
            cout<<"inside second show";
        }
    }
}
using namespace first::second;
int main()
{
    show();
}

*/

/* -------------------------------------------------------------------------- */
/*                               using namespace                              */
/* -------------------------------------------------------------------------- */

/*
namespace first{
    void show(){
        cout << "Inside first"<<endl;
    }
}

namespace second{
    void show(){
        cout << "Inside second"<<endl;
    }
}

int main()
{
    first::show();
    second::show();
}
*/

/* -------------------------------------------------------------------------- */
/*                            swaping using friend                            */
/* -------------------------------------------------------------------------- */

/*
class Swap
{
    int temp, a, b;

    public:
    Swap(int a, int b)
    {
        this->a = a;
        this->b = b;
    }

    friend void swapO(Swap &);
};

void swapO(Swap & s)
{
    cout << "Before A : " << s.a << " B : " << s.b << endl;

    s.temp = s.a;
    s.a = s.b;
    s.b = s.temp;

    cout << "After A : " << s.a << " B : " << s.b << endl;

}

int main(int argc, char const *argv[])
{
    Swap s(10, 50);
    swapO(s);
    return 0;
}
*/

/* -------------------------------------------------------------------------- */
/*                    Add Members of Two Different Classes                    */
/* -------------------------------------------------------------------------- */
/*
class B;
class A
{
    int num;
    public:
    A():num(10)
    {    }
    friend int add(A,B);
};
class B
{
    int numb;
    public:
    B():numb(12)
    {   }
    friend int add(A,B);
};
int add(A a,B b)
{
    return (a.num+b.numb);
}
int main()
{
    A a1;
    B b1;
    cout<<"Addition: " << add(a1, b1);
}
*/

/* -------------------------------------------------------------------------- */
/*                     function is friendly to two classes                    */
/* -------------------------------------------------------------------------- */
/*
class Child;
class Parent
{
    int x;

public:
    void setX(int x)
    {
        this->x = x;
    }
    friend void min(Parent &, Child &);
};
class Child
{
    int y;

public:
    void setY(int y)
    {
        this->y = y;
    }
    friend void min(Parent &, Child &);
};

void min(Parent &p, Child &c)
{
    if (p.x <= c.y)
        cout << p.x;
    else
        cout << c.y;
}

int main()
{
    Parent p;
    Child c;
    p.setX(30);
    c.setY(20);

    min(p, c);
}
*/

/*
class A
{
    int length;
    public:
    A()
    {
        length=5;
    }
    friend int printLength(A &);
};
int printLength(A&a)
{
    a.length+=10;
    return a.length;
}
int main()
{
    A a;
    cout<<"Length:"<<printLength(a);
}
*/

/* -------------------------------------------------------------------------- */
/*                 class member function  as friend functiom                  */
/* -------------------------------------------------------------------------- */
/*
class Child;
class Parent
{
    int child = 2;

protected:
    int date = 5;

public:
    void memberFunction(Child &);
};

class Child
{
    int age = 10;

protected:
    int year = 2002;

public:
    void display()
    {
        cout << age << year << endl;
    }

    friend void Parent::memberFunction(Child &);
};

void Parent ::memberFunction(Child &c)
{
    cout << c.age << c.year;
}

int main()
{
    Child c;
    Parent p;
    p.memberFunction(c);
}
*/
/* -------------------------------------------------------------------------- */
/*                                Friend class                                */
/* -------------------------------------------------------------------------- */
/*
class A
{
    int a, b;

public:
    A()
    {
        a = 10;
        b = 20;
    }
    void display()
    {
        cout << a << b << endl;
    }

    friend void show(A &);
};

void show(A &obj)
{

    cout << obj.a << obj.b << endl;
}

int main(int argc, char const *argv[])
{
    A a ;
    show(a);
    return 0;
}
*/

/* -------------------------------------------------------------------------- */
/*                                friend class                                */
/* -------------------------------------------------------------------------- */

/*
class A
{
    int a,b;
    public:
    A()
    {
        a=10;
        b=20;
    }
    friend class B;
    void display()
    {
        cout<<a<<b<<endl;
    }
};
class B
{
    public:
void display(A & obj)
{
    cout<<obj.a<<obj.b<<endl;
}
};
int main()
{
    A aobj;
    B bobj;
    bobj.display(aobj);
}
*/
