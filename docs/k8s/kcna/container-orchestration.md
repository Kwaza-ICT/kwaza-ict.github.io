# Container Orchestration

1 - Orchestration means using automation to manage the lifecycle of containers.

# Container Runtime

1 - Container runtime is the software that manages the containers.
2 - CRI (Container Runtime Interface) is the interface between the container runtime and the kubelet.
3 - CRI-O and Containerd are two popular container runtimes.

# Kubernetes security

1 - 4Cs of Cloud Native Security: Cloud, Cluster, Container and code
2 - Client Certificates - API Server uses a signed X509 client certificate to authenticate a user. 
3 - OpenID Connect - Uses a JSON Web Token (JWT) to authenticate users.
4 - OPA Gatekeeper - A Kubernetes admission controller that enforces policies on pods.

# Kubernetes networking

1 - Kubernetes uses a virtual cluster network to connect pods.
2 - The cluster Domain Name Server (DNS) allows containers to discover Services by hostname
3 - Network policies allow you to control the traffic flow between pods.
4 - Pods are non-isolated by default.
5 - If a Network Policy selects a pod, the Pod is isolated from all other pods in the cluster. Only traffic allowed by the Network Policy is allowed.
6 - Isolation is treated separately for incoming (ingress) traffic and outgoing (egress) traffic.

# Services

1 - Services expose an application running on a set of Pods as a network service.
2 - Services Types: 
    - ClusterIP: Expose internally within the cluster network
    - NodePort: Expose externally on a static port on each node
    - LoadBalancer: Expose using a cloud provider load balancer
    - ExternalName: Provide a DNS name for an external service
3 - Headless Services: A service with no cluster IP address.
4 - A service without a a selector requires any endpoints to be manually created.
5 - There are two main service discovery mechanisms: DNS and environment variables.
6 - An Ingress exposes and application externally and routes traffic to a Service. It can also provide additional functionality like SSL termination,

# Service Mesh

1 - Service Mesh is a software system that provides a way to manage communication between applications components, often adding additional
functionality like logging, tracing or encryption.
2 - Two main components of service mesh are the control plane and service proxy/data plane.
3 - Sidecar - An additional container running in a Pod alongside the main container. 
4 - Service Mesh Interface (SMI) - A specification for a set of APIs that define a common interface for service mesh implementations.

# Storage

1 - Volume - Provide external storage to your kubernetes containers to store application data.
2 - PersistentVolume - Define a dynamically consumable storage resource.
3 - PersistentVolumeClaim - Request a specific size and access mode for a PersistentVolume.
4 - Rook - Open source storage platform for Kubernetes.
