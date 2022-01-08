/*
** EPITECH PROJECT, 2020
** my_put_nbr.c
** File description:
** A program that display our input
*/

#include <unistd.h>

int my_putchar(char c);

int my_put_nbr(int nb)
{
    if (nb < 0) {
        nb *= -1;
        write (1, "-", 1);
        my_put_nbr(nb);
    } else if (nb > 9) {
        my_put_nbr(nb / 10);
        my_put_nbr(nb % 10);
    } else {
        my_putchar(nb + '0');
    }
    return (0);
}
