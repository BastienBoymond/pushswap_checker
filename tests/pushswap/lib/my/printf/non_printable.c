/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** print_func3
*/

#include "../../../include/printf.h"

void print_mynonprintable(long int nb)
{
    my_putcharf('\\');
    if (nb < 10)
        my_putstrf("00");
    if (nb > 10 && nb < 100)
        my_putstrf("0");
    my_put_nbrf(nb);
}

long int convert(long int nb)
{
    long int divide = 1;
    long int hex;
    char *mybase = "012345678";

    for ( ; (nb / divide) >= 7; divide = divide * 8);
    for ( ; divide > 0 ; divide /= 8) {
        hex = (nb / divide) % 8;
        my_putcharf('\\');
        if (nb < 10)
            my_putstrf("00");
        if (nb >= 10 && nb < 100)
            my_putstrf("0");
        my_putcharf(mybase[hex]);
    }
    return (0);
}

int verify_ifprintable(char c)
{
    if (c < 32 || c >= 127)
        return (1);
    return (0);
}

void print_nonprintable(char *str)
{
    long int i = 0;
    for ( ; str[i] != '\0'; i++) {
        if (verify_ifprintable(str[i]) == 1) {
            str[i] = convert(str[i]);
        }
    my_putcharf(str[i]);
    }
}