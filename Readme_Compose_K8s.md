docker build -t ghcr.io/r-reder-htl/helloworld-backend:latest --file ./src/main/docker/Dockerfile .
docker push ghcr.io/r-reder-htl/helloworld-backend


---

# mit minikube arbeiten
minikube start
minikube dashboard

kubectl apply -f ./postgres.yaml
# löschen nach apply mit delete
kubectl delete -f ./k8s/ingress4StandardWeb.yaml 
# ...
watch kubectl get pods
kubectl get deployment
kubectl port-forward services/postgres 5432:5432
kubectl describe pod a...
kubectl describe ingress
kubectl get service

kubectl port-forward services/appsrv 8080:8080
# minikube zurück
minikube delete
minikube stop

kubectl config use-context leocloud
kubectl config use-context minikube


# um auf die leocloud zu wechseln
rm ~/.kube/config
leocloud auth login
watch kubectl get pods
kubectl apply -f ./postgres.yaml
kubectl apply -f ./app...
---
testj01-testj15
Abc12345

Keycloack passwort

admin
password