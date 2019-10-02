# k8_pythonapp

To connect from outside the cluster
curl <workerip>:<exposed port>
curl 172.28.128.10:30036

# kubectl get  pods -o wide
NAME                         READY   STATUS        RESTARTS   AGE     IP            NODE     NOMINATED NODE   READINESS GATES
pythonapp-549f8b8849-mfdz8   1/1     Running       0          8m12s   172.28.1.57   node01   <none>           <none>
pythonapp-549f8b8849-xxq7j   1/1     Running       0          8m12s   172.28.1.56   node01   <none>           <none>

curl <container ip>:<container port>
curl 172.28.1.57:5000
