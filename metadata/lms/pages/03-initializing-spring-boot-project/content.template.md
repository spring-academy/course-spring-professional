## Purpose

This document will outline two ways to initialize your Spring Boot
projects:

- Spring Initializr
- Manual creation of build files

Developers may want to use the Spring Initializr to bootstrap their
Spring applications projects if they are not familiar with the starter
BOMS, or their organizations may compel them to use a custom Initializr
for security or legal compliance reasons.

Developers familiar with the Spring Boot starters BOMs and/or their
dependencies may wish to manually create their build files and manually
configure.

## Spring Initializr

### Business Case

While Spring Boot gives a robust framework to simplify dependency
management and configuration of Spring applications, the core framework
does not give a way to bootstrap the application development projects.

Maven provides a feature called "archetype" that has similar purpose,
to allow building instance of applications from templates.
It falls short, as it does not handle all the concerns of modern
Enterprise development.

The Spring Initializr is a framework for curating the creation of
Spring Boot application projects:

- Curate available Spring Boot Versions for use in an organization's
  Spring projects.

- Curate the available starters (BOMs) for a Spring Boot application.
  These may include what Spring Boot supplies out-of-box, or perhaps
  custom starters.

- Restrict and/or identify source repositories for BOMS (for
  Enterprise companies this will be an internal Maven repository, not
  Maven Central).

- Select available starter dependencies by an intuitive component
  name or tag.

