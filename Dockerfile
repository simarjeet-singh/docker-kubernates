FROM java:8
COPY target/accessing-mongodb-data-rest-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar", "accessing-mongodb-data-rest-0.0.1-SNAPSHOT.jar"]