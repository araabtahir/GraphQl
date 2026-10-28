# GraphQL Library Tutorial

A hands-on GraphQL web application built using Node.js, Apollo Server, MySQL, HTML, and CSS.

## Features

- Fetch all authors using GraphQL queries.
- Fetch authors with their associated books.
- Fetch all books.
- Add a new book using a GraphQL mutation.
- Store author and book records in MySQL.

## Technologies Used

- Node.js
- Apollo Server
- GraphQL
- MySQL
- HTML and CSS
- JavaScript

## Requirements

- Node.js and npm
- MySQL Server
- Visual Studio Code
- Live Server extension for VS Code

## Setup Instructions

1. Clone or download this repository.
2. Open the project directory in the terminal.
3. Install dependencies:

   npm install

4. Create the database by running the SQL script:

   mysql -u root -p < schema.sql

5. Create a `.env` file in the project root:

   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=your_mysql_password

6. Start the GraphQL server:

   npm start

7. Open `public/index.html` using the VS Code Live Server extension.

The GraphQL API runs at http://localhost:4000/.

## Database

The `gqldemo` database contains two tables:

- `authors`
- `books`

The books table references authors through a foreign key.

## Example GraphQL Query

    query {
      authors {
        id
        name
        country
        books {
          id
          title
          year
        }
      }
    }

## Example Mutation

    mutation {
      addBook(title: "Advanced GraphQL", year: 2025, authorId: "1") {
        id
        title
        year
      }
    }

## Author

CS543 Web Services Tutorial Project
