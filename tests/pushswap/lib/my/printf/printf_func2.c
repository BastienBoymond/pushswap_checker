/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** printf_func2
*/

#include "../../../include/printf.h"

void is_octal(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, long int);
    convert_octal(nb);
}

void is_unsigned(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, unsigned int);
    convert_unsigned(nb);
}

void is_apourcent(va_list ap)
{
    my_putcharf('%');
}

void is_hexal(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, long int);
    convert_hexal(nb);
}

void is_hexau(va_list ap)
{
    long int nb = 0;

    nb = va_arg(ap, long int);
    convert_hexau(nb);
}