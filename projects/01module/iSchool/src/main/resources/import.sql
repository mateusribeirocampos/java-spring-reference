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

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Confirm your subscription', TIMESTAMP WITH TIME ZONE '2025-11-20T03:00:00Z', false, 'https://www.ischool.com/subscription', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Confirm your subscription', TIMESTAMP WITH TIME ZONE '2025-12-20T03:00:00Z', false, 'https://www.ischool.com/subscription', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Confirm your subscription', TIMESTAMP WITH TIME ZONE '2025-11-20T03:00:00Z', false, 'https://www.ischool.com/subscription', 3);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Programação Orientada a objeto - java', 'Classes, herança e polimorfismo', 1, 'https://www.ischool.com/curso_java', 1, 'https://www.baeldung.com/oop_java', 2);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('HTML5 Fundamentals', 'Semantic HTML, forms, and multimedia elements', 1, 'https://www.ischool.com/curso_html', 1, 'https://www.w3schools.com/html/', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('SQL Database Design', 'Tables, relationships, and normalization', 1, 'https://www.ischool.com/curso_sql', 1, 'https://www.postgresqltutorial.com/', 4);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Introduction to HTML', 'Learn the basics of HTML structure and document setup', 1, 'https://www.ischool.com/sections/html_intro.jpg', 2, NULL);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Semantic HTML Elements', 'Understanding header, nav, main, article, section, and footer tags', 2, 'https://www.ischool.com/sections/html_semantic.jpg', 2, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Forms and Input Validation', 'Creating user-friendly forms with HTML5 validation', 3, 'https://www.ischool.com/sections/html_forms.jpg', 2, 2);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Database Fundamentals', 'Understanding what databases are and why we use them', 1, 'https://www.ischool.com/sections/sql_fundamentals.jpg', 3, NULL);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Creating Tables and Relationships', 'Learn about primary keys, foreign keys, and table relationships', 2, 'https://www.ischool.com/sections/sql_tables.jpg', 3, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Data Normalization Techniques', 'First, second, and third normal forms explained with examples', 3, 'https://www.ischool.com/sections/sql_normalization.jpg', 3, 2);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Introduction to Classes and Objects', 'Understanding the fundamentals of object-oriented programming', 2, 'https://www.ischool.com/sections/java_oo_intro.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Inheritance and Polymorphism', 'Understanding inheritance hierarchies and polymorphic behavior', 3, 'https://www.ischool.com/sections/java_inheritance.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Encapsulation and Abstraction', 'Data hiding and abstract classes vs interfaces', 4, 'https://www.ischool.com/sections/java_encapsulation.jpg', 1, 2);

-- Alex enrolled in Bootcamp HTML (Offer 1) - Active enrollment, no refund
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2025-11-20T03:00:00Z', NULL, true, false);

-- Bob enrolled in Bootcamp Java (Offer 3) - Active enrollment, no refund
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 3, TIMESTAMP WITH TIME ZONE '2025-11-21T03:00:00Z', NULL, true, false);

-- Maria enrolled in Bootcamp SQL (Offer 4) - Active enrollment, no refund
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (3, 4, TIMESTAMP WITH TIME ZONE '2025-11-22T03:00:00Z', NULL, true, false);

-- Bob also enrolled in Bootcamp HTML (Offer 2 - Edition 2.0) - Active enrollment
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2025-11-23T03:00:00Z', NULL, true, false);

-- Example of a refunded enrollment
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 2, TIMESTAMP WITH TIME ZONE '2025-11-24T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-11-25T03:00:00Z', false, false);