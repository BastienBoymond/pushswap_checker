/*
** EPITECH PROJECT, 2020
** Untitled (Workspace)
** File description:
** printf
*/

#define ARRAY_SIZE 12
#define HASH_SIZE 3

#include <stdarg.h>
#include <stdio.h>
#include <stdio.h>

int my_printf(char *str, ...);
int my_atoi(char *str);
int my_ischar(char c);
int createspaces(char *str, int i, va_list ap);
int definechar(char *str);

void my_putcharf(char c);
void my_isachar(va_list ap);

int my_put_nbrf(long long int nb);
void is_anumber(va_list ap);

int my_putstrf(char const *str);
void is_astring(va_list ap);

void convert_binary(long long int nb);
void is_binary(va_list ap);

void is_octal(va_list ap);
void convert_octal(long int nb);

void convert_unsigned(unsigned int nb);

void is_apourcent(va_list ap);
void put_pourcentage(int c);

void is_unsigned(va_list ap);

void convert_hexau(long int nb);
void convert_hexal(long int nb);

void is_hexal(va_list ap);
void is_hexau(va_list ap);

void print_pointer(long long int nb);
void convert_p(va_list ap);

void print_nonprintable(char *str);
void nonprintable(va_list ap);

int my_strlen(char const *str);
char *my_strncpy(char *dest , char const *src , int n);


void is_octalhash(va_list ap);
void octalhash(long int nb);

void is_hexauhash(va_list ap);
void hexauhash(long int nb);

void is_hexalhash(va_list ap);
void hexalhash(long int nb);
int intlen(int nbsize);
typedef struct array_s
{
    char c;
    void (*ptr)(va_list);
    int flaglen;
} array_t;

static array_t  __attribute__((unused)) func[] =
    {
        {'d', is_anumber, 1},
        {'%', is_apourcent, 1},
        {'i', is_anumber, 1},
        {'s', is_astring, 1},
        {'c', my_isachar, 1},
        {'b', is_binary, 1},
        {'o', is_octal, 1 },
        {'u', is_unsigned, 1},
        {'x', is_hexal, 1},
        {'X', is_hexau, 1},
        {'S', nonprintable, 1},
        {'p', convert_p, 1}};

static array_t  __attribute__((unused)) hash[] =
    {
        {'o', is_octalhash, 1},
        {'x', is_hexalhash, 1},
        {'X', is_hexauhash, 1}};