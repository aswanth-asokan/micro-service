#!/bin/bash
echo "==>Copying env from S3"
if [ "$DEPLOYMENT_GROUP_NAME" == "dev-fr-api" ]
then
 aws s3 cp s3://freightrunner-configs/env-dev/env /var/www/freightrunner-api/.env
elif [ "$DEPLOYMENT_GROUP_NAME" == "stage-fr-api" ]
then
  aws s3 cp s3://freightrunner-configs/env-stage/env /var/www/freightrunner-api/.env
elif [ "$DEPLOYMENT_GROUP_NAME" == "prod-fr-api" ]
then
 aws s3 cp s3://freightrunner-configs/env-prod/env /var/www/freightrunner-api/.env
fi 
