# Express Typescript Docker Development Template

A Dockerized Express.js application with TypeScript, optimized for both development and production environments.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

To set up and run the application, follow these steps:

### 1. Clone the Repository:

Clone the repository to your local machine:

    git clone https://github.com/KNguyen-1411/express-ts-docker-template.git

### 2. Navigate to the Cloned Repository:

Change directory into the project folder:

    cd express-ts-docker-template

### 3. Build and Start Docker Containers:

Build and start the containers using Docker Compose. This command runs the application in the background in development mode:

    docker compose up --build -d

The application will be accessible at `http://localhost:3000`.

## Development Environment

- The application starts in **development mode** by default, with **hot reload** enabled for seamless development.
- You can easily switch between **development** and **production** modes by adjusting the `target` setting in `docker-compose.yml`.

## Built With

- Node.js
- Express.js
- TypeScript
- Docker

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

## Author

- **Khánh Nguyên**  
  _30-11-2024_

---

Thank you for checking out this project! Have a productive day with Express and TypeScript!
