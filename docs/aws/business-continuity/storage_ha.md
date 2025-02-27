# Storage High Availability

 - Annual failure rate (AFR) of 0.1% compared to commodity drives at 4%
 - Availability target of 99.99%
 - Replication across multiple Availability Zones
 - Vulnerable to AZ failure
 - Easy to snapshot
 - You can copy snapshots to other regions
 - Supports RAID configurations

## What is RAID?

RAID (Redundant Array of Independent Disks) is a data storage virtualization technology that combines multiple physical disk drive components into one or more logical units for the purposes of data redundancy, performance improvement, or both.

## Tip

Use RAID 0 and RAID 1 on AWS

## S3 storage

 - Standard S3 storage is designed for 99.999999999% durability and 99.99% availability
 - Standard S3 infrequent access is designed for 99.9% availability
 - One-zone infrequent access is designed for 99.5% availability
 - Eleven 9s of durability
 - Standard & Standard IA are designed for 99.99% availability

## Amazon EFS

 - Implementation of NFS File System
 - True file system as opposed to EBS or S3
 - File locking, strong consistency and concurrently accessible
 - Each file object and metadata is stored across multiple AZs
 - Can be accessed by multiple EC2 instances
 - Can be accessed from all AZs in a region
 - Mount targets are highly available
