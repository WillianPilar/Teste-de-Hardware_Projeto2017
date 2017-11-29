#!/bin/bash
voltar(){ read -p "Pressione [enter] para voltar ao menu" ; /usr/share/testaralho/testememoria.sh ; }
teste(){ /usr/share/testaralho/escolha.sh ; }
while : ; do

OPZAO=$(
dialog --stdout \
--colors \
--title '\Z7Teste de Memoria Ram' \
--menu '\Z7Escolha uma das opções' \
0 0 0 \
1 "\Z7Teste de memória RAM" \
2 "\Z7Menu anterior" \
)

[ $? -ne 0 ] && break

case $OPZAO in
	1) teste   ;;
	2) exit 0  ;;
esac

done
