#!/bin/bash
diag(){ /usr/share/testaralho/diagnostico.sh ; }
cpu(){ /usr/share/testaralho/cpu.sh ; }
testehd(){ /usr/share/testaralho/hdteste.sh ; }
testeram(){ /usr/share/testaralho/testememoria.sh ; }
inter(){ /usr/share/testaralho/internet.sh ; }
sair(){ exit 0 ; }
menu(){
clear
echo
echo "Bem-vindo ao programa de teste!"
echo
echo "1) Diagnostico dos hardwares"
echo "2) Teste de processamento"
echo "3) Teste de Hard Disk"
echo "4) Teste de memoria RAM"
echo "5) Teste de velocidade da internet"
echo "6) Sair"
echo "___________________________________"
echo
read -p "Escolha uma opção: " OPZAO
case $OPZAO in 
	1) diag     ;;
	2) cpu      ;;
	3) testehd  ;;
	4) testeram ;;
	5) inter    ;; 
	6) sair     ;;
esac
}
menu

