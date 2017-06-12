#!/bin/bash

echo "trabalho2 aluno:pablo bitencourt
[1] listar conteudo da pasta atual
[2] ver conteudo de um arquivo
[3] testar se url está no ar
[0] sair
digite a opção:"
read opcao

if ($opcao = 1); then
	for j in $( ls )
	do
		echo "$j"
	done
elif ($opcao = 2); then
	echo "qual o nome do arquivo?"
	read arquivo
	if [ -e $arquivo ]; then
		cat $arquivo
	else
		echo "arquivo não existe"
	fi
elif ($opcao = 3); then
	echo " digite o ip"
	if [ ! -z $numIp ]; then
		ping -c 1 $numIp
		if [ $? -eq 0 ]; then
			echo "Maquina esta retornando o Ip"
		else
			echo "Maquina não esta pingado"
		fi
	else
		echo "Ip vazio"
	fi

elif ($opcao = 0); then
	exit

else
	echo "opção invalida"
fi
