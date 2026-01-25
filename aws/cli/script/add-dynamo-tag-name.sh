#!/usr/bin/env bash
set -euo pipefail

# Optional: set your region here, or rely on AWS_REGION/AWS_DEFAULT_REGION
REGION="${AWS_REGION:-eu-west-1}"

aws dynamodb list-tables --region "$REGION" --output text --query "TableNames[]" \
| tr '\t' '\n' \
| while read -r table; do
  [ -z "$table" ] && continue

  echo "Tagging table: $table"

  # Get table ARN
  table_arn=$(aws dynamodb describe-table \
    --region "$REGION" \
    --table-name "$table" \
    --query "Table.TableArn" \
    --output text)

  # Add/overwrite Name tag with the table name
  aws dynamodb tag-resource \
    --region "$REGION" \
    --resource-arn "$table_arn" \
    --tags Key=Name,Value="$table"
done

echo "Done tagging all tables with Name=<table-name>."
