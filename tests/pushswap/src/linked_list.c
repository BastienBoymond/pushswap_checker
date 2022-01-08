/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-pushswap-diogo.faria-martins
** File description:
** linked_list
*/

#include <unistd.h>
#include "my.h"
#include <stdio.h>
#include <stdlib.h>
#include "pushswap.h"

int int_list_pop_back(list_d **list)
{
    list_d *new = *list;
    int temp = 0;

    if (list == NULL)
        return (0);
    if ((*list)->next == NULL) {
        temp = new->value;
        free(new);
        *list = NULL;
    } else {
        while (new->next->next != NULL)
            new = new->next;
        temp = new->next->value;
        free(new->next);
        new->next = NULL;
    }
    return (temp);
}

void printList(list_d *list)
{
    for ( ; list != NULL ; list = list->next) {
        write(1, "->", 2);
        my_put_nbr(list->value);
    }
}

size_t int_list_size(list_d *list)
{
    int count = 0;
    list_d *now = list;
    if (now == NULL)
        return (0);
    while (now != NULL) {
        count++;
        now = now->next;
    }
    return (count);
}

void int_list_push_back(list_d **list, int value)
{
    list_d *node = *list;

    if (node == NULL) {
        int_list_push_front(list, value);
    } else {
        int_list_push_back(&node->next, value);
    }
}

int int_list_pop_front(list_d **list)
{
    list_d *node = *list;
    int tmp = node->value;

    *list = (*list)->next;
    free (node);
    return (tmp);
}