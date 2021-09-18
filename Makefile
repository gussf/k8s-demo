image:
	docker build -t gussf/teste-k8s:latest .

pushimage:
	docker push gussf/teste-k8s:latest

container:
	docker run --rm -d -p 8080:8080 teste-k8s

createk8s:
	kind create cluster --name teste-k8s-cluster

destroyk8s:
	kind delete clusters teste-k8s-cluster

applydeploy:
	kubectl apply -f k8s/deployment.yml

applysvc:
	kubectl apply -f k8s/service.yml

fwdport:
	kubectl port-forward svc/teste-k8s-svc 8080:8080


PHONY: image pushimage container createk8s destroyk8s applydeploy applysvc fwdport