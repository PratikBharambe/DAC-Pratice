#include <stdio.h>
int main()
{

    int n1 = 0, n2 = 1, n3, num;
    printf("Enter the number : ");
    scanf("%d", &num);

    printf("%d\t%d\t", n1, n2);
    for (int i = 0; i < num - 2; i++)
    {
        n3 = n1 + n2;
        n1 = n2;
        n2 = n3;
        printf("%d\t", n3);
    }
}