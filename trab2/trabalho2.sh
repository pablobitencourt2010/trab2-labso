#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "================================================"
echo "trabalho2 aluno:pablo bitencourt"
echo ""
echo "1)Listar conteúdo da pasta atual"
echo""
echo "2)Ver conteúdo de um arquivo"
echo ""
echo "3)Testar se um Ip está no ar"
echo ""
echo "4)Sair do programa"
echo""
echo "================================================"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in


    1)
      for j in $( ls )
        do
                echo "$j"
        done

      sleep 5

echo "================================================"
;;
    2)
	echo "Qual o nome do arquivo ?"
	read arquivo
	find /home/pablobitencourt -iname $(echo "$arquivo") -exec cat {} \;
	
        sleep 5
echo "================================================"
;;
   3)
      echo "Informe o IP"
	read numIp
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
      sleep 5
echo "================================================"
;;
    4)
       echo "saindo..."
         sleep 2
         clear;
         exit;
echo"==============================================="
;;

*)
        echo "Opção inválida!"
esac
done

}
menu
