FROM tomcat

WORKDIR /usr/local/tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/solo /usr/local/tomcat/webapps/ROOT