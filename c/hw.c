#include <stdio.h>

int main()
{
    int a, b, c;
    printf("Enter the value of A : ");
    scanf("%d", &a);
    printf("Enter the value of B : ");
    scanf("%d", &b);
    printf("Enter the value of C : ");
    scanf("%d", &c);

    int max = (a > b) ? (a > c) ? a : c : (b > c) ? b : c;
    printf("The largest number is : %d", max);
}