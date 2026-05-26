#!/bin/bash

kubectl apply -f .infrastructure/namespace.yml
kubectl create namespace mysql

kubectl apply -f .infrastructure/mysql-secret.yml
kubectl apply -f .infrastructure/configMapSQL.yml

kubectl apply -f .infrastructure/statefulSet.yml

kubectl rollout status statefulset/mysql -n mysql

kubectl apply -f .infrastructure/secret.yml
kubectl apply -f .infrastructure/configMapSQL.yml

kubectl apply -f .infrastructure/pvc.yml
kubectl apply -f .infrastructure/deployment.yml
kubectl apply -f .infrastructure/clusterIp.yml
kubectl apply -f .infrastructure/nodeport.yml
kubectl apply -f .infrastructure/hpa.yml
