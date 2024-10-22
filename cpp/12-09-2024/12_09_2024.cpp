#include <iostream>
using namespace std;



inline int cube(int s)
{
    return s * s * s;
}
int main()
{
    cout << "The cube of 3 is: " << cube(3) << "\n";
    return 0;
}

/*
  int main()
{
  int numerator = 5;
  int denominator = 0;
  int result=0;

  try
  {
    if(denominator == 0)
    {
      throw denominator;
    }
    result = numerator / denominator;
  cout << "Division Result is: " << result;
  }
  catch(int ex)
  {
    cout << "Exception: Divide by zero not allowed :" <<
             ex << endl;
  }

  return 0;
}
*/

/* -------------------------------- template -------------------------------- */
/*
template <class R>
R add(R r, R rc)
{
    R res = r + rc;
    return res;
}
int main()
{
    int i = 10, j = 20;
    float a = 2.1, b = 3.2;
    cout << "Addition of Integer: " << add(i, j) << endl;
    cout << "Addition of Float: " << add(a, b) << endl;
    cout << "Addition of Character: " << add('r', 'm')<<endl;
}
*/
/* -------------------------------------------------------------------------- */
/*                                   strcat                                   */
/* -------------------------------------------------------------------------- */
/*
void ustrcat(char *, char *);

int main()
{
    char str[10];
    char nstr[10];
    cout << "Enter first string: ";
    cin >> str;
    cout << "Enter second string: ";
    cin >> nstr;
    ustrcat(str, nstr);
    cout << "Concatenated Str is : " << str;
}
void ustrcat(char *ch, char *sch)
{
    int len = 0;
    while (*sch != '\0')
    {
        while(*ch != '\0')
        {
            ch++;
        }
        while (*sch != '\0')
        {
            *ch = *sch;
            ch++;
            sch++;
        }

    }
    *ch = '\0';
}
*/

/* --------------------------------- strcpy --------------------------------- */
/*
void ustrcpy(char *, char *);

int main()
{
    char str[10];
    char nstr[10];
    cout<<"Enter a string: ";
    cin>>str;
    ustrcpy(nstr, str);
    cout<<"new Str is : "<<nstr;
}
void ustrcpy(char * ch, char * sch)
{
    int len=0;
    while (*sch!='\0')
    {
        *ch = *sch;
        ch++;
        sch++;
    }
    *ch = '\0';
}
*/

/* --------------------------------- strlen --------------------------------- */
/*
int ustrlen(char *);

int main()
{
    char str[10];
    cout<<"Enter a string: ";
    cin>>str;
    int len=ustrlen(str);
    cout<<"Lenght is : "<<len;
}
int ustrlen(char * ch)
{
    int len=0;
    while (*ch!='\0')
    {
        ch++;
        len++;
    }
    return len;
}
*/