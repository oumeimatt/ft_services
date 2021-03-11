# minikube delete 
# minikube start

eval $(minikube docker-env)

docker build -t nginx ./srcs/nginx
docker build -t wordpress ./srcs/wordpress
docker build -t phpmyadmin ./srcs/phpmyadmin
docker build -t mysql ./srcs/mysql
docker build -t influxdb ./srcs/influxdb
docker build -t grafana ./srcs/grafana
docker build -t ftps ./srcs/ftps


kubectl apply -f ./srcs/nginx/srcs/nginx.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml
kubectl apply -f ./srcs/phpmyadmin/srcs/phpmyadmin.yaml
kubectl apply -f ./srcs/mysql/srcs/mysql.yaml
kubectl apply -f ./srcs/influxdb/srcs/influxdb.yaml
kubectl apply -f ./srcs/grafana/srcs/grafana.yaml
kubectl apply -f ./srcs/ftps/srcs/ftps.yaml

minikube dashboard