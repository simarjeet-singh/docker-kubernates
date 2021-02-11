##

#### 1) Lets run our first container - mongodb

```bash
docker run -p 27017:27017 --name mongo -d mongo:latest
```

#### 2) Lets compile the app code on local

```bash
mvnw clean install
```

#### 3) Lets run the compiled applicaton code on local without docker container

* Start application
```bash
java -jar target/accessing-mongodb-data-rest-0.0.1-SNAPSHOT.jar
```

* 