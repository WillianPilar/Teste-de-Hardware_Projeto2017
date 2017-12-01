#!/bin/bash
voltar(){ read -p "Pressione [enter] para voltar ao menu" ; /usr/share/takewic/testememoria.sh ; }
teste(){ /usr/share/takewic/escolha.sh ; }
while : ; do

OPZAO=$(
dialog --stdout \
--title 'Teste de Memória Ram' \
--menu 'Escolha uma das opções:' \
0 0 0 \
1 "Teste de memória RAM" \
2 "Voltar ao menu" \
)

[ $? -ne 0 ] && break

case $OPZAO in
	1) teste   ;;
	2) exit 0  ;;
esac

done
