/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** printf_func
*/

#include <string.h>

#include "../../../include/printf.h"

void is_astring(va_list ap)
{
    char *string = NULL;
    string = va_arg(ap, char *);
    my_putstrf(string);
}

void is_anumber(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, int);
    my_put_nbrf(nb);
}

void my_isachar(va_list ap)
{
    char c = 0;

    c = va_arg(ap, int);
    my_putcharf(c);
}

void is_binary(va_list ap)
{
    long int nb = 0;
    nb = va_arg(ap, long int);
    convert_binary(nb);
}