FROM maven:latest

COPY . .

RUN mvn package
RUN ls
RUN ls -ltr
CMD java -jar ./target/java-fullstack-1.0-SNAPSHOT.jar
