-- DEFAUlT
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('default', 'dev', 'latest', 'oauth.client.name', 'myappname123');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('default', 'dev', 'latest', 'oauth.client.secret', 'myappsecret123');
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
values('eureka-server', 'dev', 'latest', 'server.ssl.key-store', 'classpath:br_eureka_app.p12');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.ssl.key-store-password', 'BOsaPRSp6w');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.ssl.key-alias', 'br_eureka_app');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.ssl.key-store-type', 'PKCS12');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.ssl.key-store-provider', 'SUN');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'server.ssl', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'spring.boot.admin.client.username', 'admin');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('eureka-server', 'dev', 'latest', 'spring.boot.admin.client.password', 'admin');
-- API GATEWAY
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'spring.application.name', 'api-gateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.port', '8080');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.servlet.context-path', '/api');
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
values('api-gateway', 'dev', 'latest', 'server.ssl.key-store', 'classpath:br_api_gateway_app.p12');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.ssl.key-store-password', 'ZMOt1YLIs9');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.ssl.key-alias', 'br_api_gateway_app');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.ssl.key-store-type', 'PKCS12');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.ssl.key-store-provider', 'SUN');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.ssl', 'true');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'https://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'spring.security.oauth2.resourceserver.jwt.jwk-set-uri', 'http://localhost:8484/auth/realms/brazona-agile-framework');
-- AUTHENTICATION SERVER
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'spring.application.name', 'authentication-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'server.port', '8765');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'hystrix.command.default.execution.isolation.thread.timeoutInMilliseconds', '60000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'ribbon.ConnectTimeout', '10000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'ribbon.ReadTimeout', '20000');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'https://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'security.oauth2.client.access-token-uri', 'http://localhost:8484/auth/realms/brazona-agile-framework/protocol/openid-connect/token');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'security.oauth2.client.client-id', 'authentication-server');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'security.oauth2.client.client-secret', '60a3488a-eb6a-4359-9a33-762e972229ac');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('authentication-server', 'dev', 'latest', 'security.oauth2.client.grant-type', 'password');
