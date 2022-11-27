#!/bin/bash
apt update -y
apt install default-jdk -y
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz
tar -xvzf apache-tomcat-10.0.27.tar.gz
rm -rf apache-tomcat-10.0.27.tar.gz
mv apache-tomcat-10.0.27 tomcat
sh tomcat/bin/startup.sh
rm -rf conf-and-webapps-file
git clone https://github.com/syedwaliuddin/conf-and-webapps-file.git
rm -rf tomcat/conf/tomcat-users.xml
cp conf-and-webapps-file/tomcat-users.xml tomcat/conf/
sh tomcat/bin/startup.sh
rm -rf tomcat/webapps/manager/META-INF/context.xml
cp conf-and-webapps-file/context.xml tomcat/webapps/manager/META-INF/
rm -rf tomcat/webapps/host-manager/META-INF/context.xml
cp conf-and-webapps-file/contexthm.xml tomcat/webapps/host-manager/META-INF/
sh tomcat/bin/startup.sh
