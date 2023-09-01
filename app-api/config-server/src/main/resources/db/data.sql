-- EUREKA SERVER
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'local', 'latest', 'spring.application.name', 'eureka-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'local', 'latest', 'server.port', '8761');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'local', 'latest', 'eureka.client.register-with-eureka', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'local', 'latest', 'eureka.client.fetch-registry', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'local', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');
-- API GATEWAY
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'spring.application.name', 'api-gateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'server.port', '8080');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'server.servlet.contextPath', '/api');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'zuul.routes.user.service-id', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'zuul.routes.user.path', '/users/**');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'zuul.routes.authentication.service-id', 'authentication');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'zuul.routes.authentication.path', '/authentication/**');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'zuul.routes.authentication.sensitive-headers', 'Cookie,Set-Cookie');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'hystrix.command.default.execution.isolation.thread.timeoutInMilliseconds', '60000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'ribbon.ConnectTimeout', '10000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'ribbon.ReadTimeout', '20000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.swagger-ui.operationsSorter', 'method');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.swagger-ui.tryItOutEnabled', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.swagger-ui.tagsSorter', 'alpha');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.swagger-ui.filter', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.swagger-ui.path', 'docs-ui');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.swagger-ui.path', 'docs-ui');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.api-docs.path', '/api-docs');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'springdoc.packages-to-scan', 'br.brazona.apigateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'baf.openapi.dev-url', 'http://localhost:8080');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'baf.openapi.prod-url', 'https://bezkoder-api.com');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'public.routes', '{"/authorization/oauth/token"}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'oauth.client.name', 'DEVELOP_WUhS4Z7brQ');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'oauth.client.secret', 'KM849FSR3I9FNC9OTBSR');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'jwt.secret', '4Z3POIKX6EXFQ07TTPLF');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'local', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');
-- USERS
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.application.name', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'server.port', '${PORT:0}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'eureka.instance.instance-id', '${spring.application.name}:${spring.application.instance_id:${random.value}}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.liquibase.url', 'jdbc:postgresql://localhost:5432/brazona-agile-framework');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.liquibase.user', 'postgres');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.liquibase.password', '011112');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.liquibase.change-log', 'classpath:db/changelog-master.yml');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.datasource.url', 'jdbc:postgresql://localhost:5432/brazona-agile-framework');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.datasource.username', 'postgres');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.datasource.password', '011112');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.datasource.driver-class-name', 'org.postgresql.Driver');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.jpa.hibernate.ddl-auto', 'none');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.jpa.database-platform', 'org.hibernate.dialect.PostgreSQL9Dialect');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'spring.jpa.properties.hibernate.temp.use_jdbc_metadata_defaults', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'oauth.client.name', 'DEVELOP_WUhS4Z7brQ');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'oauth.client.secret', 'KM849FSR3I9FNC9OTBSR');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'jwt.secret', '4Z3POIKX6EXFQ07TTPLF');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'local', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');
-- AUTHENTICATION
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'server.port', '${PORT:0}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'eureka.instance.instance-id', '${spring.application.name}:${spring.application.instance_id:${random.value}}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'oauth.client.name', 'DEVELOP_WUhS4Z7brQ');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'oauth.client.secret', 'KM849FSR3I9FNC9OTBSR');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'jwt.secret', '4Z3POIKX6EXFQ07TTPLF');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'local', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');


-----DOCKER

-- EUREKA SERVER
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'spring.application.name', 'eureka-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.port', '8761');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'eureka.client.register-with-eureka', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'eureka.client.fetch-registry', 'false');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');
-- API GATEWAY
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'spring.application.name', 'api-gateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.port', '8080');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.servlet.contextPath', '/api');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.user.service-id', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.user.path', '/users/**');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.authentication.service-id', 'authentication');
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
values('api-gateway', 'dev', 'latest', 'public.routes', '{"/authorization/oauth/token"}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'oauth.client.name', 'DEVELOP_WUhS4Z7brQ');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'oauth.client.secret', 'KM849FSR3I9FNC9OTBSR');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'jwt.secret', '4Z3POIKX6EXFQ07TTPLF');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'http://br-eureka-server:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');
-- USERS
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.application.name', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'server.port', '${PORT:0}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'eureka.instance.instance-id', '${spring.application.name}:${spring.application.instance_id:${random.value}}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.url', 'jdbc:postgresql://br-postgres-db:5432/brazona-agile-framework');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.user', 'baf_develop');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.password', 'Z6B98OHZUW');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.liquibase.change-log', 'classpath:db/changelog-master.yml');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.url', 'jdbc:postgresql://br-postgres-db:5432/brazona-agile-framework');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.username', 'baf_develop');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'spring.datasource.password', 'Z6B98OHZUW');
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
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'oauth.client.name', 'DEVELOP_WUhS4Z7brQ');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'oauth.client.secret', 'KM849FSR3I9FNC9OTBSR');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'jwt.secret', '4Z3POIKX6EXFQ07TTPLF');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'http://br-eureka-server:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('users', 'dev', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');
-- AUTHENTICATION
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'server.port', '${PORT:0}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'eureka.instance.instance-id', '${spring.application.name}:${spring.application.instance_id:${random.value}}');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'logging.level.org.springframework.security', 'DEBUG');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'oauth.client.name', 'DEVELOP_WUhS4Z7brQ');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'oauth.client.secret', 'KM849FSR3I9FNC9OTBSR');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'jwt.secret', '4Z3POIKX6EXFQ07TTPLF');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'http://br-eureka-server:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication', 'dev', 'latest', 'management.endpoints.web.exposure.include', 'health,info,prometheus');




