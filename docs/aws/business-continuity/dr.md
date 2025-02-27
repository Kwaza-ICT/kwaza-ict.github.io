# Disaster Recovery

Disaster recovery is the act of responding to an event that threatens business continuity. It is a subset of business continuity planning and focuses on the IT or technology systems that support business functions. Disaster recovery planning is a critical component of business continuity planning.

## Backup and restore

 - Pros
   - Very common entry point
   - into AWS
   - Minimal effort configuration
 - Cons
   - Least flexibility
   - Analogous to off-site
   - backuop storage

## Pilot Light

 - Pros
   - Faster recovery time
   - than backup and restore
   - More cost-effective
 - Cons
   - More complex
   - than backup and restore
   - Requires more resources

## Warm Standby

 - Pros
   - All services are up and ready to accept a failover faster with less data loss
   - Can be used as a shadow environment for testing
 - Cons
   - Resources would need to be scaled to accept production load
   - Still requires some adjustments but could be scripted

## Multi-Site

 - Pros
   - Can be used for active-active or active-passive
   - Can be used for disaster recovery or high availability
 - Cons
   - More complex than warm standby
   - More expensive than warm standby