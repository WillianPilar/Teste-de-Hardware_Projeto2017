#!/bin/bash
um(){ memtester 1024 1  ;  parar ; }
dois(){ memtester 2048 1 ; parar ; }
quatro(){ memtester 4096 1 ; parar ; }
oito(){ memtester 8192 1 ; parar ; }
dez(){ memtester 15000 ; parar ; }
trinta(){ memtester 30000 ; parar ;}
parar(){ read -p "Pressione [enter] para voltar para o menu 'teste de Memória Ram'" ; exit 0 ; }
voltar(){ exit 0 ; }
while : ; do

# Mostra o menu na tela, com as ações disponíveis
resposta=$(
dialog --stdout \
--colors \
--title '\Z7Teste de Memória Ram' \
--menu '\Z7Escolha a quantidade de memória que deseja testar' \
0 0 10 \
1 '\Z71024MB 1(GB)' \
2 '\Z72048MB 2(GB)' \
3 '\Z74096MB 4(GB)' \
4 '\Z78192MB 8(GB)' \
5 '\Z715200MB 16(GB)' \
6 '\Z730000MB 32(GB)' \
7 '\Z7Voltar' \
)

# Ela apertou CANCELAR ou ESC, então vamos sair...
[ $? -ne 0 ] && break

# De acordo com a opção escolhida, dispara programas
case "$resposta" in
1) um ;;
2) dois ;;
3) quatro ;;
4) oito ;;
5) dez ;;
6) trinta ;;
7) voltar ;;
esac
done
