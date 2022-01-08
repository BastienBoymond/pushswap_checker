/*
** EPITECH PROJECT, 2020
** my_putstr.c
** File description:
** A program that display a string
*/

int my_putcharf(char c);

int my_putstrf(char const *str)
{
    long long int i = 0;
    while (str[i] != '\0') {
        my_putcharf(str[i]);
        i++;
    }
    return (0);
}