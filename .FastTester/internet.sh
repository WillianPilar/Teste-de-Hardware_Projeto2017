#!/bin/bash
internet(){ clear ; speedtest-cli ; voltar ; }
voltar(){ . /usr/share/takewic/internet.sh ; }
while : ; do
resposta=$(
dialog --stdout \
--title 'Teste de velocidade da internet' \
--menu 'Escolha uma das opções:' \
0 0 10 \
1 "Teste de velocidade da internet" \
2 "Voltar ao menu" \
)

[ $? -ne 0 ] && break

case $resposta in 
	1) internet ;;
	2) voltar   ;;
esac
done
