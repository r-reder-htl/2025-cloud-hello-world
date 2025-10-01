docker build -t ghcr.io/r-reder-htl/helloworld-backend:latest --file ./src/main/docker/Dockerfile .
docker push ghcr.io/r-reder-htl/helloworld-backend


---
minikube start
minikube dashboard

kubectl apply -f ./postgres.yaml
watch kubectl get pods
kubectl get deployment
kubectl port-forward services/postgres 5432:5432

