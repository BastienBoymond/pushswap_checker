/*
** EPITECH PROJECT, 2020
** my_sort_int_array.c
** File description:
** Sort int in array
*/

int my_put_nbr(int nb);

void my_putchar(char c);

void my_swap(int *a, int *b);

void display_tab(int *tab, int size)
{
    for (int i = 0; i < size; i++) {
        my_put_nbr(tab[i]);
        if (i < size - 1) {
            my_putchar(',');
            my_putchar(' ');
        }
    }
}

void my_sort_int_array(int *tab, int size)
{
    for (int i = 0; i != size; i++) {
        if (i > 0 && tab[i - 1] > tab[i]) {
            my_swap(&tab[i - 1], &tab[i]);
            i -= 2;
        }
    }
    display_tab(tab, size);
}