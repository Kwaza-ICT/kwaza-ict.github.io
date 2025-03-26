#!/bin/bash

# Set variables
IDENTITY_STORE_ID="d-111111111"
USER_ID="11111111-11111111-11111111-11111111"

# Fetch group memberships for the user
echo "Fetching group memberships for User ID: $USER_ID..."
MEMBERSHIPS=$(aws identitystore list-group-memberships-for-member \
    --identity-store-id "$IDENTITY_STORE_ID" \
    --member-id UserId="$USER_ID" \
    --query "GroupMemberships[*].[MembershipId, GroupId]" \
    --output json)

# Check if memberships exist
if [[ -z "$MEMBERSHIPS" || "$MEMBERSHIPS" == "[]" ]]; then
    echo "No group memberships found for this user."
    exit 1
fi

# Parse the JSON output and extract Membership IDs & Group IDs
echo "$MEMBERSHIPS" | jq -c '.[]' | while read -r entry; do
    MEMBERSHIP_ID=$(echo "$entry" | jq -r '.[0]')
    GROUP_ID=$(echo "$entry" | jq -r '.[1]')

    # Fetch Group Name using Group ID
    GROUP_NAME=$(aws identitystore describe-group \
        --identity-store-id "$IDENTITY_STORE_ID" \
        --group-id "$GROUP_ID" \
        --query "DisplayName" \
        --output text)

    # Display Membership ID and Group Name
    echo "Membership ID: $MEMBERSHIP_ID | Group Name: $GROUP_NAME"
done
