cd metrics-server/deploy/1.8+
for arquivo in `ls`
do
    echo "creating.. $arquivo"
    kubectl create -f $arquivo
done
cd ....


kubectl autoscale deployment api-herois --cpu-percent 10 --max 10 --min 5
HOST=$(kubectl get svc | grep api-herois | awk '{print $4}')
siege -c200 t30s http://$HOST:4000/heroes