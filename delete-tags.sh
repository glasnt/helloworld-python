#!/usr/bin/env bash
set -eo pipefail

PROJECT_ID=$1
REGION=$2
SERVICE=$3
TAGS=$4



echo gcloud beta run services update-traffic $SERVICE --region $REGION --platform managed --project $PROJECT_ID --remove-tags $TAGS
gcloud beta run services update-traffic $SERVICE --region $REGION --platform managed --project $PROJECT_ID --remove-tags $TAGS
