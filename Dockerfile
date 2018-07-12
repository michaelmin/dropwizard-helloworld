FROM 192.168.199.249:5000/java:1.8


WORKDIR /opt/

COPY ./target/dropwizard-helloworld-0.0.1-SNAPSHOT.jar /opt/
COPY ./config /opt/

ENTRYPOINT ["java","-jar","/dropwizard-helloworld-0.0.1-SNAPSHOT.jar server config/dev_config.yml"]