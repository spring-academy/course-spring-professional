## Purpose

This document describes options for running Maven or
Gradle-based Spring
Boot applications, both at the command line and within an IDE.

## Command line

### Command Line via Java

The simplest way to run a Spring Boot app is directly via Java through
a packaged Spring Boot jar file.

```bash
java -jar 32-jdbc-autoconfig-solution-5.3.18.jar
```

### Command Line via Maven

You may run from the multi-module root.
Under the `lab` directory, run with the Maven wrapper running
as follows:

```bash
./mvnw -pl 00-rewards-common -pl 01-rewards-db clean install (need to be done just once)
./mvnw -pl <lab project module> clean spring-boot:run
```

Or you can run from the project directory:

```bash
../mvnw clean spring-boot:run
```

### Command Line via Gradle

You may run from the multi-module root.
Under the `lab` directory, run with the Gradle wrapper running
as follows:

```bash
./gradlew <lab project module>:clean <lab project module>:bootRun
```

Or you can run from the project directory:

```bash
../gradlew clean bootRun
```

### STS

For Spring Tool Suite,
checkout the community documentation:
[Working With Local Projects](https://github.com/spring-projects/sts4/wiki/Introduction-And-Working-With-Local-Projects)

### IntelliJ

While you can run the Spring Boot application main class just as a
standard Java application,
you can also run from the
[Services Tool Window](https://www.jetbrains.com/help/idea/using-services-tool-window.html):

![Idea Service Run Configuration](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/idea-service-add-run-config.png)

and selecting _Spring Boot_ from the _Run Configuration Type_:

![Idea Service Run Boot Configuration](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/idea-service-add-boot-config.png).

You will then see (and can run) the boot applications in your project.

![Idea Service Boot Configurations](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/idea-service-show-boot-apps.png).
