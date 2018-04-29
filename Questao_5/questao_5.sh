#!/bin/bash

#Aluno: Lucas Souza Lago, Matrícula - 117210385.
#Questão 5


echo "====== TOP ====="
echo "TOP conexões UDP:"
echo #Não encontrei uma forma de filtrar a conexão de maior frequência.
echo "TOP conexões TCP:" 
echo #Não encontrei uma forma de filtrar a conexão de maior frequência.

# Variáveis que possuem os comandos que filtram e contam os estados das conexões TCP.
LIS=`lsof | grep TCP | grep -c LISTEN`
EST=`lsof | grep TCP | grep -c ESTABLISHED`
SYN=`lsof | grep TCP | grep -c SYN_SENT`
CLO=`lsof | grep TCP | grep -c CLOSE_WAIT`

echo "====== TCP ====="
echo
echo "LISTEN:" $LIS
echo "ESTABLISHED:" $EST
echo "SYN_SENT:" $SYN
echo "CLOSE_WAIT:" $CLO


