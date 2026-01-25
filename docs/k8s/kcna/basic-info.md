# Resource

1 - An object of a certain type in the kubernetes API. 
2 - You can list all available resources with `kubectl api-resources`.
3 - You can create your own custom resources using Custom Resource Definitions (CRDs).
4 - Use an init container to run a task before a Pod starts.

# Pods management resources

1 - ReplicaSet - Ensures a specified number of pod replicas are running at any given time.
2 - Deployment - Manages ReplicaSets and provides declarative updates for Pods.
3 - Imperative command to create a Deployment: kubectl create deployment nginx --image=nginx --replicas=3
4 - StatefulSet - Manages stateful applications, providing stable network IDs and persistent storage.

# DaemonSet - Dynamically runs a copy of a Pod on all or selected nodes in the cluster.

# Job - Runs a task once.

# CronJob - Runs a task periodically.

# Kubernetes Architecture

1 - Worker Nodes - Responsible for running containers.
2 - Control Plane - Manages the cluster, including the API server, scheduler, and controller manager.
3 - API Server (Control Plane) - Provides a unified interface for interacting with the cluster.
4 - Scheduler (Control Plane) - Assigns Pods to Nodes.
5 - Controller Manager (Control Plane) - Runs controllers that manage the cluster state.
6 - etcd (Control Plane) - Stores cluster state.
7 - Cloud Controller Manager (Control Plane) - Manages cloud provider features.
8 - kube-proxy (Worker Nodes) - Provides network routing and load balancing for Pods.
9 - Container Runtime (Worker Nodes) - Runs containers.
10 - kubelet (Worker Nodes) - Agent that runs Pods and provides runtime features.
11 - Kubernetes CRI - Interface between container runtime and kubelet.
12 - kubelet no longer uses dockershim to support Docker, since Docker does not implement the CRI.

# Kubernetes API

1 - REST API - A set of endpoints that can be used to interact with the Kubernetes API.
2 - Kubernetes API Server - The server that exposes the Kubernetes API.
3 - Formats: JSON, YAML - The formats used to define Kubernetes resources.

# Containers

1 - Linux control groups (cgroups) - Used to provide container isolation.
2 - You can have more then one container in a Pod.
3 - A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.

# Scheduling

1 - Scheduling is the process of assigning Pods to Nodes.
2 - Scheduling occurs when a new Pod is created or when a Node is added to the cluster.
3 - Scheduler takes into account things like resources requirements, Pod affinity, and tolerations when selecting a Node for a Pod.