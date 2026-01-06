#!/usr/bin/env bash
set -euo pipefail

# Change this to the table you want to test with
TABLE_NAME="your-table-name-here"

# Optional: set region here or use AWS_REGION / AWS_DEFAULT_REGION
REGION="${AWS_REGION:-eu-west-1}"

echo "Tagging DynamoDB table: $TABLE_NAME in region $REGION"

# Get the table ARN
TABLE_ARN=$(aws dynamodb describe-table \
  --region "$REGION" \
  --table-name "$TABLE_NAME" \
  --query "Table.TableArn" \
  --output text)

# Add/overwrite Name tag with the table name
aws dynamodb tag-resource \
  --region "$REGION" \
  --resource-arn "$TABLE_ARN" \
  --tags Key=Name,Value="$TABLE_NAME"

echo "Done. Table $TABLE_NAME tagged with Name=$TABLE_NAME"
