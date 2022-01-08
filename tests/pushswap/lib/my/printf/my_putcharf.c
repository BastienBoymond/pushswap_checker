/*
** EPITECH PROJECT, 2020
** my_put_char.c
** File description:
** A simple program that print a char
*/

#include <unistd.h>

void my_putcharf(char c)
{
    write(1, &c, 1);
}