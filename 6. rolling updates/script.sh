kubectl apply -f hero-deploy.json

docker build -t k8sdevrbraga.azurecr.io/api-herois:latest .

az acr login --name k8sdevrbraga            

docker push k8sdevrbraga.azurecr.io/api-herois:latest     

kubectl apply -f hero-deploy.json --record

kubectl get deploy api-herois-deployment

kubectl rollout history deployment api-herois-deployment

kubectl rollout status deployment api-herois-deployment

kubectl rollout undo deployment api-herois-deployment --to-revision 2
kubectl rollout pause deployment api-herois-deployment
kubectl rollout resume deployment api-herois-deployment
kubectl rollout history deployment api-herois-deployment

kubectl set image deployment api-herois-deployment \
    api-herois=k8sdevrbraga.azurecr.io/api-herois:latest \
    --record

kubectl edit deployment api-herois-deployment --record


kubectl replace -f 6.\ rolling\ updates/hero-deploy.json