-- 1. SCHEMA
-- ROLES
CREATE TABLE IF NOT EXISTS roles
(
    id bigint NOT NULL,
    active boolean DEFAULT true,
    created timestamp without time zone,
    updated timestamp without time zone,
    name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT roles_pkey PRIMARY KEY (id),
    CONSTRAINT uk_ofx66keruapi6vyqpv6f2or37 UNIQUE (name)
);

-- USERS
CREATE TABLE IF NOT EXISTS users
(
    id bigint NOT NULL,
    active boolean DEFAULT true,
    created timestamp without time zone,
    updated timestamp without time zone,
    is_account_non_expired boolean DEFAULT true,
    is_credentials_non_expired boolean DEFAULT true,
    email character varying(255) COLLATE pg_catalog."default",
    name character varying(255) COLLATE pg_catalog."default",
    password character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

-- USER_ROLES
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
);

