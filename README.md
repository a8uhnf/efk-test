# EFK-TEST


### Instructions

Create namespace `logging`

```
kubectl create ns logging
```

```
kubectl apply -f es-statefulset.yaml
kubectl apply -f es-statefulset-svc.yaml

kubectl apply -f fluentd-es-configmap.yaml
kubectl apply -f fluentd-es-ds.yaml
kubectl apply -f kibana-svc.yaml
kubectl apply -f kibana-deploy.yaml
```