/*
** EPITECH PROJECT, 2020
** my_strncmp.c
** File description:
** A program that compare two strings with n
*/

int my_strlen(char const *str);

int min_string2(char const *s1, char const *s2);

int count_chars2(char s1, char s2, char const *ss1, char const *ss2);

int my_strncmp(char const *s1, char const *s2, int n)
{
    for (int i = 0; i < n; i++) {
        if (s1[i] != s2[i]) {
            return count_chars2(s1[i], s2[i], s1, s2);
        }
    }
    return (0);
}

int count_chars2(char s1, char s2, char const *ss1, char const *ss2)
{
    int a = 0;
    int b = 0;

    if (min_string2(ss1, ss2) == 1) {
        a = s1 * -1;
        b = s2;
    } else {
        a = s1;
        b = s2 * -1;
    }
    return b - a;
}

int min_string2(char const *s1, char const *s2)
{
    if (my_strlen(s1) > my_strlen(s2)) {
        return (1);
    } else {
        return (0);
    }
}
