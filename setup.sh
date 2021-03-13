minikube delete 
minikube start

eval $(minikube docker-env)
docker rm -vf $(docker ps -a -q)
docker rmi -f $(docker images -a -q)


docker build -t nginx ./srcs/nginx
docker build -t wordpress ./srcs/wordpress
docker build -t phpmyadmin ./srcs/phpmyadmin
docker build -t mysql ./srcs/mysql
docker build -t influxdb ./srcs/influxdb
docker build -t grafana ./srcs/grafana
docker build -t ftps ./srcs/ftps


kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f ./srcs/nginx/srcs/nginx.yaml
kubectl apply -f ./srcs/wordpress/srcs/wordpress.yaml
kubectl apply -f ./srcs/phpmyadmin/srcs/phpmyadmin.yaml
kubectl apply -f ./srcs/mysql/srcs/mysql.yaml
kubectl apply -f ./srcs/influxdb/srcs/influxdb.yaml
kubectl apply -f ./srcs/grafana/srcs/grafana.yaml
kubectl apply -f ./srcs/ftps/srcs/ftps.yaml
kubectl apply -f ./srcs/metallb.yaml

minikube dashboard &