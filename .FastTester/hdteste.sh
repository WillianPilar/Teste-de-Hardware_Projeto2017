#!/bin/bash
esc(){
	escolha=$(for x in $(fdisk -l 2> /dev/null | grep 'Disk /dev' | cut -d" " -f2 | cut -b1-8) ; do
 echo $x' "-"' ; done)
	var=$(dialog --stdout --menu "Escolha uma opção:" 0 0 0 $escolha)

}
veloo(){ 
	esc  
	clear
	echo 
	echo "Teste de velocidade do Hard Disk (HD)" 
	echo 
	hdparm -tT $var 
	read -p "Pressione [enter] para voltar ao menu" 
	voltar1 
}
leitu(){ 
	esc 
	clear
	echo
	echo "Teste de leitura do Hard Disk (HD)"
	echo
	hdparm -t --offset 250 $var
	read -p "Pressione [enter] para voltar ao menu"
	voltar1
}
voltar(){ 
	. /usr/share/takewic/menu.sh 
}i
voltar1(){ 
	. /usr/share/takewic/hdteste.sh 
}
while : ; do
	rep=$(dialog --stdout 			\
	--title 'Teste de Hard Disk (HD)' 	\
	--menu 'Escolha uma das opções:' 	\
	0 0 0 					\
	1 "Teste de velocidade" 		\
	2 "Teste de leitura" 			\
	3 "Voltar ao menu")
	[ $? -ne 0 ] && break
	case $rep in
		1) veloo ;;
		2) leitu ;;
		3) voltar ;;
	esac
done
