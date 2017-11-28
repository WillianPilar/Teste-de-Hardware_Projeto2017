#!/bin/bash
internet(){ clear ; speedtest-cli ; voltar ; }
voltar(){ read -p "Pressione [enter] para voltar ao menu" ; internet.sh ; }
sair(){ exit 0 ; }
menu1(){ . dialog.sh ; }
while : ; do
resposta=$(
dialog --stdout \
--colors \
--title '\Z7Teste de internet' \
--menu '\Z7Escolha uma das opções' \
0 0 10 \
1 "\Z7Teste de velocidade da internet" \
2 "\Z7Voltar ao menu" \
3 "\Z7Sair" \
)

[ $? -ne 0 ] && break

case $resposta in 
	1) internet ;;
	2) menu1    ;;
	3) sair     ;;
esac
done
