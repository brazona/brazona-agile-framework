-- EUREKA SERVER
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'spring.application.name', 'eureka-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.port', '8761');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'eureka.client.register-with-eureka', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'eureka.client.fetch-registry', 'false');
-- API GATEWAY
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'spring.application.name', 'api-gateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.port', '8080');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.user.service-id', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.user.path', '/users/**');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.authentication.service-id', 'authentication-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.authentication.path', '/authentication/**');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.authentication.sensitive-headers', 'Cookie,Set-Cookie');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'hystrix.command.default.execution.isolation.thread.timeoutInMilliseconds', '60000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'ribbon.ConnectTimeout', '10000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'ribbon.ReadTimeout', '20000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.swagger-ui.operationsSorter', 'method');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.swagger-ui.tryItOutEnabled', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.swagger-ui.tagsSorter', 'alpha');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.swagger-ui.filter', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.swagger-ui.path', 'docs-ui');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.api-docs.path', '/api-docs');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'springdoc.packages-to-scan', 'br.brazona.apigateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'baf.openapi.dev-url', 'http://localhost:8080');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'baf.openapi.prod-url', 'https://bezkoder-api.com');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'oauth.client.name', 'myappname123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'oauth.client.secret', 'myappsecret123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'jwt.secret', 'MY-JWT-SECRET');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'public.routes', '{"/authorization/oauth/token"}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
-- AUTHENTICATION SERVER
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'spring.application.name', 'authentication-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'server.port', '${PORT:0}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'hystrix.command.default.execution.isolation.thread.timeoutInMilliseconds', '60000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'ribbon.ConnectTimeout', '10000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'ribbon.ReadTimeout', '20000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'eureka.instance.instance-id', '${spring.application.name}:${spring.application.instance_id:${random.value}}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'oauth.client.name', 'myappname123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'oauth.client.secret', 'myappsecret123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'jwt.secret', 'MY-JWT-SECRET');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
-- USERS
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.application.name', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'server.port', '${PORT:0}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'eureka.instance.instance-id', '${spring.application.name}:${spring.application.instance_id:${random.value}}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'oauth.client.name', 'myappname123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'oauth.client.secret', 'myappsecret123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.url', 'jdbc:postgresql://localhost:5432/brazona-agile-framework');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.user', 'postgres');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.password', '011112');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.change-log', 'classpath:db/changelog-master.yml');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.url', 'jdbc:postgresql://localhost:5432/brazona-agile-framework');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.username', 'postgres');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.password', '011112');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.driver-class-name', 'org.postgresql.Driver');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.jpa.hibernate.ddl-auto', 'none');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.jpa.database-platform', 'org.hibernate.dialect.PostgreSQL9Dialect');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.jpa.properties.hibernate.temp.use_jdbc_metadata_defaults', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
