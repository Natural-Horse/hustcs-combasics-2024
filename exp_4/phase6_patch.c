#include <stdio.h>

void do_print()
{
    printf("U202317254\n");
    return;
}

void (*myprint)() = do_print;