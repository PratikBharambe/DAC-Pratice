// Pratik Bharambe .....................

#include <iostream>
using namespace std;

class ComplexNumber
{
    int real, img;

public:
    void accept();
    void setReal(int);
    void setImg(int);
    int getReal() const;
    int getImg() const;
    void show() const;
    ComplexNumber(int, int);
};

ComplexNumber::ComplexNumber(int real, int img)
{
    this->real = real;
    this->img = img;
}

void ComplexNumber::accept()
{
    cout << "Enter the real and imaginary data : ";
    cin >> real >> img;
}

void ComplexNumber::show() const
{
    cout << this->real << " + " << this->img << "i" << endl;
}

void ComplexNumber::setReal(int real)
{
    this->real = real;
}

void ComplexNumber::setImg(int img)
{
    this->img = img;
}

int ComplexNumber::getReal() const
{
    return this->real;
}

int ComplexNumber::getImg() const
{
    return this->img;
}

int main()
{
    const ComplexNumber c1(4, 5);
    // c1.accept();
    c1.show();
    // c1.setReal(8);
    // c1.setImg(4);
    cout << "The real part is : " << c1.getReal() << endl;
    cout << "The imaginary part is : " << c1.getImg() << endl;
    c1.show();
    return 0;
}
