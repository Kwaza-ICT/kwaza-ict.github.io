# Usefull kubectl conmmands

```shell
kubectl get nodes
```

```shell
kubectl get all
```

```shell
kubectl get pods --all-namespaces
```

Available Commands:
clusterrole           Create a cluster role
clusterrolebinding    Create a cluster role binding for a particular cluster role
configmap             Create a config map from a local file, directory or literal value
cronjob               Create a cron job with the specified name
deployment            Create a deployment with the specified name
ingress               Create an ingress with the specified name
job                   Create a job with the specified name
namespace             Create a namespace with the specified name
poddisruptionbudget   Create a pod disruption budget with the specified name
priorityclass         Create a priority class with the specified name
quota                 Create a quota with the specified name
role                  Create a role with single rule
rolebinding           Create a role binding for a particular role or cluster role
secret                Create a secret using a specified subcommand
service               Create a service using a specified subcommand
serviceaccount        Create a service account with the specified name
token                 Request a service account token


# Create a deployment usinge imperative command
kubectl create deployment myapp --image=nginx:1.27

kubectl scale deployment myapp --replicas=3

kubectl expose deployment myapp \
--type=ClusterIP \
--port=80 \
--target-port=80

4) Update the image (rolling update)
   kubectl set image deployment/myapp myapp=nginx:1.28
5) Add environment variables
   kubectl set env deployment/myapp ENV=production LOG_LEVEL=info

kubectl get pod --show-labels

kubectl label pod myapp-85cf5b8c8d-fs764 app=DEBUG --overwrite

kubectl get nodes --watch


# List all the resources available
kubectl api-resources

# Explain a resource type
kubectl explain 

# You can create a custom resource definition (CRD)
CustomResourceDefinition

# What is resource on Kubernetes

In Kubernetes, a resource is an object that represents a component of your cluster, such as pods, services, deployments, nodes, or custom resources. Resources are defined using YAML or JSON manifests and managed via the Kubernetes API. Each resource has a kind, metadata, and a spec that describes its desired state.

# Init Containers on Pods

An init container is a specialized Kubernetes container that runs and completes before a pod’s main app containers start, often used for setup tasks like waiting for dependencies, prepping config, or warming caches. Each init container must finish successfully, ensuring predictable pod startup.

Example `yaml` manifest showing an init container copying config before the main app runs:

```yaml
apiVersion: v1
kind: Pod
metadata:
   name: init-container-example
spec:
   volumes:
      - name: shared-data
        emptyDir: {}

   initContainers:
      - name: init-setup
        image: busybox:1.36
        command:
           - sh
           - -c
           - |
              echo "Hello from init container" > /data/message.txt
        volumeMounts:
           - name: shared-data
             mountPath: /data

   containers:
      - name: app
        image: busybox:1.36
        command:
           - sh
           - -c
           - |
              echo "Main container started"
              cat /data/message.txt
              sleep 3600
        volumeMounts:
           - name: shared-data
             mountPath: /data

   restartPolicy: Never

 ```

# What is StatefulSet

A StatefulSet is a Kubernetes workload object designed to run stateful applications—apps that require:

Stable network identity

Stable, persistent storage

Ordered startup, scaling, and shutdown

Unlike a Deployment, a StatefulSet does not treat Pods as interchangeable.

# What is DaemonSet

A DaemonSet ensures that all (or some) Nodes run a copy of a Pod.

# What is Job

A Job creates one or more Pods and ensures that a specified number of them successfully terminate.

# What is CronJob

A CronJob creates Jobs on a schedule.

Cronjob creates a Job and a job creates a pod

