#!/bin/bash
#Install java
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk

#Install Maven
MAVEN_VERSION=3.8.6
sudo wget https://downloads.apache.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -P /tmp
sudo tar -xzf /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz -C  /opt/
sudo mv /opt/apache-maven-$MAVEN_VERSION /opt/maven

#Set JAVA_HOME & MAVEN_HOME as environment variables
sudo echo "MAVEN_HOME=\"/opt/apache-maven-3.8.6\"" >> /etc/profile
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\"" >> /etc/profile 
sudo echo "PATH=\$JAVA_HOME/bin:\$MAVEN_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile

exit 0
