#!/bin/sh 

echo "Usage: ./delete-tags.sh SERVICE TAG_FILE"

TAGS=$(cat $TAG_FILE)

echo "TAGS RECEIVED: $TAGS"

echo "WOULD EXECUTE: gcloud beta run services update-traffic ${SERVICE} --platform managed --remove-tags $TAGS"

gcloud beta run services describe $SERVICE --platform managed