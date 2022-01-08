/*
** EPITECH PROJECT, 2020
** my_is_prime.c
** File description:
** A program that returns if number is prime
*/

int my_is_prime(int nb)
{
    int i = 1;
    int nb_start = nb;
    int count = 0;

    while (i <= nb_start) {
        nb = nb_start % i;
        if (nb == 0) {
            count++;
        }
        i++;
    }
    if (count == 2) {
        return (1);
    } else {
        return (0);
    }
}