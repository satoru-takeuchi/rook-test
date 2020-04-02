#!/bin/bash

kubectl delete -f ceph/cluster-on-pvc.yaml
kubectl delete -f ceph/operator.yaml
kubectl delete -f ceph/common.yaml
kubectl delete -f testpv.yaml
kubectl delete -f sc.yaml
kind delete cluster
sudo ./zap-disks.sh
