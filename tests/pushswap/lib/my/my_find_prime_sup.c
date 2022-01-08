/*
** EPITECH PROJECT, 2020
** my_find_prime_sup.c
** File description:
** A program that returns the smallest prime
*/

int my_is_prime(int nb);

int my_find_prime_sup(int nb)
{
    int nb_result = my_is_prime(nb);

    if (nb_result == 0)
        return my_find_prime_sup(nb + 1);
    return nb;
}
