##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Compile mylibrary
##

CC			= gcc
CFLAGS		= -W -Wall -Wextra

SRC			=	./printf/my_put_nbrf.c	\
				./printf/my_putcharf.c	\
				./printf/my_putstrf.c	\
				./printf/my_printf.c	\
				./printf/convert_binary.c	\
				./printf/non_printable.c	\
				./printf/printf_func2.c	\
				./printf/printf_func.c	\
				./printf/printf_func3.c	\
				./printf/modifiers.c	\
				./printf/my_strlen.c	\
				./printf/my_strncpy.c	\
				./printf/convert_hash.c	\
				./printf/my_atoi.c	\
				./printf/printf_spaces.c	\
				my_is_prime.c	\
				my_find_prime_sup.c	\
				my_getnbr.c	\
				my_isneg.c	\
				my_put_nbr.c	\
				my_putchar.c	\
				my_putstr.c	\
				my_revstr.c	\
				my_showmem.c	\
				my_showstr.c	\
				my_sort_int_array.c	\
				my_str_isalpha.c	\
				my_str_islower.c	\
				my_str_isnum.c	\
				my_str_isprintable.c	\
				my_str_isupper.c	\
				my_strcapitalize.c	\
				my_strcat.c	\
				my_strcmp.c	\
				my_strcpy.c	\
				my_strlen.c	\
				my_strlowcase.c	\
				my_strncat.c	\
				my_strncmp.c	\
				my_strncpy.c	\
				my_strstr.c	\
				my_strupcase.c	\
				my_printf.c	\
				my_charisnum.c	\
				str_toword_array.c	\
				my_swap.c \
				my_compute_power_rec.c	\
				my_compute_square_root.c	\

OBJ			=	$(SRC:.c=.o)

LIB			= libmy.a

all:	$(LIB)

$(LIB):		$(OBJ)
			ar rc libmy.a $(OBJ)
			cp libmy.a ../
			cp my.h ../../include
clean:

			$(RM) $(OBJ)
fclean:	clean
			$(RM) $(LIB)
re:	fclean all