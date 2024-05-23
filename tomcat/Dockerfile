# Use the official Tomcat 9 image as the base image
FROM tomcat:9.0-jdk11

RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps

COPY ./JavaBridge.war /usr/local/tomcat/webapps/JavaBridge.war
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./catalina.properties /usr/local/tomcat/conf/catalina.properties
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./context.xml /usr/local/tomcat/webapps/docs/META-INF/context.xml
COPY ./context.xml /usr/local/tomcat/webapps/examples/META-INF/context.xml
COPY ./context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY ./context.xml /usr/local/tomcat/conf/context.xml
COPY ./setenv.sh /usr/local/tomcat/bin/setenv.sh

EXPOSE 8080

CMD ["catalina.sh", "run"]