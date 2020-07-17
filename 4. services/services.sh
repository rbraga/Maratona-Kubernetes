kubectl expose -f 3.\ replicasets/herois-rc.json \
    --port 4000 \
    --type LoadBalancer

kubectl get pods 

kubectl expose pod mongodb \
    --port 27017 \
    --type NodePort \
    --name mongo-svc