#include <stdio.h>


/*  Pattern 7
        *
      * *
    *   *
  *     *
* * * * *
 */
void pattern(int n)
{
    for (int i = 0; i < n - 1; i++)
    {
        printf("  ");
    }
    printf("* \n");
    for (int i = 0; i < n - 2; i++)
    {
        /* code */
    }
}

int main()
{
    int num = 5;
    pattern(num);
}
