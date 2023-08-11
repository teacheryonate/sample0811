# FROM openjdk:11-jdk
# ARG JAR_FILE=builds/libs/*.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "app.jar"]

# Docker 이미지의 기반이 될 이미지 선택 (OpenJDK 11 기반)
FROM openjdk:11-jdk

# 작업 디렉토리 생성
WORKDIR /app

# 호스트의 build/libs 폴더에서 생성된 Spring Boot JAR 파일을 이미지 내 /app 폴더로 복사
COPY build/libs/*.jar app.jar

# 컨테이너 실행 시 실행될 명령 (Spring Boot 애플리케이션 실행)
CMD ["java", "-Dspring.profiles.active=docker", "-jar", "app.jar"]
