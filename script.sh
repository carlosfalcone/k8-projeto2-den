#!/bin/bash

echo "O arquivo load-balancer deve ser executado previamente na maquina virtual para poder copiar e colar o ip externo no arquivo js.js"

kubectl apply -f secrets.yml --record
kubectl apply -f mysql-deployment.yml --record
# kubectl apply -f mysql-init-script.yml --record #testar se precisa ou nao rodar esta linha de comando

kubectl apply -f app-deployment.yml --record


