/*
** EPITECH PROJECT, 2020
** my_strupcase.c
** File description:
** Tranform a string to upper case
*/

int my_strlen(char *str);

char *my_strupcase(char *str)
{
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] >= 'a' && str[i] <= 'z')
            str[i] -= 32;
    }
    return str;
}