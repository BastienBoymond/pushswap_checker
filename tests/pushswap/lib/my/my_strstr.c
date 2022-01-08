/*
** EPITECH PROJECT, 2020
** my_strstr.c
** File description:
** A program that find a substring
*/

#include <stddef.h>

int my_strlen(char const *str);

int my_strncmp(char *s1, char *s2, int n);

char *my_strstr(char *str, char *to_find)
{
    int len = my_strlen(to_find);

    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == to_find[0] && my_strncmp(&str[i], to_find, len) == 0)
            return (&str[i]);
    }
    return (NULL);
}
