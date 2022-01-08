/*
** EPITECH PROJECT, 2020
** B-PSU-100-MPL-1-1-myls-diogo.faria-martins
** File description:
** pushswap.h
*/

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <errno.h>
#include <sys/types.h>
#include <dirent.h>
#include <sys/types.h>
#include <pwd.h>
#include <stdbool.h>

typedef struct list
{
    int value;
    struct list *next;
} list_d;

typedef struct data_s
{
    bool wrote;
    bool rotate;
    int smallest;
    int value;
    int index;
    int list_size;
} data;

void int_list_push_front(list_d **list, int value);

void int_list_push_front(list_d **list, int value);

void pb(list_d **l_b, int value, list_d **l_a);

size_t int_list_size(list_d *list);

int int_list_pop_front(list_d **list);

int get_smallest(list_d **l_a, list_d **l_b, data *data_t);

int int_list_pop_back(list_d **list);

void printList(list_d *list);

void int_list_push_back(list_d **list, int value);

int find_smallest_nb(list_d **l_a, list_d **l_b, data *data);

void pa(list_d **l_b, int value, list_d **l_a);

void ra(list_d **l_a);

void select_sorter(list_d **l_a, list_d **l_b, data data_t);

int print_algo(data *data, char *operations);

bool check_list_sorted(list_d **l_a, data *data_t);

int check_list(list_d **l_a, data *data_t, int argc, char **argv);

void create_values(data *data);

void pa_operation(list_d *new_l_b, data *data, list_d **l_a, list_d **l_b);