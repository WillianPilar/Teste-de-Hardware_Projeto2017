#!/bin/bash
internet(){ clear ; speedtest-cli ; voltar ; }
voltar(){ read -p "Pressione [enter] para voltar ao menu" ; /usr/share/testaralho/internet.sh ; }
menu1(){ /usr/share/testaralho/dialog.sh ; }
while : ; do
resposta=$(
dialog --stdout \
--colors \
--title '\Z7Teste de internet' \
--menu '\Z7Escolha uma das opções' \
0 0 10 \
1 "\Z7Teste de velocidade da internet" \
2 "\Z7Voltar ao menu" \
)

[ $? -ne 0 ] && break

case $resposta in 
	1) internet ;;
	2) menu1    ;;
esac
done
