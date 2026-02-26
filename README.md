# Java Spring Reference

A practical reference repository covering a wide range of tools and features within the Spring ecosystem. Each module focuses on a specific topic, combining conceptual explanation with hands-on implementation.

## Topics Covered

- Complex domain modeling
- Transactional emails
- File upload with Amazon S3
- API documentation with Swagger
- API versioning
- HATEOAS
- NoSQL databases (MongoDB and Cassandra)
- Reactive programming with Spring WebFlux
- Batch processing with Spring Batch

## Repository Structure

```
spring-boot-reference/
├── docs/               # Course materials and references by module
└── projects/           # Practical projects organized by module
    └── 01module/
        └── iSchool/    # Complex domain modeling project
```

## Tech Stack

- Java 17 / 21
- Spring Boot 3 / 4
- Maven
- H2 (tests) / PostgreSQL
- Docker (MongoDB, Cassandra)
- Amazon AWS S3

## Projects

### Module 1 — Complex Domain Modeling
**Project:** `iSchool`

Models a learning platform domain with users, roles, courses and enrollments. Covers complex JPA relationships including One-to-Many, Many-to-Many, association classes and inheritance.

## Getting Started

Each project under `projects/` is a standalone Spring Boot application. To run:

```shell
cd projects/<module>/<project>
./mvnw spring-boot:run
```
