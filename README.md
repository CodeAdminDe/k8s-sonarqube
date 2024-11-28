# k8s-sonarqube

* k8s-sonarqube deployment. Codebase forked from https://github.com/GoldJns/rateme-nextgen-sonarqube


## Deployment

Via kustomize:
```sh
kubectl apply -k .
```

## Notes

> If you want to use this repo, you must at least:
> * Add secure secrets via overlays into your own env!!
> * Change the admin password at first boot.
> * Check and create NetworkPolies as desired.