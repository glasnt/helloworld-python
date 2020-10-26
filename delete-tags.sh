#!/bin/sh 

echo "Usage: ./delete-tags.sh SERVICE TAG_FILE"

SERVICE=$1
TAG_FILE=$2

TAGS=$(cat $TAG_FILE)

echo "TAGS RECEIVED: $TAGS"

echo "WOULD EXECUTE: gcloud beta run services update-traffic ${SERVICE} --remove-tags $TAGS"

gcloud beta run services describe $SERVICE