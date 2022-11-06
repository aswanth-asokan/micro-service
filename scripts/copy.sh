#!/bin/bash
echo "==>Copying env from S3"
if [ "$DEPLOYMENT_GROUP_NAME" == "dev-fcn-api" ]
then
 aws s3 cp s3://fcn-configs/env-dev/auth/env /var/www/fcn-api-ms/auth/.env
 aws s3 cp s3://fcn-configs/env-dev/gateway/env /var/www/fcn-api-ms/gateway/.env
 aws s3 cp s3://fcn-configs/env-dev/user/env /var/www/fcn-api-ms/user/.env
 aws s3 cp s3://fcn-configs/env-dev/video/env /var/www/fcn-api-ms/video/.env

elif [ "$DEPLOYMENT_GROUP_NAME" == "stage-fr-api" ]
then
  aws s3 cp s3://freightrunner-configs/env-stage/env /var/www/freightrunner-api/.env
elif [ "$DEPLOYMENT_GROUP_NAME" == "prod-fr-api" ]
then
 aws s3 cp s3://freightrunner-configs/env-prod/env /var/www/freightrunner-api/.env
fi 