/*
=============================================================
Database Initialization
=============================================================
Description:
    Initializes the SQL Data Warehouse by creating the
    DataWarehouse database and the bronze, silver, and gold
    schemas used in the ETL process.

Note:
    If the database already exists, it will be removed and
    recreated. All existing data will be lost.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
