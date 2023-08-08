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
