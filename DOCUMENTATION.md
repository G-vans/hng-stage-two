# API Documentation

This document provides comprehensive documentation for the HNG STAGE TWO REST API, which allows you to perform CRUD operations on Person model.

## Table of Contents

- [API Overview](#api-overview)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [API Endpoints](#api-endpoints)
  - [Create a New Person](#create-a-new-person)
  - [Fetch Details of a Person](#fetch-details-of-a-person)
  - [Modify Details of an Existing Person](#modify-details-of-an-existing-person)
  - [Remove a Person](#remove-a-person)
- [Error Handling](#error-handling)
  - [400 Bad Request](#400-bad-request)
  - [404 Not Found](#404-not-found)
  - [422 Unprocessable Entity](#422-unprocessable-entity)
  - [500 Internal Server Error](#500-internal-server-error)


## API Overview

The HNG STAGE TWO API allows you to perform CRUD operations on a "Person" model. You can create, read, update, and delete person records using the provided endpoints.

## Getting Started

To use the API, follow these instructions:

### Prerequisites

Before getting started, ensure you have the following prerequisites installed on your system:

- Ruby (version 3.0 or higher)
- Rails (version 7.0.6)
- PostgreSQL

### Installation

To get started with the API locally, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone git@github.com:G-vans/hng-stage-two.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd hng-stage-two
   ```

3. **Install the required gems:**

   ```bash
   bundle install
   ```

4. **Create and migrate the database:**

   ```bash
   rails db:create
   rails db:migrate
   ```

5. **Start the Rails server:**

   ```bash
   rails server
   ```

   Your API should now be running locally at `http://localhost:3000`.

## API Endpoints

The following are the available API endpoints and their functionalities:

### Create a New Person

**Endpoint:** `POST /api/`

**Description:** Create a new person record.

**Create a New Person Request:**

- **HTTP Method:** POST
- **URL:** `/api/`
- **Request Body (JSON):**

   ```json
   {
     "name": "John Doe",
     "email": "johndoe@example.com",
     "age": 30
   }
   ```

**Create a New Person Response:**

- **Response Body (JSON):**

   ```json
   {
     "id": 1,
     "name": "John Doe",
     "email": "johndoe@example.com",
     "age": 30,
     "created_at": "2023-09-11T14:34:03.007Z",
     "updated_at": "2023-09-11T14:34:03.007Z"
   }
   ```

### Fetch Details of a Person

**Endpoint:** `GET /api/:id`

**Description:** Fetch details of a specific person.

**Fetch Person Details Response:**

- **Response Body (JSON):**

   ```json
   {
     "id": 1,
     "name": "John Doe",
     "email": "johndoe@example.com",
     "age": 30,
     "created_at": "2023-09-11T14:34:03.007Z",
     "updated_at": "2023-09-11T14:34:03.007Z"
   }
   ```

### Modify Details of an Existing Person

**Endpoint:** `PUT /api/:id`

**Description:** Modify details of an existing person.

**Modify Person Details Request:**

- **HTTP Method:** PUT
- **URL:** `/api/:id`
- **Request Body (JSON):**

   ```json
   {
     "name": "Mark Stanley",
     "email": "mark@gmail.com",
     "age": 35
   }
   ```

**Modify Person Details Response:**

- **Response Body (JSON):**

   ```json
   {
     "id": 1,
     "name": "Mark Stanley",
     "email": "mark@gmail.com",
     "age": 35,
     "created_at": "2023-09-11T14:34:03.007Z",
     "updated_at": "2023-09-11T14:36:59.097Z"
   }
   ```

### Remove a Person

**Endpoint:** `DELETE /api/:id`

**Description:** Remove a person.

**Remove Person Response:**

- **Response Body (JSON):**

   ```json
   {
     "message": "Person removed successfully."
   }
   ```

## Error Handling

This section outlines the possible error responses that one might encounter when using the API. Each error response includes an HTTP status code and a corresponding JSON error message.

### 400 Bad Request

- **Status Code:** 400
- **JSON Error Response:**

   ```json
   {
     "error": "Bad Request",
     "message": "The request is invalid or missing required parameters."
   }
   ```

### 404 Not Found

- **Status Code:** 404
- **JSON Error Response:**

   ```json
   {
     "error": "Not Found",
     "message": "The requested resource was not found."
   }
   ```

### 422 Unprocessable Entity

- **Status Code:** 422
- **JSON Error Response:**

   ```json
   {
     "error": "Unprocessable Entity",
     "message": "The request was well-formed but semantically incorrect."
   }
   ```

### 500 Internal Server Error

- **Status Code:** 500
- **JSON Error Response:**

   ```json
   {
     "error": "Internal Server Error",
     "message": "An unexpected server error occurred. Please try again later."
   }
   ```


