# SQL Queries Activity

## Description
You will be playing a game amoungst your teammates and instructor(s). The goal is to use the following concepts to create questions for your teammates. Take turns creating problems with solutions, quizzing one another, and verifying their answer with your own solution. At the end of the activity, have your group select your best question. The instructor will now be asked each groups question so try to stump them!

## Concepts
* Querying a table

SELECT * FROM TABLE

* Aliasing columns

SELECT columnName AS "Column Name" FROM TABLE

* Filtering
    * Comparisons
    * Range
    * Pattern Matching

SELECT *
FROM TABLE
WHERE ID > 100

SELECT *
FROM TABLE
WHERE fieldName LIKE "Person"

SELECT * 
FROM TABLE
WHERE fieldName LIKE "John S%"

* NULL values

SELECT *
FROM TABLE
WHERE fieldName IS NULL

## Setup
Open the attached file in MySQLWorkbench and execute

## Submission
Create a pull request containing all the questions and answers

