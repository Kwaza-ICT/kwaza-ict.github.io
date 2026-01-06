# ReplicaSet

A ReplicaSet is a Kubernetes controller whose job is very simple:

Ensure that a specified number of identical Pods are always running.

If a Pod dies, the ReplicaSet creates a new one.
If there are too many Pods, it deletes the extras.

What a ReplicaSet does (core responsibility)

In Kubernetes, a ReplicaSet continuously watches the cluster and enforces this rule:

desired replicas == actual running Pods


So why would anyone create a ReplicaSet directly?
1) You want fixed Pods, no rollout behavior at all

A Deployment always assumes:

versions change

rolling updates

history & rollbacks

If you want:

exactly N identical Pods

no updates

no rollout strategy

no revision history

then a ReplicaSet is simpler and more explicit.

Example use case

Batch workers that are redeployed by deleting/recreating

Short-lived systems where updates are destructive anyway

2) You are writing a custom controller/operator

If you’re building:

a Kubernetes Operator

a custom reconciliation loop

you may deliberately create ReplicaSets directly instead of Deployments.

Why?

Full control over Pod lifecycle

No implicit Deployment behavior

You decide when a new ReplicaSet is created

This is common in advanced platform engineering (you’ll see this in operators).

3) You want to opt out of Deployment abstractions

Deployments add:

rolling update logic

surge/unavailable limits

revision tracking

If those abstractions get in your way, a ReplicaSet gives:

one responsibility only: Pod count enforcement

zero opinionated behavior

This can matter in:

research clusters

custom schedulers

constrained environments