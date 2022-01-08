/*
** EPITECH PROJECT, 2020
** my_strlowcase.c
** File description:
** Tranform a string to lower case
*/

int my_strlen(char *str);

char *my_strlowcase(char *str)
{
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] >= 'A' && str[i] <= 'Z')
            str[i] += 32;
    }
    return str;
}