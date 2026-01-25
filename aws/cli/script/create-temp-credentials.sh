#!/bin/bash

PROFILE_NAME="profile-name"

# Get the session token and parse the output with jq
aws sts assume-role --role-arn "arn:aws:iam::123456789:role/role-to-assume" --role-session-name my-session --serial-number arn:aws:iam::11111111111111:mfa/my.user --token-code 588989 --duration-seconds 3600 > temp_creds.json

# Extract the credentials
ACCESS_KEY=$(jq -r '.Credentials.AccessKeyId' temp_creds.json)
SECRET_KEY=$(jq -r '.Credentials.SecretAccessKey' temp_creds.json)
SESSION_TOKEN=$(jq -r '.Credentials.SessionToken' temp_creds.json)

# Write to the AWS credentials file
aws configure set aws_access_key_id "$ACCESS_KEY" --profile $PROFILE_NAME
aws configure set aws_secret_access_key "$SECRET_KEY" --profile $PROFILE_NAME
aws configure set aws_session_token "$SESSION_TOKEN" --profile $PROFILE_NAME

# Clean up
rm temp_creds.json

echo "Temporary credentials have been set for profile '$PROFILE_NAME'."
