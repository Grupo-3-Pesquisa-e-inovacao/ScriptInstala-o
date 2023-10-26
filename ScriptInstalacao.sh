#!/bin/bash

echo "Olá, seja bem vindo ao script de instalação Safe Monitor"

echo "Vamos dar início ao processo, relaxe e aguarde o término das configurações"

sleep 5

java -version

if [$? = 0]
	then echo "Você já possui o java instalado"
             echo "Vamos instalar e executar o arquivo Jar, responsável por realizar o monitoramento"
	
	else echo "Java ainda não instalado, aguarde a instalação"
	sudo apt install openjdk-17-jre -y
	sleep 3 
	echo "Java Instalado!"
fi 

cd InstalacaoArquivoJar
if [$? = 0]
	then echo "O arquivo .jar já está instalado!"
		 git pull
	     echo "Executando"
		cd API_Monitoramento_Java
		cd safe-monitor
		cd out
		cd artifacts
		cd safe_monitor_jar
            java -jar safe-monitor.jar
	else "Vamos instalar o arquivo jar, aguarde enquanto o processo é realizado!"
        mkdir InstalacaoArquivoJar
		cd InstalacaoArquivoJar
		git clone https://github.com/Grupo-3-Pesquisa-e-inovacao/API_Monitoramento_Java.git 
        cd API_Monitoramento_Java
		cd safe-monitor
		cd out
		cd artifacts
		cd safe_monitor
		java -jar safe-monitor.jar
fi

sleep 150

