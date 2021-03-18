#!/usr/bin/env bash

cat >>config/cfn.params <<EOF 

$CFN_PARAM1=$(aws secretsmanager get-secret-value --secret-id $SECRET_VAR| jq --raw-output '.SecretString' | jq -r .$CFN_PARAM1)

EOF
