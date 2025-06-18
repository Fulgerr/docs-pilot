# SQL connection string validation error

# Description

You might receive an error relating to the connection strings as follows:

Sqlcmd: Error: Microsoft Driver 17 for SQL Server :
Server—tcp : <connection string>
Login failed for user

This error appears even though all credentials are correct. The connection string validation failed.

# Solution

Make sure the connection string has the following structure:

Server=<Sql server host name>;User Id=<user_name for sql server>;Password=<Password>;Initial Catalog=<database name>;Persist Security Info=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;

User Id is case-sensitive.
