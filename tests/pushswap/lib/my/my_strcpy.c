/*
** EPITECH PROJECT, 2020
** my_strcpy.c
** File description:
** A program that copy a string
*/

char *my_strcpy(char *dest, char *src)
{
    int i = 0;
    while (src[i] != 0) {
        dest[i] = src[i];
        i++;
    }
    dest[i] = '\0';
    return dest;
}