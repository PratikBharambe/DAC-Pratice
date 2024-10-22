#include <stdio.h>

int main()
{

    int num, originalNum;
    int sum = 0;
    printf("Enter the number : ");
    scanf("%d", &num);
    originalNum = num;

    while (num != 0)
    {
        int lastDigit = num % 10;
        sum += lastDigit*lastDigit*lastDigit;
        num /= 10;
    }

    (sum == originalNum) ? printf("Armstrong") : printf("Not armstrong");
    
}