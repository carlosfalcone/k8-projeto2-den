#!/bin/bash
echo "Deletando os servicos..."
kubectl delete service mysql-connection
kubectl delete service app
echo "Conferindo se os services foram removidos"
kubectl get services


echo "Deletando o deployment..."
kubectl delete deploy mysql
kubectl delete deploy app
echo "Conferindo se os deployments foram removidos"
kubectl get deploy
echo "Conferindo se os pods foram removidos"
kubectl get pods