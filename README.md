# EFK-TEST


### Instructions

```
kubectl apply -f es-statefulset.yaml
kubectl apply -f es-statefulset-svc.yaml

kubectl apply -f fluentd-es-configmap.yaml
kubectl apply -f fluentd-es-ds.yaml
kubectl apply -f kibana-svc.yaml
kubectl apply -f kibana-deploy.yaml
```