/*
** EPITECH PROJECT, 2020
** my_str_isnum.c
** File description:
** Check if string is num
*/

#include <stdbool.h>

bool my_str_isnum(char *str)
{
    for (int i = 0; str[i]; i++) {
        if (str[i] == '-')
            i++;
        if (!(str[i] >= '0' && str[i] <= '9'))
                return (false);
    }
    return (true);
}
