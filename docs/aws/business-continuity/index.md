# Business Continuity

Business continuity is the ability of an organization to maintain essential functions during, as well as after, a disaster has occurred. Business continuity planning establishes risk management processes and procedures that aim to prevent interruptions to mission-critical services, and re-establish full function to the organization as quickly and smoothly as possible.

## Concepts

### Business Continuity (BC)

Seeks to minimize business activity disruption when something unexpected happens.

## Disaster Recovery (DR)

Act of responding to an event that thratens business continuity.

## High Availability (HA)

Designing in redundancy to ensure that a system is always available.

## Fault Tolerance

Designing in redundancy to ensure that a system can continue to operate in the event of a failure.

## Service Level Agreement (SLA)

A contract between a service provider and a customer that specifies the level of service that the customer can expect.

## Recovery Time Objective (RTO)

The maximum amount of time that a system can be down before it starts to impact the business.

## Recovery Point Objective (RPO)

The maximum amount of data that can be lost before it starts to impact the business.

## Types of disaster

| Category              | Description                                                    |
|-----------------------|----------------------------------------------------------------|
| Hardware Failure      | Failure of a physical component                                |
| Deployment Failure    | Failure of a deployment                                        |
| Load Induced          | Distributed denial of Service attack on your website           |
| Data Induced          | Ariane 5 rocket explosion on June 1996                         |
| Credential Expiration | An SSL/TLS certificate expires                                 |
| Dependency            | S3 subsystem failure cause numerous other AWS service failures |
| Infra                 | Lack of sufficient capacity                                    |
| Human                 | Always a mistake made by someone                               |

## Outputs

 - General Concepts
   - Know the difference between Business Continuity, Disaster Recovery, High Availability, and Fault Tolerance.
   - Know the difference between Recovery Time Objective (RTO) and Recovery Point Objective (RPO).
   - Understand the 4 options for Disaster Recovery: Backup and Restore, Pilot Light, Warm Standby, and Multi-Site.
 - Storage Options
    - Understand RAID and the potential benefits of using it.
 - Compute Options
    - Understand why horizontal scaling is preferred from an HA perspective.


