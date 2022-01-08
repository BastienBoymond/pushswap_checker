/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** convert_hash
*/

/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** convert_binary
*/
#include "../../../include/printf.h"

void octalhash(long int nb)
{
    long int divide = 1;
    long int hex;
    char *mybase = "012345678";

    if (nb > 0)
        my_putcharf('0');
    for ( ; (nb / divide) >= 7; divide = divide * 8);
    for ( ; divide > 0 ; divide /= 8) {
        hex = (nb / divide) % 8;
        my_putcharf(mybase[hex]);
    }
}

void hexauhash(long int nb)
{
    long int divide = 1;
    long int hex = 1;
    char *mybase = "0123456789ABCDEF";

    my_putstrf("0X");
    for ( ; (nb / divide) >= 16; divide = divide * 16);
    for ( ; divide > 0 ; divide /= 16) {
        hex = (nb / divide) % 16;
        my_putcharf(mybase[hex]);
    }
}

void hexalhash(long int nb)
{
    long int divide = 1;
    long int hex;
    char *mybase = "0123456789abcdef";

    my_putstrf("0x");
    for ( ; (nb / divide) >= 16; divide = divide * 16);
    for ( ; divide > 0 ; divide /= 16) {
        hex = (nb / divide) % 16;
        my_putcharf(mybase[hex]);
    }
}