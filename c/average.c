#include <stdio.h>

int main()
{

    int a, b, c, d, e, sum;
    float average;

    printf("Enter the marks : ");
    scanf("%d%d%d%d%d", &a, &b, &c, &d, &e);
    sum = a + b + c + d + e;
    average = (float)sum / 5;
    printf("The average is : %d", average);
    return 0;
}
