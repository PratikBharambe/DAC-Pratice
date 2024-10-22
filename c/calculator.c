#include <stdio.h>
#include <stdbool.h>

enum choice {
    EXIT,
    ADD,
    SUB,
    MULTI,
    DIV,
    MOD,
    FACTORIAL
};

int choiceMenu() {
    int choice;
    printf("\n%d : Terminate Execution.", EXIT);
    printf("\n%d : Addition.", ADD);
    printf("\n%d : Substraction.", SUB);
    printf("\n%d : Multiplication.", MULTI);
    printf("\n%d : Division.", DIV);
    printf("\n%d : Modulus.", MOD);
    printf("\n%d : Factorial.", FACTORIAL);
    printf("\nEnter the choice : ");
    scanf("%d", &choice);
    return choice;
}

int factorial(int number) {
    int result = 1;
    for (int i = number; i <= 2; i--)
    {
        result = result * i;
    }
    return result;
}

int main() {

    while (true) {

        int firstNum, secondnum, result;
        switch (choiceMenu()) {
        case EXIT:
            return 0;

        case ADD:
            printf("Enter the first and second number : ");
            scanf("%d%d", &firstNum, &secondnum);
            result = firstNum + secondnum;
            printf("Theh addition of %d and %d is : %d.", firstNum, secondnum, result);
            break;

        case SUB:
            printf("Enter the first and second number : ");
            scanf("%d%d", &firstNum, &secondnum);
            result = firstNum - secondnum;
            printf("Theh substraction of %d and %d is : %d.", firstNum, secondnum, result);
            break;

        case MULTI:
            printf("Enter the first and second number : ");
            scanf("%d%d", &firstNum, &secondnum);
            result = firstNum * secondnum;
            printf("Theh multiplication of %d and %d is : %d.", firstNum, secondnum, result);
            break;

        case DIV:
            printf("Enter the first and second number : ");
            scanf("%d%d", &firstNum, &secondnum);
            float res = (float)firstNum / secondnum;
            printf("Theh Division of %d and %d is : %0.2f.", firstNum, secondnum, res);
            break;

        case MOD:
            printf("Enter the first and second number : ");
            scanf("%d%d", &firstNum, &secondnum);
            int res1 = firstNum % secondnum;
            printf("Theh modulus of %d and %d is : %d.", firstNum, secondnum, res1);
            break;

        case FACTORIAL:
            printf("Enter the number : ");
            scanf("%d", &firstNum);
            int res2 = factorial(firstNum);
            printf("Theh factorail of %d is : %d.", firstNum, res2);
            break;

        default:
            printf("Invalid choice.");
            break;
        }
    }

    return 0;
}