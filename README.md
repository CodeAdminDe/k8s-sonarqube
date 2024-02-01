# rateme-netxgen-ingress
[![Quality Gate Status](http://sonar.rateme-nextgen.com/api/project_badges/measure?project=rateme-nextgen&metric=alert_status)](http://sonar.rateme-nextgen.com/dashboard?id=rateme-nextgen)

[http://sonar.rateme-nextgen.com](http://sonar.rateme-nextgen.com)

Our sonarqube instance running on k8s.

Secrets are stored in Github and are set via workflow.


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