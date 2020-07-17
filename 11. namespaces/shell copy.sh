kubectl get namespaces
kubectl create namespace production
kubectl create namespace development

kubectl --namespace=development run nginx --image nginx
kubectl get pods --namespace=development

kubectl config set-context $(kubectl config current-context) --namespace development

kubectl create -f namespace.dev.json -f namespace.prod.json

