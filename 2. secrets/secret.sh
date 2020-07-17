kubectl create secret docker-registry acr-credentials \
    --docker-server=k8sdevrbraga.azurecr.io \
    --docker-username=k8sdevrbraga \
    --docker-password=YOUR_PASSWORD \
    --docker-email=rafabraga85@gmail.com

az acr credential show -n k8sdevrbraga --query "passwords[0].value" 
az acr credential show -n k8sdevrbraga --query "username"
