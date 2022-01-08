/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** my_printf
*/

#include "../../../include/printf.h"
#include "stdlib.h"

void hashtags(char *str, int i, va_list ap)
{
    for (int a = 0; a < HASH_SIZE; a++) {
        if (hash[a].c == str[i])
            hash[a].ptr(ap);
    }
}

void basicflags(char *str, int i, va_list ap)
{
    for (int a = 0; a < ARRAY_SIZE; a++) {
        if (func[a].c == str[i])
            func[a].ptr(ap);
    }
}

int my_printf(char *str, ...)
{
    va_list ap;
    va_start(ap, str);

    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == '%' && str[i + 1] == '#') {
            i += 2;
            hashtags(str, i, ap);
        } else if (str[i] == '%' && str[i + 1] != '\0') {
            i++;
            basicflags(str, i, ap);
        } else
            my_putcharf(str[i]);
    }
    va_end(ap);
    return (0);
}