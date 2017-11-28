#!/bin/bash
voltar1(){ read -p "Pressione [enter] para ir ao menu de diagnostico" ; diagnostico.sh ; }
usb(){ clear ; echo "Lista dos dispositivos USB" ; lsusb ;  voltar1 ; }
pci(){ clear ; echo "Lista dos dispositivos PCI" ; lspci ; voltar1 ; }
cpu(){ clear ; echo "Informações sobre o processador" ; head 19 /proc/cpuinfo ; voltar1 ; }
ram(){ clear ; echo "Informações sobre memoria RAM" ; free -m ; echo ; voltar1 ;}
hd(){ clear ; echo "Informações sobre o Hard Disk (HD)" ; df -h ; voltar1 ;}
placa(){ clear ; echo "Informações sobre a placa mãe" ; lshw -class system ; voltar1 ; }
voltar(){ /usr/share/testaralho/dialog.sh ; }
while : ; do

# Mostra o menu na tela, com as ações disponíveis
resposta=$(
dialog --stdout \
--colors \
--title '\Z7Diagnostico de Hardware' \
--menu '\Z7Escolha uma das opções' \
0 0 10 \
1 '\Z7Dispositivos USB' \
2 '\Z7Dispositivos PCI' \
3 '\Z7informações da CPU' \
4 '\Z7Informações sobre a Memoria Ram' \
5 '\Z7informações sobre o Hard Disk(HD)' \
6 '\Z7Informações sobre a placa-mãe' \
7 '\Z7Voltar ao menu' \
8 '\Z7Sair' )

# Ela apertou CANCELAR ou ESC, então vamos sair...
[ $? -ne 0 ] && break

# De acordo com a opção escolhida, dispara programas

case $resposta in
	1) usb    ;;
	2) pci    ;;
	3) cpu    ;;
	4) ram    ;;
	5) hd     ;;
	6) placa  ;;
	7) voltar ;;
esac

done
