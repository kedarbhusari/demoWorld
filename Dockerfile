From openjdk:11
copy ./target/demoWorld-0.0.1-SNAPSHOT.jar demoWorld-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","demoWorld-0.0.1-SNAPSHOT.jar"]
