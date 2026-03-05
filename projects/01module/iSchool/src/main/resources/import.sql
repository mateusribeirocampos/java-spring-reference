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

-- HTML CONTENT LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('HTML5 Fundamentals - Introduction', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Complete guide to HTML5 structure, elements, and best practices', 'https://www.devsuperior.com/html_intro_video');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Semantic HTML Deep Dive', 2, 2);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Understanding semantic tags: header, nav, main, article, section, footer', 'https://www.devsuperior.com/html_semantic_video');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('HTML Forms and Validation', 3, 3);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Creating interactive forms with input types, validation, and accessibility', 'https://www.devsuperior.com/html_forms_video');

-- HTML TASK LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('HTML Practice - Build a Personal Page', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Create a personal portfolio page using HTML5 semantic elements', 3, 2, 2.0, TIMESTAMP WITH TIME ZONE '2026-04-10T23:59:59Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('HTML Challenge - Responsive Navigation', 5, 2);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (5, 'Build a responsive navigation menu with dropdowns using semantic HTML', 4, 3, 2.5, TIMESTAMP WITH TIME ZONE '2026-04-17T23:59:59Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('HTML Project - Complete Registration Form', 6, 3);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (6, 'Create a complete user registration form with all HTML5 input types and validation', 5, 4, 3.0, TIMESTAMP WITH TIME ZONE '2026-04-24T23:59:59Z');

-- SQL CONTENT LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('SQL Database Design Fundamentals', 1, 4);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (7, 'Introduction to relational databases, tables, and basic SQL commands', 'https://www.devsuperior.com/sql_fundamentals_video');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Creating Tables and Relationships', 2, 5);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (8, 'Learn about primary keys, foreign keys, and different types of relationships', 'https://www.devsuperior.com/sql_tables_video');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Data Normalization Deep Dive', 3, 6);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (9, 'Complete guide to 1NF, 2NF, 3NF with practical examples', 'https://www.devsuperior.com/sql_normalization_video');

-- SQL TASK LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('SQL Practice - Database Creation', 4, 4);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (10, 'Create a database for a library system with books, authors, and members', 4, 3, 2.5, TIMESTAMP WITH TIME ZONE '2026-05-01T23:59:59Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('SQL Challenge - Complex Relationships', 5, 5);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (11, 'Design tables for an e-commerce platform with products, orders, customers, and payments', 5, 4, 3.0, TIMESTAMP WITH TIME ZONE '2026-05-08T23:59:59Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('SQL Project - Database Normalization', 6, 6);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (12, 'Take a denormalized spreadsheet and normalize it to 3NF with proper relationships', 6, 4, 3.5, TIMESTAMP WITH TIME ZONE '2026-05-15T23:59:59Z');

-- JAVA CONTENT LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Java OOP - Classes and Objects', 1, 7);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (13, 'Understanding classes, objects, constructors, and methods in Java', 'https://www.devsuperior.com/java_classes_video');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Java OOP - Inheritance and Polymorphism', 2, 8);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (14, 'Deep dive into inheritance hierarchies, method overriding, and polymorphic behavior', 'https://www.devsuperior.com/java_inheritance_video');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Java OOP - Encapsulation and Abstraction', 3, 9);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (15, 'Learn about data hiding, getters/setters, abstract classes, and interfaces', 'https://www.devsuperior.com/java_encapsulation_video');

-- JAVA TASK LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Java Practice - Class Design', 4, 7);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (16, 'Design and implement classes for a university system with students, professors, and courses', 4, 3, 2.5, TIMESTAMP WITH TIME ZONE '2026-05-20T23:59:59Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Java Challenge - Inheritance Hierarchy', 5, 8);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (17, 'Create an inheritance hierarchy for different types of employees and implement polymorphic behavior', 5, 4, 3.0, TIMESTAMP WITH TIME ZONE '2026-05-27T23:59:59Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Java Project - Complete OOP Application', 6, 9);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (18, 'Build a complete banking application using all OOP concepts: classes, inheritance, polymorphism, encapsulation, and interfaces', 8, 5, 4.0, TIMESTAMP WITH TIME ZONE '2026-06-05T23:59:59Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (3, 1, 1);

INSERT INTO tb_deliver(uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://www.ischool.com/curso_HTML', TIMESTAMP WITH TIME ZONE '2026-06-05T23:59:59Z', 1, 'The lesson will be corrected in two days', 1, 4, 1, 1);
INSERT INTO tb_deliver(uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://www.ischool.com/curso_Java', TIMESTAMP WITH TIME ZONE '2026-06-06T23:59:59Z', 1, 'The lesson will be corrected in two days', 1, 16, 2, 2);