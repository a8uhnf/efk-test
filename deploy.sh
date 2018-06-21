#!/bin/bash

PHASE=$(kubectl get ns logging -o json | jq '.status.phase')

if [[ "$PHASE" != *"Active"* ]]; then
    echo "Creating namespace logging..."
    kubectl create ns logging
fi

kubectl apply -f es-statefulset.yaml
kubectl rollout status statefulsets/elasticsearch-logging -n logging
kubectl apply -f es-statefulset-svc.yaml

kubectl apply -f fluentd-es-configmap.yaml
kubectl apply -f fluentd-es-ds.yaml
kubectl rollout status daemonsets/fluentd-es-v2.0.4 -n logging

kubectl apply -f kibana-svc.yaml
kubectl apply -f kibana-deploy.yaml
kubectl rollout status deployments/kibana-logging -n logging