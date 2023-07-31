-- 1. SCHEMA

-- ROLES
DROP TABLE IF EXISTS roles;
CREATE TABLE IF NOT EXISTS roles
(
    id bigint NOT NULL,
    active boolean DEFAULT true,
    created timestamp without time zone,
    updated timestamp without time zone,
    name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT roles_pkey PRIMARY KEY (id),
    CONSTRAINT uk_ofx66keruapi6vyqpv6f2or37 UNIQUE (name)
)
TABLESPACE pg_default;

-- USERS
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users
(
    id bigint NOT NULL,
    active boolean DEFAULT true,
    created timestamp without time zone,
    updated timestamp without time zone,
    is_account_non_expired boolean DEFAULT true,
    is_credentials_non_expired boolean DEFAULT true,
    login character varying(255) COLLATE pg_catalog."default",
    password character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (id)
)
TABLESPACE pg_default;
-- USER_ROLES
DROP TABLE IF EXISTS user_role;
CREATE TABLE IF NOT EXISTS user_role
(
    user_id bigint NOT NULL,
    role_id bigint NOT NULL,
    CONSTRAINT fk3ye7x0q4755dawlhrriknrckq FOREIGN KEY (role_id)
        REFERENCES roles (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fknf85xeh20mwioj9m4mj1ibore FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;
-- PROPERTIES
DROP TABLE IF EXISTS properties;
CREATE TABLE properties (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  APPLICATION VARCHAR(25) NOT NULL,
  PROFILE VARCHAR(25) NOT NULL,
  LABEL VARCHAR(25) DEFAULT NULL,
  KEY VARCHAR(25) NOT NULL,
  VALUE VARCHAR(200) NOT NULL
);
-- 2. DATA

-- USERS
INSERT INTO users(id, active, created, is_account_non_expired, is_credentials_non_expired, login, password)
VALUES (1, true, '2023/07/18', true, true,'cezar@gmail.com', '$2a$12$G1UdbxJtZMTvp95oMiNXkOpCA.2RtDbz0FrLQDQMWPEQjtvZbcc3C');
INSERT INTO users(id, active, created, is_account_non_expired, is_credentials_non_expired, login, password)
VALUES (2, true, '2023/07/18', true, true,'jadina@gmail.com', '$2a$12$G1UdbxJtZMTvp95oMiNXkOpCA.2RtDbz0FrLQDQMWPEQjtvZbcc3C');
-- ROLES
INSERT INTO roles (id,name) VALUES (1,'ROLE_OPERATOR');
INSERT INTO roles (id,name) VALUES (2,'ROLE_ADMIN');
-- USER_ROLES
INSERT INTO user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 2);
-- PROPERTIES
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('myapp', 'MYCLIENT', '1.1', 'prop1', 'val11');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('myapp', 'MYCLIENT', '1.1', 'prop2', 'val12');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('myapp', 'MYCLIENT', '1.1', 'prop3', 'val13');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('myapp', 'MYCLIENT', '1.0', 'prop1', 'val21');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('myapp', 'MYCLIENT', '1.0', 'prop2', 'val22');
INSERT INTO PROPERTIES( APPLICATION, PROFILE, LABEL, KEY, VALUE)
values('myapp', 'MYCLIENT', '1.0', 'prop3', 'val23');