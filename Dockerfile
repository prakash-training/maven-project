FROM tomcat:8
COPY webapp/target/*.war /usr/share/webapps
