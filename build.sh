#!/bin/sh

# docker run --rm -it httpd htpasswd -n john

kubectl create secret generic theia-basic-auth --from-file=auth -n theia
kubectl get secret theia-basic-auth -o yaml -n theia

kubectl apply -f eclipse-theia.yaml
