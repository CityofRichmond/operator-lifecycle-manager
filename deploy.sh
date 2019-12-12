#!/bin/sh
# Install a specific release of OLM
# If this is the first install of OLM on tthe k8s cluster, also run:
# kubectl create -f deploy/upstream/quickstart/crds.yaml
# kubectl create -f deploy/upstream/quickstart/olm.yaml

CONTEXT=$(kubectl config current-context)

echo "Deployment will go to $CONTEXT"
./scripts/package_release.sh 1.0.0-corolm ./cor-olm-deployment values.yaml
kubectl apply -f ./cor-olm-deployment/
