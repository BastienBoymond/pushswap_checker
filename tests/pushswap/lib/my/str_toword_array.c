/*
** EPITECH PROJECT, 2020
** B-CPE-110-MPL-1-1-pushswap-diogo.faria-martins
** File description:
** str_toword_array
*/

#include "my.h"
#include <stdio.h>
#include <stdlib.h>

int get_nb_words(const char *str, const char *separator)
{
    int counter = 0;

    for (int i = 0; str[i] != '\0'; i++) {
        for (int j = 0; separator[j] != '\0'; j++) {
            counter = (str[i] == separator[j]) ? counter + 1 : counter;
        }
    }
    return (counter);
}

char **my_str_to_word_array(char *str, char *separator)
{
    int nbr = get_nb_words(str, separator);
    char **wordarray = malloc(sizeof(char *) * (nbr + 1));
    int array = 0;
    int y = 0;
    int s = 0;
    int index = 0;
    int sindex = 0;

    for ( ; str[index] != '\0'; index++, s++) {
        for ( ; separator[sindex] != str[index]; sindex++) {
            y++;
            if (str[index] == separator[sindex]) {
                wordarray[array] = malloc(sizeof(char) * (y + 1));
                my_strncpy(wordarray[array], str, y);
            }
        }
    y = 0;
    array++;
    }
    return (wordarray);
}