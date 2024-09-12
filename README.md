# Rails Application

This Rails application provides a comprehensive system for managing patient appointments, with distinct portals for receptionists and doctors. Below are the key features of the application:

## Features

### Unified Login Page
- A single login page that provides access to both the receptionist and doctor portals.

### Receptionist Portal
- **Patient Management:** Ability to register new patients.
- **CRUD Operations:** Perform Create, Read, Update, and Delete operations on patient records.

### Doctor Portal
- **Patient View:** Access a list of registered patients.
- **Data Visualization:** Display a graph showing the number of patients registered over time, using Chart.js and Stimulus for interactivity.

### Authorization
- **Custom Logic:** Built-in authorization without relying on external gems.

### Single Table Inheritance (STI)
- **User Roles:** Implemented for different roles including Receptionist, Doctor, and Patient.

### Many-to-Many Associations
- **Relationships:** Manage associations between patients, doctors, and appointments.

### Patient History
- **Visit Tracking:** Track and display the history of doctor visits for each patient, including dates and times.

## Installation

Git Clone, change database username and password, rails db:setup, by default from seeds.rb 1 receptionist, 1 doctor and 1 patient is created!


