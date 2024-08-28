# ChamberAppel

## Overview

ChamberAppel is a modern web application designed to efficiently handle the upload and processing of large Excel files, converting them into a list format, and storing them in an Oracle database. The application focuses on optimizing the registration of necessary data while ensuring high performance and security.

## Technologies Used

- **.NET 8**: The backend is built using .NET 8, leveraging its latest features for high performance and scalability.
- **Angular 17**: The frontend of the application is developed using Angular 17, providing a robust and responsive user interface.
- **Oracle Database**: The application uses Oracle Database for reliable data storage and retrieval.
- **Entity Framework Core**: For ORM (Object-Relational Mapping) to interact with the Oracle Database in an efficient manner.
- **Caching**: Implemented to enhance performance by storing frequently accessed data in memory, reducing the need to repeatedly fetch data from the database.
- **JWT (JSON Web Tokens)**: Used for secure authentication and authorization across the application.
- **Logging and Tracking**: For monitoring the application's behavior, tracking performance, and debugging issues. This is critical for maintaining the health and security of the application.
- **Clean Architecture**: The application is structured using Clean Architecture principles, ensuring separation of concerns and making the codebase more maintainable and testable.
- **Repository Pattern with CQRS and Mediator**: Utilized to separate read and write operations, providing a clear distinction between queries and commands, and to simplify the handling of complex business logic.
- **FluentValidation**: Used for model validation, ensuring that data integrity and business rules are enforced consistently.

## Key Features

- **Large Excel File Upload and Processing**: The main focus of ChamberAppel is to handle large Excel file uploads, process the files to extract relevant data, and translate this data into a format suitable for storage in an Oracle database.
- **Optimized Data Registration**: Ensures that all necessary data is registered efficiently, minimizing processing time and maximizing performance.
- **Secure and Robust**: Uses JWT for secure access management and comprehensive logging for effective tracking and troubleshooting.
- **Scalable and Maintainable**: Built with a focus on clean architecture and design patterns like CQRS and Mediator, ensuring that the application is scalable, maintainable, and easy to extend.
