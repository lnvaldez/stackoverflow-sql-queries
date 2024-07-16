# Stack Overflow 10GB Database Queries

This repository contains SQL queries and resources for working with the Stack Overflow 10GB database provided by Brent Ozar.

### Prerequisites

To use the Stack Overflow database, you will need:

- SQL Server Management Studio (SSMS) or another SQL database management tool.
- Sufficient disk space (approximately 10GB) and system resources.

### Downloading the Database

You can download the Stack Overflow 10GB database from Brent Ozar's website. Go to [Brent Ozar's Stack Overflow Database](https://www.brentozar.com/archive/2015/10/how-to-download-the-stack-overflow-database-via-bittorrent/) for download instructions.

### Loading the Database

1. After downloading, extract the database files.
2. Attach the database files to your SQL Server instance.
3. Configure any necessary server settings or file paths as required.

## Database Schema

The Stack Overflow database includes tables such as Users, Posts, Comments, and Votes. These tables contain various fields related to Stack Overflow activity.

## Queries - [queries](queries.sql)

### Query 1 - [query01](query/query01.sql)

Retrieves the DisplayName, Location, and Reputation of users from the Users table, ordered by Reputation in descending order.
<br>
<strong>[csv](https://raw.githubusercontent.com/lnvaldez/stackoverflow-sql/main/csv/data1.csv)</strong>

### Query 2 - [query02](query/query02.sql)

Retrieves the Title of posts and the DisplayName of users who authored those posts, filtering out posts where Title is not null.
<br>
<strong>[csv](/csv/data2.csv)</strong>

### Query 3 - [query03](query/query03.sql)

Calculates the average Score of posts authored by each user (DisplayName), sorting users by their average score in descending order.
<br>
<strong>[csv](/csv/data3.csv)</strong>

### Query 4 - [query04](query/query04.sql)

Retrieves the DisplayName of users who have made more than 100 comments in total.
<br>
<strong>[csv](/csv/data4.csv)</strong>

### Query 5 - [query05](query/query05.sql)

Updates the Location column of users to 'Desconocido' (Unknown in Spanish) where Location is null or empty.
<br>
<strong>[csv](/csv/data5.csv) / [rpt](/rpt/report5.rpt)</strong>

### Query 6 - [query06](query/query06.sql)

Deletes comments made by users whose Reputation is less than 100, displaying the number of deleted comments after execution.
<br>
<strong>[rpt](/rpt/report6.rpt)</strong>

### Query 7 - [query07](query/query07.sql)

Retrieves DisplayName of users along with the total count of their posts (TotalPosts), comments (TotalComments), and badges (TotalBadges).
<br>
<strong>[csv](/csv/data7.csv)</strong>

### Query 8 - [query08](query/query08.sql)

Retrieves the top 10 posts by Title and Score from the Posts table, ordered by Score in descending order.
<br>
<strong>[csv](/csv/data8.csv)</strong>

### Query 9 - [query09](query/query09.sql)

Retrieves the most recent 5 comments with their Text and CreationDate from the Comments table, ordered by CreationDate in descending order.
<br>
<strong>[csv](/csv/data9.csv)</strong>
