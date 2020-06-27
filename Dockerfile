FROM openjdk:8-jre
MAINTAINER Lusifer <topsale@vip.qq.com>
ENV APP_VERSION 1.0.3.RELEASE
RUN mkdir /app
COPY missyou-all-$APP_VERSION.jar /app/app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar", "--spring.profiles.active=prod"]
EXPOSE 8080