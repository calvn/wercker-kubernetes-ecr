#!/bin/bash

cat > cities-deployment.yml <<EOF
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: cities
spec:
  replicas: 3
  template:
    metadata:
      labels:
        name: cities
        deployment: ${WERCKER_GIT_COMMIT}
    spec:
      containers:
      - name: cities
        image: ${AWS_REGISTRY_ID}.dkr.ecr.us-east-1.amazonaws.com/cities:${WERCKER_GIT_COMMIT}
        ports:
        - name: http-server
          containerPort: 5000
          protocol: TCP
EOF
