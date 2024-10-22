/* -------------------------------------------------------------------------- */
/*                                Header Files                                */
/* -------------------------------------------------------------------------- */

#include <stdio.h>

/* -------------------------------------------------------------------------- */
/*                            Function declarations                           */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
/*                                Star Patterns                               */
/* -------------------------------------------------------------------------- */
void starPattern1(int);
void starPattern2(int);
void starPattern3(int);
void starPattern4(int);
void starPattern5(int);
void starPattern6(int);

/* -------------------------------------------------------------------------- */
/*                              Numeric Patterns                              */
/* -------------------------------------------------------------------------- */
void numericPattern1(int);
void numericPattern2(int);
void numericPattern3(int);
void numericPattern4(int);
void numericPattern5(int);

/* -------------------------------------------------------------------------- */
/*                             Alphabetic Patterns                            */
/* -------------------------------------------------------------------------- */
void alphabeticPattern01(int);
void alphabeticPattern02(int);
void alphabeticPattern03(int);
void alphabeticPattern04(int);
void alphabeticPattern05(int);

/* -------------------------------------------------------------------------- */
/*                                Main Function                               */
/* -------------------------------------------------------------------------- */

int main(int argc, char const *argv[])
{
    int noOfRows;
    printf("Enter the num of rows : ");
    scanf("%d", &noOfRows);

    /* ------------------------- Star functions calling ------------------------- */
    starPattern1(noOfRows);
    starPattern2(noOfRows);
    starPattern3(noOfRows);
    starPattern4(noOfRows);
    starPattern5(noOfRows);
    starPattern6(noOfRows);

    /* ------------------------ Numeric Functions Calling ----------------------- */
    numericPattern1(noOfRows);
    numericPattern2(noOfRows);
    numericPattern3(noOfRows);
    numericPattern4(noOfRows);
    numericPattern5(noOfRows);

    /* ---------------------- Alphabetic Functions Calling ---------------------- */
    alphabeticPattern01(noOfRows);
    alphabeticPattern02(noOfRows);
    alphabeticPattern03(noOfRows);
    alphabeticPattern04(noOfRows);
    alphabeticPattern05(noOfRows);
    return 0;
}

/* -------------------------------------------------------------------------- */
/*                            Function Definations                            */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
/*                                Star Patterns                               */
/* -------------------------------------------------------------------------- */

/* ----------------------------- Star Pattern 01 ---------------------------- */
void starPattern1(int n)
{
    printf("\nStar Pattern 01\n");
    for (int i = 0; i < n; i++)
    {
        for (int i = 0; i < n; i++)
        {
            printf("* ");
        }
        printf("\n");
    }
}

/* ----------------------------- Star Pattern 02 ---------------------------- */
void starPattern2(int n)
{
    printf("\nStar Pattern 02\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 1; j <= n - i; j++)
        {
            printf("* ");
        }
        printf("\n");
    }
}

/* ----------------------------- Star Pattern 03 ---------------------------- */
void starPattern3(int n)
{
    printf("\nStar Pattern 03\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= i; j++)
        {
            printf("* ");
        }
        printf("\n");
    }
}

/* ----------------------------- Star Pattern 04 ---------------------------- */
void starPattern4(int n)
{
    printf("\nStar Pattern 04\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= i - 1; j++)
        {
            printf("  ");
        }
        for (int j = i; j < n; j++)
        {
            printf("* ");
        }
        printf("\n");
    }
}

/* ----------------------------- Star Pattern 05 ---------------------------- */
void starPattern5(int n)
{
    printf("\nStar Pattern 05\n");
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= n - i; j++)
        {
            printf("  ");
        }
        for (int j = 0; j < i; j++)
        {
            printf("* ");
        }
        printf("\n");
    }
}

