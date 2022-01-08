/*
** EPITECH PROJECT, 2020
** my_put_nbr.c
** File description:
** A program that display our input
*/

#include <unistd.h>

int my_putcharf(char c);

int my_put_nbrf(long long int nb)
{
    if (nb < 0) {
        nb *= -1;
        write (1, "-", 1);
        my_put_nbrf(nb);
    } else if (nb > 9) {
        my_put_nbrf(nb / 10);
        my_put_nbrf(nb % 10);
    } else {
        my_putcharf(nb + '0');
    }
    return (0);
}
