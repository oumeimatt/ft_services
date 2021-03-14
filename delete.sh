kubectl delete deployment.apps/nginx
kubectl delete deployment.apps/phpmyadmin
kubectl delete deployment.apps/wordpress
kubectl delete deployment.apps/mysql
kubectl delete deployment.apps/influxdb
kubectl delete deployment.apps/grafana
kubectl delete deployment.apps/ftps
kubectl delete deployment.apps/metallb


docker rmi -f nginx
docker rmi -f wordpress
docker rmi -f mysql
docker rmi -f phpmyadmin
docker rmi -f influxdb
docker rmi -f grafana
docker rmi -f ftps

docker rm -vf $(docker ps -a -q)
docker rmi -f $(docker images -a -q)

