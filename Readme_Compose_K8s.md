docker build -t ghcr.io/r-reder-htl/helloworld-backend:latest --file ./src/main/docker/Dockerfile .
docker push ghcr.io/r-reder-htl/helloworld-backend


---
minikube start
minikube dashboard

kubectl apply -f ./postgres.yaml
watch kubectl get pods
kubectl get deployment
kubectl port-forward services/postgres 5432:5432
kubectl describe pod a...

kubectl port-forward services/appsrv 8080:8080

---
testj01-testj15
Abc12345

Keycloack passwort

admin
password