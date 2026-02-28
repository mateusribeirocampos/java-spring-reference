INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Alex', 'Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Bob', 'Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Maria', 'Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://img.com/html-color.png', 'https://img.com/html-gray.png');
INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp Java', 'https://img.com/java-color.png', 'https://img.com/java-gray.png');
INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp SQL', 'https://img.com/sql-color.png', 'https://img.com/sql-gray.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', '2022-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-09-01T03:00:00Z', '2022-09-01T03:00:00Z', 2);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-03-01T03:00:00Z', '2023-03-01T03:00:00Z', 3);
