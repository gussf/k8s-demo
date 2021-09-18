# Testing Kubernetes cluster locally


###  Prerequisites
- kind 
- Docker
- kubectl

<hr>

Create a cluster
``` shell
make createk8s
```

Apply k8s deployment yaml
``` shell
make applydeploy
```

Apply k8s service yaml 
``` shell
make applysvc
```

Forward ports for service to listen on localhost:8080 
``` shell
make applysvc
```

Done! Access localhost:8080 to be greeted with Hello World
