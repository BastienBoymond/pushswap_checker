##
## EPITECH PROJECT, 2022
## makefile
## File description:
## haskell file compiler
##

RM    =    rm -f

CC    =    ghc

TARGET    =    pushswap_checker

TARGET_TEST = units_tests

SRC1    =	Pushswap.hs    \
			Actions.hs		\
			Outils.hs		\
			Findactions.hs		\

SRC_TEST	=	tests/tests.hs \

all:	$(TARGET)

$(TARGET):
	$(CC) -main-is Pushswap $(SRC1) -o $(TARGET)

clean:
	$(RM) $(TARGET)
	$(RM) $(TARGET_TEST)
	$(RM) *.o
	$(RM) *.hi
	$(RM) ./tests/*.o
	$(RM) ./tests/*.hi
	$(RM) ./tests/*~

fclean:	clean
	$(RM) $(TARGET)

tests_run:
	$(CC) -main-is Tests $(SRC_TEST) -o ${TARGET_TEST}
	./units_tests

re:	fclean all