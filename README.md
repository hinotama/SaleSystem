# SaleSystem
Global Design IT Internship Project in August 2019

Note:
- If you can't build the WPF project, try to uninstall the Newtonsoft.Json NuGet package then reinstall it again.
- The SaleSystemDB.sql file contains queries to create a database for MS SQL Server.
- The SaleSystemDB_PostgreSQL.sql file contains queries to create database for PostgreSQL.
- If you want to change the database from SQL Server to PostgreSQL:
  + In SaleSystemAPI Project, open Startup.cs file, comment code line #37 and uncomment code line #38.
  + In SaleSystemAPI Project, open appsettings.json file, check the "Scaffold" option for "PostgreSQL", copy it then paste it into Package Manager Console (select SaleSystemData as default project) then edit its content to what your database should be and then run it.
