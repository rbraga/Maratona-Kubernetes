kubectl create -f 1.\ persistent-volume.json

kubectl create -f 2.\ persistent-volume-claim.json

kubectl create -f 3.\ uploads-app.json

kubectl expose -f 3.\ uploads-app.json --type LoadBalancer --port 3000