# Kubernetes Controllers
* Pod is the workload in the k8s cluster
* When we deploy our application in production,
* we might need more than one replica of pod
* We can balance load across multiple pods so that one pod is not overloaded
* k8s supports different controllers that you can use for replications and maintaining state. The controllers we have are

        ReplicaSets
        Deployments
        DaemonSets
        StatefulSets
        Jobs
        
* A controller is an object in k8s that ensures application runs in the desired state for its entire runtime