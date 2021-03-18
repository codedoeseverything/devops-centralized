#!/usr/bin/env bash
SECRET_VAR=AWSAccountID
$CFN_PARAM1=$(aws secretsmanager get-secret-value --secret-id $SECRET_VAR| jq --raw-output '.SecretString' | jq -r .$CFN_PARAM1)

cat >>config/cfn.params <<EOF 
$CFN_PARAM1
EOF