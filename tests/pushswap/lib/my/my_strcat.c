/*
** EPITECH PROJECT, 2020
** my_strcat.c
** File description:
** A program that
*/

#include <stdlib.h>

int my_strlen(char const *str);

char *my_strcat(char *dest, char const *src)
{
    char *r_string = malloc(sizeof(char) *
    (my_strlen(dest) + my_strlen(src) + 1));
    int i = 0;
    int j = 0;

    for (; dest[i] != '\0'; i++)
        r_string[i] = dest[i];
    for (; src[j] != '\0'; i++, j++)
        r_string[i] = src[j];
    r_string[i] = '\0';
    return r_string;
}