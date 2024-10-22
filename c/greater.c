#include <stdio.h>
int main()
{
    int a, b, c;
    printf("Enter value of A : ");
    scanf("%d", &a);
    printf("Enter value of B : ");
    scanf("%d", &b);
    printf("Enter value of C : ");
    scanf("%d", &c);
    int max = (a > b) ? (a > c) ? a : c : (b > c) ? b : c;
    printf("The largest Number is : %d", max);
    return 0;
}