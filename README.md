# IMDB CLONE FULLSTACK PROJECT

## Overview

This project is a full-stack application designed for managing movies and their cast details. It includes a React frontend, a Spring Boot backend, and a MySQL database, all containerized with Docker. This project follows the MVC design pattern.

## Prerequisites

Before you begin, ensure you have the following installed:

1. **VSCode** (or any IDE of choice): [Install VSCode](https://code.visualstudio.com/Download)
2. **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
3. **Node.js** (for frontend development): [Install Node.js](https://nodejs.org/)
4. **Java JDK 17** (for backend development): [Install Java JDK 17](https://www.oracle.com/java/technologies/downloads/)
5. **MYSQL 8** (for database management): [Install MYSQL 8](https://dev.mysql.com/downloads/)

## Access the Application

- To run the app, make sure you are in root directory and execute the command: `docker compose up --build`
- To stop the app make sure you are in root directory and execute the command: `docker compose down`

- **Frontend Main UI (React/Vite):**
  - URL: http://localhost:3000
  - Description: The main user interface where you can search for movies, view movie details, and manage cast members.

- **Backend (Spring Boot):**
  - URL: http://localhost:8080
  - Description: The API endpoint for interacting with movie and cast data.

- **Swagger UI (Springdoc OpenAPI):**
  - URL: http://localhost:8080/swagger-ui/index.html
  - Description: The Swagger UI for exploring and testing the API endpoints.

- **Database (MySQL):**
  - URL: `jdbc:mysql://localhost:3306/imdb_clone`
  - Username: `root`
  - Password: `root1234`
  - Description: The MySQL database used for storing movie and cast information.

## Technology Stack

- **Frontend:**

  - React (TypeScript)
  - Vite (for development and build)
  - Bootstrap (for styling)
  - Axios (for HTTP requests)
  - React-Router-Dom (for routing)

- **Backend:**

  - Java(17) SpringBoot(Maven)
  - Jakarta Persistence API (for ORM and data persistence)
  - Spring Web (for creating RESTful services)
  - Springdoc OpenAPI (for auto-generating API documentation)
  - Lombok (for reducing boilerplate code)
  - Flyway (for automated database migrations, sql migration files are found in backend/src/main/resources/db/migration)

- **Database:**

  - MySQL 8

- **Containerization:**

  - Docker

