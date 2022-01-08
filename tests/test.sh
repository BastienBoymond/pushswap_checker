#!/bin/bash
##
## EPITECH PROJECT, 2022
## test bash
## File description:
## test
##


N='\033[0;m'
RED='\033[0;31m'
VERT='\033[0;32m'
JAUNE='\033[0;33m'

make -C ./tests/pushswap

nb=1
make_test_list() {
    echo "${1}" | ./pushswap_checker  $@ > /dev/null
        if [ "$?" = 0 ]
        then
            echo -ne "[${nb}] ${VERT}GOOD LIST${N}"
            echo -ne " || ${1} || $@ \n"
        else
            echo -ne "[${nb}] ${RED}BAD LIST${N}"
            echo -ne " || ${1} ||  $@\n"
        fi
        let 'nb=nb+1'
}

nb=1
make_error_case() {
    echo "${2}" | ./pushswap_checker $@ > /dev/null
        if [ "$?" = "${1}" ]
        then
            echo -ne "[${nb}] ${VERT}CHECKED${N}"
            echo -ne " || $@ \n"
        else
            echo -ne "[${nb}] ${RED}Not CHECKED${N}"
            echo -ne " || $@\n"
        fi
        let 'nb=nb+1'
}

nb=1
good_test() {
    OUTPUT=$(./tests/pushswap/push_swap  $@)
    echo "${OUTPUT}" | ./pushswap_checker $@ > /dev/null
    if [ "$?" = 0 ]
    then
        echo -ne "[${nb}] ${VERT}OK${N}"
        echo " || ${OUTPUT} || $@"
    else
        echo -ne "[${nb}] ${RED}KO${N}"
        echo -ne " || $@\n"
    fi
    let 'nb=nb+1'
}

echo -ne "\n${JAUNE}Test List: ${N}\n\n"

make_test_list  "pa pa pa pa pa" "3" "5" "6"
make_test_list  "pa sa pa sa pa" "3" "6" "3"
make_test_list  "pa pa pa pa pa" "3" "7" "8"
make_test_list  "pa pa pa pa pa" "10" "8" "2"
make_test_list  "pa pa pa pa pa" "3" "5" "1"
make_test_list  "rra pb rra pb pb pa pa pa pa" "5" "9" "2"
make_test_list  "pb rra pb pb pa pa pa pa" "5" "2" "(-1)"

echo -ne "\n${JAUNE}Test Error Case: ${N}\n\n"
nb=1
make_error_case "84" "pa pa pa pa pa" "5" "d" "q"
make_error_case "84" "pa pa pa pa pa" "1" "w" "3"
make_error_case "84" "pa pa pa pa pa" "5" "d" "2"
make_error_case "84" "pa pa pa fu pa" "5" "0" "2"

echo -ne "\n${JAUNE}Test Good Result: ${N}\n\n"
nb=1
good_test "5" "6" "9"
good_test "1" "5" "3"
good_test "5" "3" "2" "1" "5" "3" "1" "5" "3"
good_test "5" "3" "2"
good_test "5" "3" "2"
good_test "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76" "5" "86" "76"
good_test "5" "3" "2" "1" "-5" "3" "1" "5" "-3" "-86" "76" "5" "86" "-76"
