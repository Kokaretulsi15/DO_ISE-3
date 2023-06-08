# base image
FROM openjdk:18
COPY . /src/java
WORKDIR /src/java
RUN ["javac", "PrimeNumbers.java"]
ENTRYPOINT ["java", "PrimeNumbers"]
