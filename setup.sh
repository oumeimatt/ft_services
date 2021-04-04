

#minikube delete 

#minikube start

#eval $(minikube docker-env)
#docker rm -vf $(docker ps -a -q)
#docker rmi -f $(docker images -a -q)


#docker build -t nginx ./srcs/nginx
docker build -t wordpress ./srcs/wordpress
docker build -t phpmyadmin ./srcs/phpmyadmin
docker build -t mysql ./srcs/mysql
docker build -t influxdb ./srcs/influxdb
docker build -t grafana ./srcs/grafana
docker build -t ftps ./srcs/ftps


kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f ./srcs/yaml_files/nginx.yaml
kubectl apply -f ./srcs/yaml_files/wordpress.yaml
kubectl apply -f ./srcs/yaml_files/phpmyadmin.yaml
kubectl apply -f ./srcs/yaml_files/mysql.yaml
kubectl apply -f ./srcs/yaml_files/influxdb.yaml
kubectl apply -f ./srcs/yaml_files/grafana.yaml
kubectl apply -f ./srcs/yaml_files/ftps.yaml
kubectl apply -f ./srcs/yaml_files/metallb.yaml

minikube dashboard &

#kubectl exec deploy/nginx -- pkill nginx