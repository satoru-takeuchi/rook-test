kind create cluster --config kind-cluster.yaml
kubectl apply -f sc.yaml
kubectl apply -f testpv.yaml
cd ceph
kubectl apply -f common.yaml
kubectl apply -f operator.yaml
kubectl apply -f cluster-on-pvc.yaml
