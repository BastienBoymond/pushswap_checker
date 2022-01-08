/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** my_printf
*/

#define ARRAY_SIZE 2

#include "my.h"
#include "stdarg.h"
#include "stdio.h"

typedef struct array_s
{
    char c;
    void (*ptr)(va_list);
    int flaglen;
} array_t;

void is_astring(va_list ap)
{
    char *string = NULL;
    printf("in is a string");
    string = va_arg(ap, char *);
    my_putstr(string);
}

void is_anumber(va_list ap)
{
    int nb = 0;

    nb = va_arg(ap, int);
    my_put_nbr(nb);
}

static array_t func[] =
    {
        {'d', is_anumber, 1},
        {'s', is_astring, 1}};

int my_printf(char *str, ...)
{
    va_list ap;
    va_start(ap, str);

    for (int i = 0; str[i]; i++) {
        if (str[i] == '%' && str[i + 1] != '\0') {
            i++;
            for (int a = 0; a < ARRAY_SIZE; a++) {
                if (func[a].c == str[i])
                    func[a].ptr(ap);
            }
        }
    }
    return (0);
}