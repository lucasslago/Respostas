#!/bin/bash

#Aluno: Lucas Souza Lago, Matrícula - 117210385.
#Questão 6

# Criação de uma variável que possui o comando de busca por diretórios e arquivos que tem permissão de escrita para outros usuários.
BUSCA=`find . -perm -o=w | wc -l`

#Condições que definem a segurança ou não do diretório.
if [ $BUSCA = 0 ];then
echo "DIRETORIO SEGURO"
elif [ $BUSCA > 0 ];then
echo "DIRETORIO INSEGURO"
fi


