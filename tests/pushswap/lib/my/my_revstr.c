/*
** EPITECH PROJECT, 2020
** my_revstr.c
** File description:
** A program that reverse a string
*/

char *my_strcpy(char *dest, char *src);

int my_strlen(char *str);

char *my_revstr(char *str)
{
    char str_copy[my_strlen(str)];
    my_strcpy(str_copy, str);

    for (int i = 0; str_copy[i] != '\0'; i++)
        str[i] = str_copy[my_strlen(str_copy) - i - 1];
    return str;
}