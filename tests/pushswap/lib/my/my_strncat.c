/*
** EPITECH PROJECT, 2020
** my_strncat.c
** File description:
** A program that
*/

int my_strlen(char *str);

char *my_strncat(char *dest, char const *src, int nb)
{
    int j = my_strlen(dest);

    for (int i = 0; i <= nb && src[i] != '\0'; i++, j++) {
        dest[j] = src[i];
    }
    dest[j - 1] = '\0';
    return dest;
}