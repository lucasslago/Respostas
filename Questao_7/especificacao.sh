#!/bin/bash

#Aluno: Lucas Souza Lago, Matrícula - 117210385.
#Questão 7

#Primeiro vamos criar um Diretório para inserir um .txt com os dados do sistema.
mkdir Sistema
#Entrando no diretório e criando um arquivo de texto.
cd Sistema
> base.txt
echo "ARQUIVO BASE CRIADO" 

#Comando que pega a primeira linha do cpuinfo e cola no arquivo criado. Aqui é preciso usar um sed pois aparece mais de uma linha e só precisamos inserir uma no arquivo. 
cat /proc/cpuinfo | grep "model name" | sed -n '1,1p' > base.txt
#Comando que filtar e insere na proxima linha do base.txt a informação no Ethernet. Usamos ">>" como comando de inserção de informação na proxima linha.
lspci | grep Ethernet | sed -n '1,1p' >> base.txt
#Comando que insere na proxima linha do base.txt a informação encontrada no meminfo.
cat /proc/cpuinfo | grep MemTotal >> base.txt

#Por fim precisamos verificar se em uma proxima execução do script alguma informação no arquivo base.txt irá mudar.

#Variável que possui o comando que vai comparar os caracteres entre o arquivo antigo e o novo, se algo mudar ele irá acusar.
COMPARA=`diff base.txt base.txt | wc -c`

#Fazendo as condições.
if [ $COMPARA = 0 ];then
echo "SEM ALTERACOES"
elif [ $COMPARA > 0 ];then
echo "SISTEMA ALTERADO"
fi

#Não consegui fazer um script que execute mais de uma vez e acuse se houve mudanças no base.txt mas acredito que a ideia do funcionamento seria +- essa.


