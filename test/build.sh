#!/bin/bash

kubectl apply -f ../nginx-configmap.yml
kubectl apply -f ../nginx-deployment.yml
kubectl apply -f ../nginx-service.yml
kubectl apply -f ../nginx-ingress.yml
kubectl scale --replicas=2 deployment/nginx
