#!/bin/bash
minikube delete
minikube start
eval $(minikube docker-env)
docker build -t nginx  srcs/nginx
kubectl apply -f srcs/yaml_files/nginx.yaml


docker build -t wordpress  srcs/wordpress
kubectl apply -f srcs/yaml_files/wordpress.yaml


docker build -t phpmyadmin  srcs/phpmyadmin
kubectl apply -f srcs/yaml_files/phpmyadmin.yaml

docker build -t mysql srcs/mysql
kubectl apply -f srcs/yaml_files/mysql.yaml

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f ./srcs/yaml_files/metallb.yaml


kubectl exec deploy/nginx -- pkill nginx