##
## EPITECH PROJECT, 2020
## libmy
## File description:
## makefile
##

### COLORS ###
NOC            = \033[0m
BOLD        = \033[1m
UNDERLINE    = \033[4m
BLACK        = \033[1;30m
RED            = \033[1;31m
GREEN        = \033[1;32m
YELLOW        = \033[1;33m
BLUE        = \033[1;34m
VIOLET        = \033[1;35m
CYAN        = \033[1;36m
WHITE        = \033[1;37m

CC			= gcc
CFLAGS		= -O3 -W -Wall -Wextra

SRC			= 	./src/pushswap.c	\
				./src/pushswap_2.c	\
				./src/linked_list.c	\
				./src/linked_lib_two.c	\

TARGET		=	my_ls

COMPIL		=	make -C ./lib/my

LIB			=	libmy.a

all:    $(COMPIL) $(LIB) 

$(COMPIL):
			$(COMPIL)

$(LIB):	
			$(CC) $(SRC) -L./lib/my -lmy -I./include -o push_swap
			echo "$(BLUE)Creating object file -> $(WHITE)$(notdir $@)... $(RED)[Done]"


clean:
		$(RM) $(OBJ)
		$(RM) $(OBJ2)
		$(RM) *~
		$(RM) #*#

fclean:	clean
		$(RM) push_swap
		$(RM) lib/libmy.a
		$(RM) my_ls
		$(RM) *.g*
		$(RM) ./lib/my/*.o
		$(RM) ./src/*.o
		$(RM) libmy.a
		$(RM) ./lib/my/libmy.a
		$(RM) ./lib/libmy.a
		$(RM) ./lib/my/printf/*.o

re:	fclean all