/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-pushswap-diogo.faria-martins
** File description:
** my_getnbr
*/

#include <stdlib.h>
#include <stdio.h>
#include "my.h"


long int result(int neg, char *str)
{
    int lenght = my_strlen(str) - 1;
    long int result = 0;

    for (int i = 0; str[i]; i++) {
        result += (str[i] - 48) * my_compute_power_rec(10, lenght);
        lenght--;
    }
    if (neg == 1)
        return result * -1;
    return result;
}

int my_char_isnum(char c)
{
    if (c >= '0' && c <= '9')
        return (1);
    else
        return (0);
}

long int my_getnbr(char *str)
{
    int counter = 0;
    char clone_str[12];
    int negative = 0;
    int letter = 0;
    int nb = 0;

    if (str == NULL)
        return (0);
    for (int i = 0; str[i]; i++) {
        if (my_char_isnum(str[i]) && letter != 1) {
            clone_str[counter] = str[i];
            counter++;
            nb = 1;
        } else if (str[i] == '-')
            negative = 1;
        else if (nb == 1)
            letter = 1;
    }
    clone_str[counter] = '\0';
    return result(negative, clone_str);
}