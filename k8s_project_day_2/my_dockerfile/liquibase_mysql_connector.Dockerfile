FROM liquibase/liquibase:4.23.2
RUN mkdir -p /liquibase/classpath && wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.30/mysql-connector-java-8.0.30.jar -O /liquibase/classpath/mysql-connector-java.jar
RUN mkdir -p /liquibase/changelog
COPY liquibase_changelog/* /liquibase/changelog/
