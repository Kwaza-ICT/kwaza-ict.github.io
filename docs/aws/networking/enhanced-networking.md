# AWS Enhanced Networking

## What is AWS Enhanced Networking?

AWS Enhanced Networking is a feature that allows you to get significantly higher network performance on your EC2 instances. It is available for instances that are launched in a Virtual Private Cloud (VPC). Enhanced Networking uses single root I/O virtualization (SR-IOV) to provide high-performance networking capabilities on supported instance types.

 - Generally used for High Performance Computing (HPC) workloads
 - Uses single root I/O virtualization (SR-IOV) to provide high-performance networking capabilities on supported instance types
 - Might have to install driver if other than Amazon Linux HVM AMI
 - Intel 82599 VF Interface: 10 Gbps
 - Elastic Network Adapter (ENA): 25 Gbps

## AWS Placement Groups

AWS Placement Groups are a feature that enables you to launch instances in a way that allows them to work together. This can be useful for applications that require low network latency, high network throughput, or both. There are three types of placement groups:

 - **Cluster Placement Group**: Packs instances close together inside a single Availability Zone. This is recommended for applications that can benefit from low network latency, high network throughput, or both.
 - **Spread Placement Group**: Spreads instances across underlying hardware (dedicated hosts). This is recommended for applications that have a small number of critical instances that should be kept separate from each other.
 - **Partition Placement Group**: Spreads instances across many different partitions, which rely on different sets of racks, and can be used to reduce the likelihood of correlated failures.