/* ----------------------------- Star Pattern 06 ---------------------------- */
void starPattern6(int n)
{
    printf("\nStar Pattern 06\n");
    for (int i = 0; i <= n; i++)
    {
        for (int j = 0; j < n - i; j++)
        {
            printf("  ");
        }
        for (int j = 0; j < 2 * i - 1; j++)
        {
            printf("* ");
        }
        printf("\n");
    }
    for (int i = 1; i <= n - 1; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("  ");
        }
        for (int j = 1; j <= 2 * (n - i) - 1; j++)
        {
            printf("* ");
        }
        printf("\n");
    }
}

/* -------------------------------------------------------------------------- */
/*                              Numeric Patterns                              */
/* -------------------------------------------------------------------------- */

/* --------------------------- Numeric Pattern 01 --------------------------- */
void numericPattern1(int n)
{
    printf("\nNumceric Pattern 01\n");
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("%d ", j);
        }
        printf("\n");
    }
}

/* --------------------------- Numeric Pattern 02 --------------------------- */
void numericPattern2(int n)
{

    printf("\nNumceric Pattern 02\n");
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("%d ", i);
        }
        printf("\n");
    }
}

/* --------------------------- Numeric Pattern 03 --------------------------- */
void numericPattern3(int n)
{
    printf("\nNumceric Pattern 03\n");
    int counter = 1;
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= i; j++)
        {
            printf("%d ", counter);
            counter++;
        }
        printf("\n");
    }
}

/* --------------------------- Numeric Pattern 04 --------------------------- */
void numericPattern4(int n)
{
    printf("\nNumceric Pattern 04\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= i; j++)
        {
            (i % 2 == 0) ? printf("1 ") : printf("0 ");
        }
        printf("\n");
    }
}

/* --------------------------- Numeric Pattern 05 --------------------------- */
void numericPattern5(int n)
{
    printf("\nNumceric Pattern 05\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= i; j++)
        {
            (j % 2 == 0) ? printf("1 ") : printf("0 ");
        }
        printf("\n");
    }
}

/* -------------------------------------------------------------------------- */
/*                             Alphabetic Patterns                            */
/* -------------------------------------------------------------------------- */

/* -------------------------- Alphabetic Pattern 01 ------------------------- */
void alphabeticPattern01(int n)
{
    printf("\nAlphabetic Pattern 01\n");
    char ch = 'A';
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("%c ", ch);
        }
        ch++;
        printf("\n");
    }
}

/* -------------------------- Alphabetic Pattern 02 ------------------------- */
void alphabeticPattern02(int n)
{
    printf("\nAlphabetic Pattern 02\n");
    for (int i = 1; i <= n; i++)
    {
        char ch = 'A';
        for (int j = 1; j <= i; j++)
        {
            printf("%c ", ch);
            ch++;
        }
        printf("\n");
    }
}

/* -------------------------- Alphabetic Pattern 03 ------------------------- */
void alphabeticPattern03(int n)
{
    printf("\nAlphabetic Pattern 03\n");
    char ch = 'A';
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("%c ", ch);
            ch++;
        }
        printf("\n");
    }
}

/* -------------------------- Alphabetic Pattern 04 ------------------------- */
void alphabeticPattern04(int n)
{
    printf("\nAlphabetic Pattern 04\n");
    for (int i = 1; i <= n; i++)
    {
        char ch = 'A';
        for (int j = 0; j < n - i; j++)
        {
            printf("  ");
        }
        for (int j = 1; j <= 2 * i - 1; j++)
        {
            printf("%c ", ch);
            ch++;
        }
        printf("\n");
    }
}

/* -------------------------- Alphabetic Pattern 05 ------------------------- */
void alphabeticPattern05(int n)
{
    printf("\nAlphabetic Pattern 05\n");
    char ch = 'A';
    for (int i = 1; i <= n; i++)
    {
        for (int j = 0; j < n - i; j++)
        {
            printf("  ");
        }
        for (int j = 1; j <= 2 * i - 1; j++)
        {
            printf("%c ", ch);
        }
        ch++;
        printf("\n");
    }
}