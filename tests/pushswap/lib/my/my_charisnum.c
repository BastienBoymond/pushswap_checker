/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-BSQ-diogo.faria-martins
** File description:
** my_charisnum
*/

int my_charisnum(char c)
{
    if (c >= '0' && c <= '9') {
        return (1);
    } else
        return (-1);
}