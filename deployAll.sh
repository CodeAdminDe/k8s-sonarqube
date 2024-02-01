echo "Deploy sonar stack..."
kubectl create -f sonar-namespace.yaml
kubectl apply -f postgres-pvc.yaml
kubectl apply -f sonar-pvc.yaml
kubectl apply -f postgres-app.yaml
kubectl apply -f sonar-app.yaml
kubectl apply -f sonar-ingress.yaml