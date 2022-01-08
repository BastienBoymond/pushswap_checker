/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** modifiers
*/

#include "../../../include/printf.h"

void convert_unsigned(unsigned int nb)
{
    my_put_nbrf(nb);
}

void print_pointer(long long int nb)
{
    long long divide = 1;
    long long hex;
    char *mybase = "0123456789abcdef";

    my_putstrf("0x");
    for ( ; (nb / divide) >= 16; divide = divide * 16);
    for ( ; divide > 0 ; divide /= 16) {
        hex = (nb / divide) % 16;
        my_putcharf(mybase[hex]);
    }
}