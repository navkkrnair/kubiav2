FROM openjdk:8-jdk-alpine
ENV APPROOT="/usr/nobody"
WORKDIR $APPROOT    
ADD target/kubiav2-1.0.jar $APPROOT
EXPOSE 8080
USER nobody
ENTRYPOINT ["java"]
CMD ["-jar","-Xmx128m","-Xms128m","-Djava.security.egd=file:/dev/./urandom", "/usr/nobody/kubiav2-1.0.jar"]