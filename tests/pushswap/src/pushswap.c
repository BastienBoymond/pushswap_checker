/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-pushswap-diogo.faria-martins
** File description:
** pushswap
*/

#include <stdbool.h>
#include <unistd.h>
#include <stdio.h>
#include "my.h"
#include "pushswap.h"
#include "printf.h"

void select_sorter(list_d **l_a, list_d **l_b, data data_t)
{
    list_d *new_a = *l_a;
    list_d *new_b = *l_b;
    create_values(&data_t);
    data_t.list_size = int_list_size(*l_a);

    while (data_t.list_size != 0) {
        data_t.smallest = get_smallest(l_a, l_b, &data_t);
        while (l_a[0]->value != data_t.smallest) {
            print_algo(&data_t, "ra");
            ra(l_a);
        }
        new_a = *l_a;
        data_t.value = new_a->value;
        pb(l_b, data_t.value, l_a);
        print_algo(&data_t, "pb");
        data_t.list_size--;
    }
    data_t.list_size = int_list_size(*l_b);
    pa_operation(new_b, &data_t, l_a, l_b);
}

int main(int argc, char *argv[])
{
    list_d *l_a = NULL;
    list_d *l_b = NULL;
    data data_t;
    for (int i = 1; i < argc; i++) {
        if ((my_str_isnum(argv[i])) == false)
            return (84);
        int_list_push_back(&l_a, my_getnbr(argv[i]));
    }
    int error = check_list(&l_a, &data_t, argc, argv);
    if (error == 0)
        return (0);
    else if (error == 84)
        return (84);
    if ((check_list_sorted(&l_a, &data_t)) == true) {
        write(1, "\n", 1);
        return (0);
    }
    select_sorter(&l_a, &l_b, data_t);
    write(1, "\n", 1);
    return (0);
}