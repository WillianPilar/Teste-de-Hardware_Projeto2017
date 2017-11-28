#!/bin/bash
velo(){ clear ; echo ; echo "Teste de velocidade do Hard Disk (HD)" ; echo ; hdparm -tT /dev/sda ; voltar1 ; }
leitura(){ clear ; echo ; echo "Teste de leitura do Hard Disk (HD)" ; echo ; hdparm -t --offset 250 /dev/sda1 ; voltar1 ; }
voltar(){ /usr/share/testaralho/dialog.sh ; }
voltar1(){ /usr/share/testaralho/hdteste.sh ; }
while : ; do
resposta=$(
dialog --stdout \
--colors \
--title '\Z7Teste de Hard Disco(HD)' \
--menu '\Z7Escolha uma das opções' \
0 0 10 \
1 "\Z7Teste de velocidade" \
2 "\Z7Teste de leitura" \
3 "\Z7Voltar ao menu" \
4 "\Z7Sair" \
)

[ $? -ne 0 ] && break

case $resposta in
	1) velo ;;
	2) leitura ;;
	3) voltar ;;
esac

done
