# Database Fundamentals Project
 **Cars R Us**
 
Objective: *Analyze*, *design*, and *implement* a prototype database system using Lucid Chart and SQL Server

***
### Analysis: 
Created a general business model, goals of the organization, products/services it sells, etc.. and then developed 20 user requirements, 20 business rules, and 10 "business questions" that will later be used for views, queries, and stored procedures.

***
### Design:
Developed a physical ERD model using Lucidchart based on the user requirements and business rules outlined in the analysis. 

***
### Implementation:
Used SQL DDL and DML commands to create the schema and load the data

 - **CREATE TABLE** Commands [19 tables]

- **INSERT** Commands [40 rows of data in each transactional table, 15 rows of data for all other tables]
***
### Data Outputs
***Queries:***
- Number of car rentals/month
- Average length of rentals
- Number of customers who use the rental service
- Hire date of employees
- Type of payment made towards rental
- List of car make and models available at each location
- Information of employees based on location
- Contact info of customers
- Date of a specific rental

***Views:***
- View Employee information without viewing SSN (security purposes)
- View Customers who have emails on file

***Procedures:***
- Retrieve Customer information from their email address
- Add a new customer
- Get Employee ID number from the date they were hired
