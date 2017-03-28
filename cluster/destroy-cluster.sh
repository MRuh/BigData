#!/bin/bash

. conf

gcloud container clusters delete ${CLUSTER_NAME} \
  --zone ${ZONE} \
  --project ${PROJECT}
