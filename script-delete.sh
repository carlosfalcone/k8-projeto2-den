#!/bin/bash
echo "=> Deletando os servicos..."
kubectl delete service mysql-connection
# kubectl delete service app #o loadbalancer nao pode ser removido, pois ele é previamente carregado para poder copiar o ip e colar no arquivo js.js

echo "=> Conferindo se os services foram removidos"
kubectl get services

echo "=> Deletando os deployments..."
kubectl delete deploy mysql
kubectl delete deploy app

echo "=> Conferindo se os deployments foram removidos"
kubectl get deploy

echo "=> Conferindo se os pods foram removidos"
kubectl get pods