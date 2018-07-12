FROM 192.168.199.249:5000/java:1.8


WORKDIR /opt/

COPY /home/jenkins/workspace/Test20/target/dropwizard-helloworld-0.0.1-SNAPSHOT.jar /opt/
COPY /home/jenkins/workspace/Test20/config /opt/

ENTRYPOINT ["java","-jar","/dropwizard-helloworld-0.0.1-SNAPSHOT.jar server config/dev_config.yml"]