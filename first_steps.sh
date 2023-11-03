#VERSION
kubectl version

kubectl get nodes

#BASIC EXAMPLE 
kubectl run nginx --image=nginx
kubectl get pods

#ENV
export NS=jothan
echo $NS

#NS
kubectl create namespace $NS

#POD
kubectl --namespace=$NS run nginx-$NS --image=nginx 
kubectl get pod #Running in the "default" namespace
kubectl --namespace $NS get pods

kubectl --namespace $NS logs nginx-$NS

kubectl --namespace $NS describe pod nginx-$NS
