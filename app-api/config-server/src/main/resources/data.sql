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
values('api-gateway', 'dev', 'latest', 'server.ssl', 'true');
-- API GATEWAY
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'spring.application.name', 'api-gateway');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.port', '8765');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'server.servlet.context-path', '/api');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'eureka.client.service-url.defaultZone', 'https://localhost:8761/eureka');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.user.service-id', 'users');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('api-gateway', 'dev', 'latest', 'zuul.routes.user.path', '/users/**');
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
