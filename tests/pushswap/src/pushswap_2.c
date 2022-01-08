/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-pushswap-diogo.faria-martins
** File description:
** pushswap_2
*/

#include <stdbool.h>
#include <unistd.h>
#include <stdio.h>
#include "../include/my.h"
#include "../include/pushswap.h"
#include "printf.h"

void create_values(data *data)
{
    data->wrote = true;
    data->index = 0;
    data->smallest = 0;
    data->list_size = 0;
    data->value = 0;
    data->rotate = true;
}

int print_algo(data *data, char *operations)
{
    if (data->wrote == true) {
        write(1, operations, 2);
        data->wrote = false;
    } else {
        write(1, " ", 1);
        write(1, operations, 2);
    }
}

void pa_operation(list_d *new_l_b, data *data, list_d **l_a, list_d **l_b)
{
    while (data->list_size != 0) {
        new_l_b = *l_b;
        data->value = new_l_b->value;
        print_algo(data, "pa");
        pa(l_b, data->value, l_a);
        data->list_size--;
    }
}

bool check_list_sorted(list_d **l_a, data *data_t)
{
    list_d *new_sorted = *l_a;
    for ( ; new_sorted->next != NULL ; new_sorted = new_sorted->next) {
        if (new_sorted->value > new_sorted->next->value) {
            return (false);
        }
    }
    return (true);
}

int check_list(list_d **l_a, data *data_t, int argc, char **argv)
{
    if (argc < 2)
        return (84);
    else if (argc == 2) {
        write(1, "\n", 1);
        return (0);
    }
    return (1);
}