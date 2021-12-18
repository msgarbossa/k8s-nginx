#!/bin/bash

kubectl delete -f ../nginx-ingress.yml
kubectl delete -f ../nginx-service.yml
kubectl delete -f ../nginx-deployment.yml
kubectl delete -f ../nginx-configmap.yml