You may also build you own Spring Initialzr site and APIs, see the
[Spring Initializr Documentation](https://docs.spring.io/initializr/docs/current/reference/html/)
for more information.

### Spring Starter Web Site

If you prefer to generate a Spring Boot project without aid of an IDE,
you may leverage the
[Spring Initializr website](http://start.spring.io/).

#### Getting started

1.  Post the Spring Initializr (here we are using the
    [Spring Starter Site](https://start.spring.io)).
    You will see the following:

    ![Spring Initializr Home](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/spring-initializr.png)

1.  Choose the project type.
    Either _Maven_ or _Gradle_ are supported.

1.  Choose the language type.
    The following are supported:

    - Java
    - Kotlin
    - Groovy

1.  Pick Spring Boot version.

    Note that the spring initializr shows the latest snapshot,
    milestone and stable releases.

    You will likely see slightly later versions.

1.  Enter the _group_ and _artifact_ names of your new project.

#### Dependencies

A key value point for the initializer is to help you select the
dependencies you need for your boot application.

1.  Click on the _Add Dependencies_ button,
    or use the key board short cuts:

    - Mac OS:
      _Cmd+B_

    - Windows/Linux:
      _Ctrl+B_

    You will see a dialog with a list of available starters,
    with a entry box at the top to type in the search criteria for the
    starters you wish to add:

    ![Spring Initializr Dependencies](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/spring-initializr-unfiltered.png)

1.  Enter the dependency tag(s) of what starter(s) you wish to build an
    application for in the _Dependencies >> Search for dependencies_
    box.

    For example:
    _Web_ is the tag for the `spring-boot-starter-web` BOM.

    You will see the following when attempting to filter by _Web_ tag:

    ![Spring Initializr Web Filtered](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/spring-initializr-web-filtered.png)

    This will select the starter and dependencies for a web application.

    You will see the following selected tag:

    ![Spring Initializr Web Selected](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/spring-initializr-web-selected.png)

#### Pre-reviewing the Spring Boot Project

1.  Click on the _Explore_ button,
    or use the hotkey _Ctrl+Space_.

    You will see the following:

    ![Spring Initializr Project Review](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/spring-initializr-review.png)

1.  View the navigation tree on the left.
    The `pom.xml` is the default selected artifact.
    You can optionally view all the code and configuration artifacts
    that the initializer will generate for you.

1.  View `pom.xml` in the details view.
    You can see the web starter that the initializer adds to the project
    on line 22.

1.  When you are done reviewing the project,
    click the _Close_ button,
    or type the _Escape_ hotkey to exit back to the initializer front
    page.

#### Generate the Spring Boot Project

1.  Click _Generate_ button,
    or type the hotkey:

    - Mac OS:
      _Cmd+Return_

    - Windows or Linux:
      _Ctrl+Return_

1.  A zip file will be generated and downloaded to your machine with the
    following contents:

    - Build file according to the appropriate build tool (i.e.
      `pom.xml` or `build.gradle`).

      The build file contains the `spring-boot-starter-parent`, the
      starter dependencies for the category you selected, as well as
      the `spring-boot-starter-test` test starter dependency.

    - A `src` directory containing a Spring Boot application file,
      a Spring Boot test shell file, and an empty
      `application.properties` file.

1.  This structure may be imported into either IDEA IntelliJ or Eclipse/
    STS IDEs.

### Spring Initializr IDE Support

#### STS

See here for instructions using the
[New Spring Boot Starter Wizard](https://github.com/spring-projects/sts4/wiki/Create-New-Spring-Boot-Projects).

#### IDEA IntelliJ

See the IntelliJ IDEA Guide
[Creating your Spring Boot Project](https://www.jetbrains.com/idea/guide/tutorials/your-first-spring-application/creating-spring-boot-application/)
article.

## Manual Configuration of Project Files

Configuring a Spring boot build file requires a few conceptuals steps:

1.  Generate a standard Java build file with a Maven Repository that
    hosts or proxies all the project dependencies.

1.  Adding a reference to a "parent" BOM or Spring Boot version.

1.  Adding a Spring Boot plugin, which handles packaging and dependency
    management of your application.

1.  Adding the Spring Boot starter dependencies, or (if you are feeling
    powerful, curate your dependencies by hand).

### Maven

The Spring Boot application Maven POM requires (in addition to the
standard Java application requirements):

1.  A parent of `spring-boot-starter-parent` -
    This results in subsequent dependencies rooting from the parent
    specified Spring version.

1.  Spring Boot Maven Plugin `spring-boot-maven-plugin` -
    It derives its version from the parent.

1.  Starter dependencies (or hand-crafted dependencies)

An example `pom.xml` might look like this:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.7.5</version>
    <relativePath/> <!-- lookup parent from repository -->
  </parent>
  <groupId>com.example</groupId>
  <artifactId>demo</artifactId>
  <version>0.0.1-SNAPSHOT</version>
  <name>demo</name>
  <description>Demo project for Spring Boot</description>
  <properties>
    <java.version>11</java.version>
  </properties>
  <dependencies>
    <dependency>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <dependency>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-test</artifactId>
      <scope>test</scope>
    </dependency>
  </dependencies>

  <build>
```

### Gradle

The Spring Boot application Gradle build file requires (in addition to
the standard Java application requirements):

1.  Spring Boot Gradle Plugin `spring-boot-gradle-plugin`.

1.  You must `apply` the 'org.springframework.boot' and
    'io.spring.dependency-management' plugins.

1.  Starter dependencies (or hand-crafted dependencies) -
    The starter dependencies derive their versions from the
    'io.spring.dependency-management' plugin.

An example `build.gradle` file might look like this:

```gradle
plugins {
  id 'org.springframework.boot' version '2.7.5'
  id 'io.spring.dependency-management' version '1.0.11.RELEASE'
  id 'java'
}

group = 'com.example'
version = '0.0.1-SNAPSHOT'
sourceCompatibility = '11'

repositories {
  mavenCentral()
}

dependencies {
  implementation 'org.springframework.boot:spring-boot-starter-web'
  testImplementation 'org.springframework.boot:spring-boot-starter-test'
}

tasks.named('test') {
  useJUnitPlatform()
}
```

with its `settings.gradle` containing the `rootProject.ame` like this:

```gradle
rootProject.name = 'demo'
```

## BOMs, their dependencies, and dependency management

While this article should get you up and running with Spring Boot
starters, it is worth warning that it is imperative to understand both
the direct and transitive dependencies of the Spring Boot and Spring
Boot derived projects (for example, Spring Cloud).

When dealing with refactoring or decomposition of complex
component-based projects, it may be necessary in some cases to forgo use
of the starters and curate dependencies by hand.

it is worth getting familiar with use of dependency management tools
associated with your build system.

For Maven, the `dependency`
[plugin](https://maven.apache.org/plugins/maven-dependency-plugin/usage.html),
and in particular the `dependency:tree` goal will be your friend.

For Gradle, check out the following tasks:

- `dependencies`, see
  [Managing Dependencies](https://docs.gradle.org/current/userguide/dependency_management_for_java_projects.html)
- `dependencyManagement`, part of
  [Spring Dependency Management plugin](https://github.com/spring-gradle-plugins/dependency-management-plugin)
