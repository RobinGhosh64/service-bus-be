#!/bin/bash

# Compile and package the Java code with Maven.
# Chris Joakim, Microsoft, 2020/05/29

date > src/main/resources/build_date.txt

mvn clean compile package

jar tvf target/servicebusdemo-1.0-SNAPSHOT.jar > tmp/jar-contents.txt

echo 'done'
