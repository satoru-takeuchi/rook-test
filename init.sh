#!/bin/bash

kind create cluster --config kind-cluster.yaml
kubectl label node kind-worker tsc=1
kubectl label node kind-worker tsc=2
kubectl label node kind-worker tsc=3
kubectl apply -f sc.yaml
kubectl apply -f testpv.yaml
kubectl apply -f ceph/common.yaml
kubectl apply -f ceph/operator.yaml
