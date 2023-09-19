#!/bin/bash

kubectl apply -f cadvisor.daemonset.yaml

kubectl apply -f .

until [ "$POD_STATUS" == "Running" ]; do
  POD_STATUS=$(kubectl get pods | grep postgres | awk '{print $3}')
  echo "Waiting for Postgres pod to be running..."
  sleep 5
done

echo "Postgres pod is now running!\n"

name_pod_postgres=$(kubectl get pods | grep postgres | awk '{print $1}')
echo 'CREATE TABLE votes (id text PRIMARY KEY, vote text NOT NULL);' | kubectl exec -i $name_pod_postgres -c postgres -- psql -U postgres

ip=$(minikube ip)
echo "$ip poll.dop.io" | sudo tee -a /etc/hosts
echo "$ip result.dop.io" | sudo tee -a /etc/hosts

echo "Congrat's you should be able to open http://poll.dop.io:30021 & http://result.dop.io:30021"
