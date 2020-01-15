# Bookmark Manager

Week 4 Project - build a bookmark manager to store a collection of bookmarks as
URLs.


 
 ## User Stories

 ```
 As a user,
 So I can view my most-used websites,
 I want to view a list of bookmarks

As a user,
 So I can retrieve my most-used websites at a later date,
 I want to to be able to store these websites 
 ```

 ## Domain Model

 


 ## Database Setup

 1. Connect to psql 
 ```
 brew install postgresql

 brew services start postgresql

 psql postgres
 ```

 2. Create the database using psql

```
CREATE DATABASE bookmark_manager;

```

3. Connect to the database

```
\c bookmark_manager;

```

4. Run query in file 01_create_bookmarks_table.sql

## TEST DATABASE SETUP

```
From the command line:

psql postgres

CREATE DATABASE "bookmark_manager_test";

Use the SQL query saved in the file '01_create_bookmarks_table.sql' in db/migrations to create a bookmarks table:

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60);)

```