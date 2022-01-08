/*
** EPITECH PROJECT, 2020
** my_strcapitalize.c
** File description:
** A program that capitalize a string
*/

int my_char_islower(char c)
{
    if (!(c >= 'a' && c <= 'z'))
        return (0);
    return (1);
}

int my_char_isalpha(char c)
{
    if ((c < 'A' || c > 'Z') && (c < 'a' || c > 'z'))
        return (0);
    return (1);
}

int my_char_isnum(char c)
{
    if (!(c >= '0' && c <= '9'))
        return (0);
    return (1);
}

char *my_strcapitalize(char *str)
{
    for (int i = 0; str[i] != '\0'; i++) {
        if (!my_char_isalpha(str[i - 1]) && my_char_islower
        (str[i])) {
                str[i] = str[i] - 32;
        } else if (my_char_isalpha(str[i]) &&
            !my_char_islower(str[i])) {
                str[i] = str[i] + 32;
            }
    }
    return str;
}