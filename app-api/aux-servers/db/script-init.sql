-- Table: roles

-- DROP TABLE IF EXISTS roles;

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

ALTER TABLE IF EXISTS roles
    OWNER to develop;

-- Table: users

-- DROP TABLE IF EXISTS users;

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

ALTER TABLE IF EXISTS users
    OWNER to develop;

-- Table: tb_user_role

-- DROP TABLE IF EXISTS tb_user_role;

CREATE TABLE IF NOT EXISTS tb_user_role
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

ALTER TABLE IF EXISTS tb_user_role
    OWNER to develop;


INSERT INTO users(id, active, created, is_account_non_expired, is_credentials_non_expired, login, password)
VALUES (1, true, '2023/07/18', true, true,'nina@gmail.com', '$2a$12$G1UdbxJtZMTvp95oMiNXkOpCA.2RtDbz0FrLQDQMWPEQjtvZbcc3C');
INSERT INTO users(id, active, created, is_account_non_expired, is_credentials_non_expired, login, password)
VALUES (2, true, '2023/07/18', true, true,'leia@gmail.com', '$2a$12$G1UdbxJtZMTvp95oMiNXkOpCA.2RtDbz0FrLQDQMWPEQjtvZbcc3C');

INSERT INTO roles (id,name) VALUES (1,'ROLE_OPERATOR');
INSERT INTO roles (id,name) VALUES (2,'ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);