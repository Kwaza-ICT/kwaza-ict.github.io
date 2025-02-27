# DataBases High Availability

## Choose the right database

### High Operational Efficiency and Less Control

 - DynamoDB (no sql)
 - Aurora (sql)

### Medium Operational Efficiency and Control

 - RDS (sql)

### Low Operational Efficiency and Control

 - EC2 (sql)

### High Available DynamoDB

 - Distributed data and incoming traffic across partitions by default
 - Partitions are replicated across multiple AZs
 - Global tables allow multi-region availability

### Multi-AZ RDS

 - Synchronous replication across multiple AZs
 - Failover to standby in case of primary failure
 - Automated backups and snapshots

#### Regional Read Replica

 - Asynchronous replication across regions
 - Read-only copy of the primary database
 - Can be promoted to primary in case of primary failure
 - Warm standby solution

#### Snapshot Recovery

 - Multi AZ RDS cluster
 - Automated backups and snapshots

### Aurora

 - Multi-AZ deployment
 - Data copies across multiple AZs
 - Automated failover

### Aurora Global Database

 - One primary region and up to five read-only secondary regions
 - Data replicates from primary to secundary regions
 - Leverages storage-level replication
 - Promote a secondary region to primary in case of primary region failure

### Redshift High Availability

 - Only RA3 instances supports Multi-AZ
 - Best option for HA otherwise is a multi-node cluster
 - single-node failure must be restored from a s3 snapshot

## Output

 - DynamoDB is the best option for high availability
 - Aurora is the best option for high availability with SQL
 - Redshift is the best option for data warehousing high availability
