#!/bin/bash

. conf

gcloud container clusters create ${CLUSTER_NAME} \
  --machine-type ${MACHINE_TYPE} \
  --num-nodes ${NUM_NODES} \
  --project ${PROJECT} \
  --zone ${ZONE} \
  --enable-autoscaling \
  --min-nodes 1 \
  --max-nodes 2

gcloud container clusters get-credentials ${CLUSTER_NAME} \
  --zone ${ZONE} \
  --project ${PROJECT}

