1/ Techmaster Exercise URL: https://learn.techmaster.vn/lop-hoc/djgewerp/bai-tap?id=307667
2/ Commands:
$ nano nginx-deployment.yaml (We can use the existing one in ./templates/nginx-deployment.yaml). The current replica quantity is 2.
$ nano nginx-service.yaml (We can use the existing one in ./templates/nginx-service.yaml). The current NodePort is 32000.
$ minikube start --cpus=2 --nodes=2 --memory=2048 -p star
$ minikube profile list
$ kubectl apply -f ./templates/nginx-deployment.yaml
$ kubectl apply -f ./templates/nginx-service.yaml
$ kubectl get pods -o wide -l app=nginx
$ kubectl get deployments -o wide
$ kubectl get replicaset -o wide
$ kubectl get services -o wide
$ kubectl get nodes
$ curl http://<SELECT_ONE_NODE_IP_ADDRESS>:32000 (We're calling to the Nginx through the NodePort above).
$ minikube ssh -p star -n <ANY_NODE_NAME>
$ -> curl localhost:32000 (We're calling to the Nginx through the NodePort above).
$ -> curl http://127.0.0.1:32000 (We're calling to the Nginx through the NodePort above).
$ -> curl http://<SELECT_ONE_POD_IP_ADDRESS>:80 (We're calling to the Nginx through the Pod port inside the current cluster and the same default namespace).
$ -> exit
$ kubectl delete -f ./templates/nginx-deployment.yaml
$ kubectl delete -f ./templates/nginx-service.yaml


