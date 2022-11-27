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
apt update -y
apt install maven -y
#delete the existing folder/code to execute the fresh command
rm -rf hello-world-war
#need to clone first
git clone https://github.com/prajwal1327/hello-world-war.git
#switch to hello-world-war
cd  hello-world-war
#run the maven package
mvn package
cp -R tomcat/target/hello-world-war-1.0.0.war tomcat/webapps/
#stop and start the tomcat
sh tomcat/bin/shutdown.sh
sleep 2
sh tomcat/bin/startup.sh
