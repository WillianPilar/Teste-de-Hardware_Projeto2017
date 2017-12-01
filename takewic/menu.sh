#!/bin/bash
# Funções para chamar os outros scripts
memoria(){ /usr/share/testaralho/testememoria.sh ; }
cpu(){ /usr/share/testaralho/cpu.sh ; }
hd(){ /usr/share/testaralho/hdteste.sh ; }
diagnostico(){ /usr/share/testaralho/diagnostico.sh ; }
internet(){ /usr/share/testaralho/internet.sh ; }
while : ; do
# Mostra o menu na tela, com as ações disponíveis
resposta=$(
	dialog --stdout \
	--backtitle '\Z7Programa de Teste do STIM' \
	--title '\Z7Programa de Teste' \
	--menu '\Z7Bem-Vindo ao programa de Teste, escolha uma das opções' \
	0 0 0 \
	1 'Teste de Memória Ram' \
	2 'Teste de Hard Disk(HD)' \
	3 'Teste de CPU' \
	4 'Teste de Teste de Velocidade da Internet' \
	5 'Diagnostico de Hardware' \
	6 'Sair'
)

[ $? -ne 0 ] && break

# De acordo com a opção escolhida, dispara programas
case "$resposta" in
	1) memoria ;;
	2) hd ;;
	3) cpu ;;
	4) internet ;;
	5) diagnostico ;;
	6) break 3 ;;
esac


done

# Mensagem final :)
clear
echo "Obrigado por utilizar o nosso sistema de testes."
