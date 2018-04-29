#!/bin/bash

#Aluno: Lucas Souza Lago, Matrícula - 117210385.
#Questão 4


read -p "Entre com a senha: " senha

# Verificação de senha segura: o primeiro e segundo bloco verificam se a senha possui
# ao menos um caractere maiusculo, o terceiro bloco verifica se a senha possui
# ao menos 8 caracteres e o terceiro bloco verifica se a senha possui letras e números.
if [ $senha != ${senha,,} ] && [ $senha != ${senha^^} ] && [ ${#senha} -ge 8 ] && [[ $senha != ?(+|-)+([0-9]) ]];then
echo "Senha segura! :)"

#Verifica se a senha possui menos de 8 caracteres e apenas números.
elif [ ${#senha} -lt 8 ] && [[ $senha = ?(+|-)+([0-9]) ]];then
echo "Senha insegura! possui menos de 8 caracteres e apenas números."

#Verifica se a senha possui menos de 8 caracteres e apenas letras minúsculas.
elif [ ${#senha} -lt 8 ] && [ $senha = ${senha,,} ];then
echo "Senha insegura! possui menos de 8 caracteres e apenas letras minúsculas."

#Verifica se a senha possui menos de 8 caracteres.
elif [ ${#senha} -lt 8 ];then
echo "Senha insegura! possui menos de 8 caracteres"

#Verifica se a senha possui apenas números.
elif [[ $senha = ?(+|-)+([0-9]) ]];then
echo "Senha insegura! Possui apenas numeros"

#Verifica se possui apenas letras minúsculas.
elif [ $senha = ${senha,,} ];then
echo "Senha insegura! possui apenas caracteres minúsculos."

#Verifica se possui apenas letras maiúsculas.
elif [ $senha = ${senha^^} ];then
echo "Senha insegura! possui apenas caracteres maiúsculos."
fi
