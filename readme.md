# Demo repo for K8's Handson Workshop  

## Prerequsites  

* Docker (see details below for install)
* git (have the command line version installed)
* vscode (or any other editor)
* Java-8 (JDK-8)

Note: Please install Java JDK-8 and setup your JAVA_HOME ponting to JDK installation path
##### For Docker installation 

* Docker Desktop should be installed on local machine (Laptop/desktop/macbook etc) with latest version
  * For Mac : https://docs.docker.com/docker-for-mac/install/
  * For Windows: https://docs.docker.com/docker-for-windows/install/

* Once Docker is installed - verify installation by running below command in respective command line tool (shell or CMD):  


  ```bash
  docker info
  ```

  Output should be something like -

<details>
<summary>output</summary>

```bash
docker version
Client: Docker Engine - Community
 Cloud integration: 1.0.7
 Version:           20.10.2
 API version:       1.41
 Go version:        go1.13.15
 Git commit:        2291f61
 Built:             Mon Dec 28 16:12:42 2020
 OS/Arch:           darwin/amd64
 Context:           default
 Experimental:      true

Server: Docker Engine - Community
 Engine:
  Version:          20.10.2
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.13.15
  Git commit:       8891c58
  Built:            Mon Dec 28 16:15:28 2020
  OS/Arch:          linux/amd64
  Experimental:     true
 containerd:
  Version:          1.4.3
  GitCommit:        269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc:
  Version:          1.0.0-rc92
  GitCommit:        ff819c7e9184c13b7c2607fe6c30ae19403a7aff
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```

</details>  

Any error means Docker is not installed properly or services are not running fine.


* Docker Kubernetes extension should be enabled (please follow below link based on your machine)
  * For Mac: https://docs.docker.com/docker-for-mac/#kubernetes
  * For Windows: https://docs.docker.com/docker-for-windows/#kubernetes

* Once kubernetes extension is installed and running , check your installion running below command

  ```bash
  kubectl get namespace
  ```

  Output should be something like -

<details>
<summary>output</summary>

```bash
NAME              STATUS   AGE
default           Active   122m
kube-node-lease   Active   122m
kube-public       Active   122m
kube-system       Active   122m
```

</details>

#### Clone this GIT repository on your Local Desktop/Laptop

* Clone the repository in your Local machine at your desired location -

  ```bash
  git clone https://github.com/aamol/ice-2021.git
  cd ice-2021
  ```

### For Session-1  

[Handson session-1 instructions](./session-1/readme.md)

### For Session-3  

[Handson session-3 instructions](./session-2/readme.md)


