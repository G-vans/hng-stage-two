
# HNG STAGE TWO

This is a REST API that performs CRUD operations on Person model.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Endpoints](#endpoints)
- [Running Tests](#running-tests)
- [Contributing](#contributing)

## Getting Started

The API is deployed and can be tested [here](insert_link_to_deployed_API).
To get started with the API and run it locally, you can follow these instructions:

### Prerequisites

You need to have the following installed on your system:

- Ruby (version 3.0 or higher)
- Rails (version 7.0.6 )
- PostgreSQL

### Installation

1. Clone the repository:

   ```bash
   git clone git@github.com:G-vans/hng-stage-two.git
   ```

2. Navigate to the project directory:

   ```bash
   cd hng-stage-two
   ```

3. Install the required gems:

   ```bash
   bundle install
   ```

4. Create and migrate the database:

   ```bash
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:

   ```bash
   rails server
   ```

Your API should now be running locally at `http://localhost:3000`.

## Usage

The following are the available API endpoints:

### Creating a New Person

To create a new person, make a `POST` request to the following endpoint:

```
POST /api/
```

Include the following JSON data in the request body:

```json
{
  "name": "John Doe",
  "email": "johndoe@example.com",
  "age": 30
}
```

### Fetching Details of a Person

To fetch details of a person, make a `GET` request to the following endpoint:

```
GET /api/:id
```

Replace `:id` with the ID of the person you want to retrieve.

### Modifying Details of an Existing Person

To modify the details of an existing person, make a `PUT` request to the following endpoint:

```
PUT /api/:id
```

Include the updated JSON data in the request body.

### Removing a Person

To remove a person, make a `DELETE` request to the following endpoint:

```
DELETE /api/:id
```

Replace `:id` with the ID of the person you want to delete.

## Endpoints

A summary of the available API endpoints and their functionality.

- `POST /api/`: Create a new person.
- `GET /api/:id`: Fetch details of a person.
- `PUT /api/:id`: Modify details of an existing person.
- `DELETE /api/:id`: Remove a person.

## Running Tests

To run the RSpec tests for this project, use the following command:

```bash
rspec
```

## Contributing

Contributions are welcome! If you find any issues or want to add new features, feel free to create a pull request.

