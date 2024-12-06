# RentBoat

RentBoat is a web-based application designed to manage boat rentals efficiently. The application provides functionality to manage boat inventory and facilitate the rental process for customers. 

## Features

1. **Boat Inventory Management**
   - Add new boats to the inventory with details such as name and hourly rental rate.
   - Update boat statuses to indicate availability for rental.

2. **Rental Processing**
   - Rent out available boats to customers, recording customer details and rental times.
   - Automated status updates to reflect rented or available boats in the system.

3. **Database-Driven Functionality**
   - SQL scripts for creating and managing database tables for boats and rentals.
   - Stored procedures for key operations like adding boats and processing rentals.

## Project Structure

- `BoatRents`  
  Main application folder containing web pages (`.aspx`), backend logic (`.cs`), and configuration files.

- `Database Scripts`  
  SQL scripts for database initialization and stored procedures:
  - `CreateTables.sql`: Creates the core database tables for managing boats.
  - `SP_AddNewBoatToInventory.sql`: Adds a new boat to the inventory.
  - `SP_RentOutBoat.sql`: Handles boat rental operations.

- `App_Start`  
  Contains configuration files for authentication (`AuthConfig.cs`) and bundling resources (`BundleConfig.cs`).

## Prerequisites

- **Development Environment**: Visual Studio (recommended)
- **Database**: SQL Server or equivalent
- **Languages and Frameworks**:
  - ASP.NET for web development
  - C# for backend logic
  - SQL for database management

## Getting Started

1. **Database Setup**
   - Execute `CreateTables.sql` in your SQL Server to set up the required tables.
   - Deploy stored procedures `SP_AddNewBoatToInventory.sql` and `SP_RentOutBoat.sql`.

2. **Project Configuration**
   - Open `BoatRents.sln` in Visual Studio.
   - Update `Web.config` with your database connection string.

3. **Run the Application**
   - Build and run the solution in Visual Studio.
   - Access the application through the browser at the specified localhost URL.

## Future Enhancements

- Add features for customer history and payment tracking.
- Implement a mobile-friendly interface for better accessibility.
- Extend reporting capabilities to analyze rental trends.
