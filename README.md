# k8s-sonarqube

* k8s-sonarqube deployment. Codebase forked from https://github.com/GoldJns/rateme-nextgen-sonarqube


## Deployment

Via script:
```sh
./deployAll.sh
```

```sh
kubectl create -f sonar-namespace.yaml
```

Add persistent volume claims
```sh
kubectl apply -f postgres-pvc.yaml
kubectl apply -f sonar-pvc.yaml
```

Deployments and services
```sh
kubectl apply -f postgres-app.yaml
kubectl apply -f sonar-app.yaml
```

Setup ingress
```sh
kubectl apply -f sonar-ingress.yaml
```
