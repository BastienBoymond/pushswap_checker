/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** convert_binary
*/
#include "../../../include/printf.h"

void convert_binary(long long int nb)
{
    long int divide = 1;
    long int hex;
    char *mybase = "01";

    for ( ; (nb / divide) >= 2; divide = divide * 2);
    for ( ; divide > 0 ; divide /= 2) {
        hex = (nb / divide) % 2;
        my_putcharf(mybase[hex]);
    }
}

void convert_octal(long int nb)
{
    long int divide = 1;
    long int hex;
    char *mybase = "012345678";

    for ( ; (nb / divide) >= 7; divide = divide * 8);
    for ( ; divide > 0 ; divide /= 8) {
        hex = (nb / divide) % 8;
        my_putcharf(mybase[hex]);
    }
}

void convert_hexau(long int nb)
{
    long int divide = 1;
    long int hex = 1;
    char *mybase = "0123456789ABCDEF";

    for ( ; (nb / divide) >= 16; divide = divide * 16);
    for ( ; divide > 0 ; divide /= 16) {
        hex = (nb / divide) % 16;
        my_putcharf(mybase[hex]);
    }
}

void convert_hexal(long int nb)
{
    long int divide = 1;
    long int hex;
    char *mybase = "0123456789abcdef";

    for ( ; (nb / divide) >= 16; divide = divide * 16);
    for ( ; divide > 0 ; divide /= 16) {
        hex = (nb / divide) % 16;
        my_putcharf(mybase[hex]);
    }
}