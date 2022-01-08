/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-pushswap-diogo.faria-martins
** File description:
** linked_lib_two
*/

#include <unistd.h>
#include "my.h"
#include <stdio.h>
#include <stdlib.h>
#include "pushswap.h"

void int_list_push_front(list_d **list, int value)
{
    list_d *push = malloc(sizeof(list));

    push->value = value;
    push->next = *list;
    *list = push;
}

void ra(list_d **l_a)
{
    int_list_push_back(l_a, l_a[0]->value);
    int_list_pop_front(l_a);
    // write(1, "ra ", 3);
}

void pb(list_d **l_b, int value, list_d **l_a)
{
    int_list_push_front(l_b, value);
    int_list_pop_front(l_a);
}

void pa(list_d **l_b, int value, list_d **l_a)
{
    int_list_push_front(l_a, value);
    int_list_pop_front(l_b);
}

int get_smallest(list_d **l_a, list_d **l_b, data *data_t)
{
    list_d *new_a = *l_a;
    int list_size = int_list_size(*l_a);
    int snbf = 0;
    int index = 0;
    bool fnf = true;

    for (int count = 0; count < list_size; count++) {
        if (fnf == true) {
            snbf = new_a->value;
            fnf = false;
        } else if (new_a->value < snbf)
            snbf = new_a->value;
        new_a = new_a->next;
    }
    return (snbf);
}