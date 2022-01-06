##
## EPITECH PROJECT, 2022
## makefile
## File description:
## haskell file compiler
##


RM    =    rm -f

CC    =    ghc

TARGET    =    doop

SRC1    =    DoOp.hs    \

all:	$(TARGET)

$(TARGET):
	$(CC) $(SRC1)  -o $@

clean:
	$(RM) *.o
	$(RM) *.hi
	$(RM) *~
	$(RM) *.gcda
	$(RM) *.gcno

fclean:	clean
	$(RM) $(TARGET)

re:	fclean all