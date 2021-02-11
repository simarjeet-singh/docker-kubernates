##

#### Go to Command/Shell/terminal

#### 1) Lets first check the image which was created in Session 1 is there in the dokcer local repository

```bash
docker images
```

#### 2) First we will create a Namespace demo

```bash
kubectl create namespace demo
```

#### 3) Now we need to deploy mongo to kubernetes


```bash
kubectl -n demo create deployment mongo --image=mongo:latest
```

#### 4) Validate the mongo deployment has been created and pods are runing

``` bash
kubectl -n demo get deployment
kubectl -n demo get pods -o wide
```

#### 5) Lets now create service for mongo

``` bash
kubectl -n demo expose deployment mongo --port=27017 --target-port=27017
```

#### 6) Validate the mongo service and it connected to pods

``` bash
kubectl -n demo get service
kubectl -n demo get ep
```


#### 7) Now we need to deploy our demo application to kubernetes

``` bash
kubectl -n demo create deployment demo-app --image=k8s-demo-spring-mongo:1 
```


#### 8) Validate the application deployment has been created and pods are runing. And look at the logs

``` bash
kubectl -n demo get deployment
kubectl -n demo get pods
kubectl -n demo logs <podname_from previous command>
```

#### 9) Fix the error in logs by adding environment variable

``` bash
kubectl -n demo get deployment demo-app -o yaml > demo-app.yaml
```

#### 10) Open the file .Search for "name: k8s-demo-spring-mongo" and add this line below (No tabs this is a yaml file)

```
        env:
           - name: SPRING_DATA_MONGODB_HOST
             value: mongo
```

#### 11) Update the deployment using the below command

``` bash
kubectl -n demo apply -f demo-app.yaml
```

#### 12) Validate the application deployment has been updated and pods are runing. And look at the logs

``` bash
kubectl -n demo get pods
kubectl -n demo logs <podname_from previous command>
```


#### 5) Lets now create service for demo-app

``` bash
kubectl -n demo expose deployment demo-app --port=8080 --target-port=8080 --type=LoadBalancer 
```

#### 6) Validate the demo-app service and it connected to pods

``` bash
kubectl -n demo get service
kubectl -n demo get ep
```

#### 4) Lets validate the application is working

* Access Rest API interface of application via CURL command -  

 ```bash
    curl http://localhost:8080/people
 ```

* Now lets insert some data via application -

 ```bash
    curl -i -X POST -H "Content-Type:application/json" -d "{  \"firstName\" : \"Frodo\",  \"lastName\" : \"Baggins\" }" http://localhost:8080/people
 ```

* Lets again access application to see what is returned -

```bash
curl http://localhost:8080/people
```

#### 4) Lets autoscale our application

``` bash
kubectl -n demo autoscale deployment demo-app --min=2 --max=15 --cpu-percent=70
```
#### 4) Validate autoscaler has been created 

``` bash
kubectl -n demo get hpa
```
#### 4) This step will take some time and after that 2 pods should be up and runing 

``` bash
kubectl -n demo get pods
```


  ### Cleanup

  Lets cleanup our system, run below commands

  ```bash
kubectl delete namespace demo  
```
