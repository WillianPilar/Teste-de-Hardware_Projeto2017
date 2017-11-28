#!/bin/bash
voltar(){ read -p "Pressione [enter] para voltar ao menu" ; . testememoria.sh ; }
voltar1(){ . dialog.sh ; }
teste(){ clear ; echo ; echo "Pressione CTRL+C para parar o teste de memória" ; echo ; memtester 100 1 ; voltar ;}
sair(){ exit 0 ;}
while : ; do

OPZAO=$(
dialog --stdout \
--colors \
--title '\Z7Teste de Memoria Ram' \
--menu '\Z7Escolha uma das opções' \
0 0 0 \
1 "\Z7Teste de memória RAM" \
2 "\Z7Menu anterior" \
3 "\Z7Sair")

[ $? -ne 0 ] && break

case $OPZAO in
	1) teste   ;;
	2) voltar1 ;;
	3) sair    ;;
esac

done
