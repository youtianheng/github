#!/bin/bash
for i in `kubectl get pod -n ingress-nginx | grep -iv running | awk '{print $1}'`;do
kubectl delete pod  ${i} --force -n ingress-nginx
done
