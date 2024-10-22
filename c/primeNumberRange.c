#include <stdio.h>
int main()
{

    int num;
    printf("Enter the range : ");
    scanf("%d", &num);
    int i, j;
    for (i = 3; i <= num; i++)
    {
        for (j = 2; j < i; j++)
        {
            if (i % j == 0)
                break;
        }
        if (i == j)
            printf("%d\t", i);
    }
}