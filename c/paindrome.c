#include <stdio.h>

int main()
{

    int originalNum, tempNum;
    int reversedNum = 0;
    printf("Enter the number : ");
    scanf("%d", &originalNum);
    tempNum = originalNum;
    while (tempNum > 0)
    {
        int lastDigit = tempNum % 10;
        reversedNum = (reversedNum * 10) + lastDigit;
        tempNum /= 10;
    }
    printf("The reversed number is : %d\n", reversedNum);
    if (originalNum == reversedNum)
    {
        printf("The Number is palindrome.");
    }
    else
    {
        printf("The Number is not palindrome.");
    }

    return 0;
}