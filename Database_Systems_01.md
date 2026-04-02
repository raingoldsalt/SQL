# Ch.1 Introduction

## ·Database = an organized collection of data used for the purpose of modeling some type of organization

·All organizations need to collect, modify,and maintain data daily

From Database Design for Mere Mortals®,

Third Edition1, by Michael J. Hernandez

(ISBN: 9780321884497). Copyright 2013 by
  
Michael L Hernandez All rights reserved

## 1) Hierarchical database

·Tree structure

## · (-) Has disadvantages like redundancy $8$  inconsistency:

-Ex. Both tables, Entertainers and Engagements, list names and phones for entertainers

<!-- Hierarchical Model Root Node StuID StuName $Age$ Age ↓ 66 Muskan 20 $44$ John 20 101 82 Alex 19 Python $103$ $C++$ 102 Java 103 C++ $C++$ ↑ CID CName -->
<img src="https://web-api.textin.com/ocr_image/external/b6b1dde082763878.jpg" style="max-width:100%; height:auto;">

<!-- Agents Entertainers Clients Schedule Engagements Payments -->
![](https://web-api.textin.com/ocr_image/external/394d45eb691c03d9.jpg)

· **Figure** **1.1** Diagram of a typical hierarchical database

## 2) Network database

· (+) can model 1-to-M relationship structure

· Ex. Many "Represent"- connections can be created between one agent and different clients

· (+) can start accessing data at any point

· (-) must know the structure **well** to **use** it

· (-) if you change the **structure, you** **must also** change programs that **access** it

<!-- Agents Owner Node 1 Represent Set Structure M Clients Member Node -->
![](https://web-api.textin.com/ocr_image/external/db18fa3777605f1e.jpg)

**Figure** **1.4** A basic set structure

<!-- Agents Represent Manage Clients Entertainers Make Schedule Perform Play Payments Engagements Musical Styles -->
![](https://web-api.textin.com/ocr_image/external/aaf26dc3c5517d5a.jpg)

**Figure** **1.3** Diagram of a typical network database

<!-- From Database Design for Mere Mortals®, Third Edition, by Michael J. Hernandez (ISBN: 9780321884497). Copyright 2013 by Michael J. Hernandez. All rights reserved. -->

## 3) Relational database

**Agents**


| Agent ID | Agent First Name | Agent Last Name | Date of Hire | Agent Home Phone |
| --- | --- | --- | --- | --- |
| 100 | Mike | Hernandez | 05/16/11 | 553-3992 |
| 101 | Greg | Johnson | 10/15/11 | 790-3992 |
| 102 | Katherine | Ehrlich | 03/01/12 | 551-4993 |


**Clients**


| Client ID | Agent ID | Client First Name | Client Last Name | Client Home Phone | ····.. |
| --- | --- | --- | --- | --- | --- |
| 9001 | 100 | Stewart | Jameson | 553-3992 | ······ |
| 9002 | 101 | Susan | Black | 790-3992 | ······ |
| 9003 | 102 | Estela | Rosales | 551-4993 | ······ |


**Entertainers**


| Entertainer ID | Agent ID | Entertainer First Name | Entertainer Last Name |  |
| --- | --- | --- | --- | --- |
| 3000 | 100 | John | Slade | ······ |
| 3001 | 101 | Mark | Jebavy | ······ |
| 3002 | 102 | Teresa | Weiss | ··.... |


## Engagements


| Client ID | Entertainer ID | Engagement Date | Start Time | Stop Time |
| --- | --- | --- | --- | --- |
| 9003 | 3001 | 04/01/12 | 1:00 PM | 3:30 PM |
| 9009 | 3000 | 04/13/12 | 9:00 PM | 1:30 AM |
| 9001 | 3002 | 05/02/12 | 3:00 PM | 6:00 PM |


1960s, Edgar Codd at IBM

Uses logic and set theory from math

Tables

· Records (tuples)

· Fields (attributes)

· Relationships- established between matching values of shared fields:

**·** One-to-one

· One-to many - Q: add a row in Engagements table to illustrate this relationship, i.e. one entertainer can deliver many engagements.

Many-to-many

(+) unlimited way to access data

**Figure** **1.5** Examples of related tables in **a** **relational** database

<!-- From Database Design for Mere Mortals®, Third Edition, by Michael J. Hernandez (ISBN: 9780321884497). Copyright 2013 by Michael J. Hernandez. All rights reserved. -->

# Advantages

1. Integrity - no duplicates, no missing keys, etc.

2. Data independence from applications

3. Data consistency and accuracy

4. Easy data retrieval

(-) some applications are slow → then create index that speeds up data query

From Database Design for Mere Mortals®,

Third Edition, by Michael J. Hernandez

(ISBN: 9780321884497). Copyright 2013 by

Michael L Hernandez All rights reserved

## RDBMS, SQL, Data Warehouse

· 1970 - System R (IBM), INGRES (UC at Berkeley)

· 1980 - Oracle

· Newest models: object-oriented database and object-relational database

· RDBMS -Relational Database Management System - ex. MySQL

- Software to create, maintain, modify, and manipulate a relational database

· SQL-Structured Query Language

SELECT ClientLastName, ClientFirstName, ClientPhoneNumber

FROM Clients

WHERE City = "El Paso"

ORDER BY ClientLastName, ClientFirstName

&lt;?xml version="1.0"?&gt;

- &lt;birds&gt;

&lt;owl id="1201"&gt;

·Data warehouse - collects data from multiple databases for analysis purposes

&lt;species&gt;Bubo bubo&lt;/species&gt;

&lt;name&gt;Eagle Owl&lt;/name&gt;

&lt;region&gt;Eurasia&lt;/region&gt;

- Use eXtensible Markup Language (XML) to carry data

&lt;/owl&gt;

&lt;owl id="1202"&gt;

&lt;species&gt;Strix occidentalis&lt;/species&gt;

&lt;name&gt;Spotted Owl&lt;/name&gt;

&lt;region&gt;North America&lt;/region&gt;

&lt;/owl&gt;

&lt;/birds&gt;

