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

nb=1

make_test() {
    echo "${2}" | ./pushswap_checker "${3}" "${4}" "${5}" > /dev/null
        if [ "$?" = "${1}" ]
        then
            echo -ne "${nb} ${VERT}OK${N}"
            echo -ne " || ${2} || ${3} ${4} ${5} \n"
        else
            echo -ne "${nb} ${RED}KO${N}"
            echo -ne " || ${2} || ${3} ${4} ${5} = WRONG\n"
        fi
        let 'nb=nb+1'
}

make_test "0" "pa pa pa pa pa" "3" "5" "0"
make_test "84" "pa pa pa pa pa" "1" "w" "3"
make_test "0" "pa pa pa pa pa" "3" "6" "3"
make_test "0" "pa pa pa pa pa" "3" "7" "0"
make_test "0" "pa pa pa pa pa" "10" "8" "2"
make_test "0" "pa pa pa pa pa" "3" "5" "0"
make_test "0" "pa pa pa pa pa" "5" "3" "2"
make_test "84" "pa pa pa pa pa" "5" "d" "2"
make_test "84" "pa pa pa pa pa" "5" "d" "q"
make_test "0" "pa pa pa pa pa" "5" "2" "(-1)"
