/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** printf_spaces
*/
#include <stdarg.h>
#include <stdio.h>

#include "../../../include/printf.h"

int my_isprint(char c)
{
    if (c == '-' ) {
        return (4);
    } else if (c == '0' ) {
        return (5);
    }
    return (0);
}

int definechar(char *str)
{
    for (int i = 0; str[i]; i++) {
        if (str[i] == '%' && my_isprint(str[i + 1]) == 5) {
            return (1);
        }
        if (str[i] == '%' && my_isprint(str[i + 1]) == 4) {
            return (2);
        }
    }
    return (0);
}

int intlen(int nbsize)
{
    int param_length = 0;
    int tmp = 0;

    for (tmp = nbsize; tmp > 0; param_length++)
        tmp  /= 10;
    return (param_length);
}