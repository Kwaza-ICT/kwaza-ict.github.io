#!/usr/bin/env bash
set -euo pipefail

# Optional: set your region here, or rely on AWS_DEFAULT_REGION / profile
REGION="${AWS_REGION:-eu-west-1}"

aws dynamodb list-tables --region "$REGION" --output text --query "TableNames[]" \
| tr '\t' '\n' \
| while read -r table; do
  [ -z "$table" ] && continue

  # Check PITR status
  pitr_status=$(aws dynamodb describe-continuous-backups \
    --region "$REGION" \
    --table-name "$table" \
    --query "ContinuousBackupsDescription.PointInTimeRecoveryDescription.PointInTimeRecoveryStatus" \
    --output text 2>/dev/null || echo "DISABLED")

  if [ "$pitr_status" = "ENABLED" ]; then
    pitr="YES"
  else
    pitr="NO"
  fi

  # Count on-demand backups
  backup_count=$(aws dynamodb list-backups \
    --region "$REGION" \
    --table-name "$table" \
    --query "length(BackupSummaries)" \
    --output text 2>/dev/null || echo "0")

  echo "$table    PITR: $pitr    Backups: $backup_count"
done
