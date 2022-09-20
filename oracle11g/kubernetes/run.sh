#!/bin/bash

kubectl apply -f .
kubectl exec -it cloudladder-oralce/oracle11g-0 bash