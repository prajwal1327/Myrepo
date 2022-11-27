#!/bin/bash
apt update -y
apt upgrade -y
apt install default-jdk -y
java -version
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz
tar -xvzf apache-tomcat-10.0.27.tar.gz
rm -rf apache-tomcat-10.0.27.tar.gz
mv apache-tomcat-10.0.27 /opt/tomcat
sh /opt/tomcat/bin/shutdown.sh
sleep 2
sh /opt/tomcat/bin/startup.sh
rm -rf conf-and-webapps-file
git clone https://github.com/syedwaliuddin/conf-and-webapps-file.git
rm -rf /opt/tomcat/conf/tomcat-users.xml
cp conf-and-webapps-file/tomcat-users.xml /opt/tomcat/conf/
sh /opt/tomcat/bin/shutdown.sh
sleep 2
sh /opt/tomcat/bin/startup.sh
rm -rf /opt/tomcat/webapps/manager/META-INF/context.xml
cp conf-and-webapps-file/context.xml /opt/tomcat/webapps/manager/META-INF/
rm -rf /opt/tomcat/webapps/host-manager/META-INF/context.xml
cp conf-and-webapps-file/contexthm.xml /opt/tomcat/webapps/host-manager/META-INF/
sh /opt/tomcat/bin/shutdown.sh
sleep 2
sh /opt/tomcat/bin/startup.sh
