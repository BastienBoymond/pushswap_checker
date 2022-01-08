/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myprintf-diogo.faria-martins
** File description:
** my_atoi
*/

int my_atoi(char *str)
{
    int nb = 0;
    int i = 0;

    for ( ; str[i]; i++) {
        nb *= 10;
        nb += (str[i]) - 48;
    }
    return (nb);
}