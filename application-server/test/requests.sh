#!/usr/bin/env bash

. ./settings.sh

set -e
set -u

# early exit if jq or curl are not installed
curl --version > /dev/null
jq --version > /dev/null 

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

USERNAME=joe
PASSWORD=password
REALM=demo
BASE=http://localhost:8080
BACKEND_URL=http://localhost:8080

WELLKNOWN_URL=${OIDC_URL}/.well-known/openid-configuration
TOKEN_ENDPOINT=$(curl --silent $WELLKNOWN_URL | jq -c -r '.token_endpoint')
LOGIN_RESPONSE=$(curl --silent -X POST \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -H "Accept: application/json" \
     --data "client_id=${CLIENT_ID}&username=${USERNAME}&password=${PASSWORD}&grant_type=password&redirect_uri=http%3A%2F%2Flocalhost%3A8080" \
     $TOKEN_ENDPOINT)
#ERRMESSAGE=$(echo LOGIN_RESPONSE | jq -c -r '.error_description')
#echo "LOGIN_RESPONSE=$LOGIN_RESPONSE"
ACCESS_TOKEN=$(echo $LOGIN_RESPONSE | jq -c -r '.access_token')
echo "ACCESS_TOKEN=$ACCESS_TOKEN"
if [[ $ACCESS_TOKEN == "null" ]]
then
     ERROR_MESSAGE=$(echo $LOGIN_RESPONSE | jq -c -r '.')
     echo "ERR=$ERROR_MESSAGE"
     echo "for tests please enable 'Direct access grants' using the Admin Console in the settings for the $CLIENT_ID client"
     exit 403
fi
#curl --header "Accept: application/json" --header "Authorization: Bearer $ACCESS_TOKEN" ${BACKEND_URL}/api/posts | jq '.'
