/*
** EPITECH PROJECT, 2020
** my_isneg.c
** File description:
** A program that display N if negative
*/

void my_putchar(char c);

int my_isneg(int n)
{
    if (n >= 0) {
        my_putchar('P');
    } else {
        my_putchar('N');
    }
    return (0);
}