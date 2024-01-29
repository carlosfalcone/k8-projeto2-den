#!/bin/bash
echo "Deletando os servicos..."
kubectl delete service mysql-connection
kubectl delete service app
kubectl get services


echo "Deletando o deployment..."
kubectl delete deploy mysql
kubectl delete deploy app
kubectl get deploy
kubectl get pods