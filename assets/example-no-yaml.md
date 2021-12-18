## Example of load balanced nginx web servers without manifest

```
$ kubectl run nginx-hello --image=nginxdemos/hello --port=80 --replicas=2
```

Configure external load balancing for the application:

```
$ kubectl expose deployment nginx-hello --type="LoadBalancer"
```

Get the IP address of the allocated load balancer:

```
$ kubectl get svc nginx-hello
```

Get pod names

```
$ kubectl get pods
```

From another console window, make HTTP requests to the application using the IP address obtained in the previous step.

```
$ while true; do curl -s localhost:80 | grep name; done
```

Delete a pod while monitoring the curl loop in the previous step.

```
$ kubectl delete pod <pod_name>
```

### Cleanup

```
$ kubectl delete svc nginx-hello
service "nginx-hello" deleted
$ kubectl delete deploy nginx-hello
deployment.extensions "nginx-hello" deleted
```
