/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** printf_func3
*/

#include "../../../include/printf.h"

void convert_p(va_list ap)
{
    char *nb;

    nb = va_arg(ap, char *);
    print_pointer((long long) nb);
}

void nonprintable(va_list ap)
{
    char *str = NULL;

    str = va_arg(ap, char *);
    print_nonprintable(str);
}

void is_hexalhash(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, long int);
    hexalhash(nb);
}

void is_hexauhash(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, long int);
    hexauhash(nb);
}

void is_octalhash(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, long int);
    octalhash(nb);
}