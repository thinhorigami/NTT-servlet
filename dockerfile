FROM maven AS BUILD

COPY src /home/demo/src
COPY pom.xml /home/demo

RUN mvn -f /home/demo/pom.xml clean package

FROM tomcat

COPY --from=build /home/demo/target/demo.war $CATALINA_HOME/webapps/

ENTRYPOINT [ "catalina.sh", "run" ]