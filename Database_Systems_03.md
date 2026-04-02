> Ch.3 Terminology

Ch.3 Terminology:

A. Value-Related Terms

B. Structure-Related Terms

C. Relationship-Related Terms D. Integrity-Related Terms

> A. Value-Related Terms
>
> 1\. Data vs Information (processed data)
>
> • Data is what you store; information is what you retrieve. 2. Null –
> missing or unknown values
>
> <img src="./mqop4mkp.png" style="width:5.36in;height:3.15in" />George
> Edleman 92883 05/16/96 95.00

**Figure** **3.1** *An* *example* *of* *basic* *data*

> **Figure** **3.2** *An* *example* *of* *data* *transformed* *into*
> *information*
>
> From *Database* *Design* *for* *Mere* *Mortals®,* *Third* *Edition,*
> by Michael J. Hernandez (ISBN: 9780321884497). Copyright 2013 by
> Michael J. Hernandez. All rights reserved.

Anomalies created by
null<img src="./mbctcnmr.png" style="width:5.73in;height:2.03in" />

> <img src="./0thzqraf.png" style="width:2.17in;height:1.64in" />**Figure**
> **3.4** *The* *nulls* *in* *this* *table* *will* *have* *an* *effect*
> *on* *mathematicaloperations*
>
> *involving* *the* *table’s* *fields.*
>
> \[TOTAL VALUE\] = \[SRP\] × \[QTY ON HAND\].
>
> **Figure** **3.5** *Nulls* *affect* *the* *results* *of* *an*
> *aggregate* *function.*
>
> From *Database* *Design* *for* *Mere* *Mortals®,* *Third* *Edition,*
> by Michael J. Hernandez (ISBN: 9780321884497). Copyright 2013 by
> Michael J. Hernandez. All rights reserved.

B. Structure-Related Terms 1.
Table<img src="./ryi2zwe0.png" style="width:1.55in;height:1.31in" />

> • Must include at least the primary key
>
> <img src="./q14dbglv.png" style="width:5.68in;height:2.76in" /><img src="./gnnayocd.png" style="width:4.61in;height:1.99in" />**Figure**
> **3.7** *A* *table* *representing* *an* *event*
>
> **Figure** **3.8** *An* *example* *of* *a* *validation* *table* *\[it*
> *is* *rarely* *modified\]*
>
> **Figure** **3.6** *A* *typical* *table* *structure*

2\. Field
(attribute)<img src="./oiah4eak.png" style="width:8.61in;height:3.3in" />

> **Figure** **3.9** *A* *table* *containing* *regular,* *calculated,*
> *multipart,* *and* *multivalued* *fields* *\[last* *three* *types*
> *exist* *in* *poorly* *designed* *databases\]*

3\. Record (tuple) = a row, ex. Susan Black record above

4\. View = virtual table built of rows from one or more base
tables<img src="./5ysb5t3e.png" style="width:6.46in;height:4.44in" />

> **Figure** **3.10** *An* *example* *of* *a* *typical* *view*

<img src="./lzi3pubt.png" style="width:6.29in;height:3.7in" />5.
Keys

• Primary key:

a field or a group of fields that uniquely identifies each record within
a table

> – Every table should have one

• Foreign key:

a field that establishes

<img src="./et0b2dnb.png" style="width:6.19in;height:2.4in" />relationships
between **Figure** **3.11** *An* *example* *of* *primary* *and*
*foreign* *key* *fields* two tables and it is the

primary key in the other table

• \[Foreign key can also help with enforcing

> constrains\] Ex. You cannot add in table Employee the employee Anna
> form Physics dept., if Physics is not created in table Departments

C. Relationship-Related Terms 1.
Relationships<img src="./1ibhkbbp.png" style="width:4.46in;height:2.66in" />

> One-to-One Relationships
>
> **Figure** **3.13** *An* *example* *of* *a* *one-to-one*
> *relationship*

<img src="./qwkuizpc.png" style="width:5.01in;height:2.78in" />

One-to-Many Relationships

> **Figure** **3.14** *An* *example* *of* *a* *one-to-many*
> *relationship*
>
> Many-to-Many
> Relationships<img src="./kqha1nyq.png" style="width:4.43in;height:2.67in" />

<img src="./dm0ye1y0.png" style="width:5.02in;height:3.35in" />**Figure**
**3.15** *An* *example* *of* *an* *unresolved* *many-to-many*
*relationship*

*Unresolved* *=* *how* *do* *you* ***<u>easily</u>*** *associate* *a*
*student* *with* *all* *their* *classes,* *or* *a* *class* *with* *all*
*its* *students?* *Answer:* *This* *information* *can* *only* *be*
*recorded* *in* *the* *linking* *(middle)* *table,* *NOT* *in* *any*
*of* *the* *two* *tables*

**Figure** **3.16** *Resolving* *the* *many-to-many* *relationship*
*with* *a* *linking* *table*

2\. Mandatory/Optional Participation

-Ex. Make Agent table as mandatory participation in the database because
agent 100 must exist in Agent table before using it in the Client table

\[this can be enforced with a fk_constraint, we will see later\]

> <img src="./mzmgov5r.png" style="width:4.32in;height:2.81in" />3.
> Degree of Participation
>
> -Ex. CLIENTS 1,8 = one agent must manage at least one client but no
> more than 8
>
> -Ex. AGENTS 1,1 = a client must be assigned to only one agent
>
> **Figure** **3.17** *The* *AGENTS* *and* *CLIENTS* *tables*
>
> D. Integrity-Related
> Terms<img src="./dearehw2.png" style="width:4.46in;height:2.66in" />

1\. Field specifications

2\. Data integrity – ex. no duplicate records, consistent entries like
Dr. vs Doctor

> **Figure** **3.13** *An* *example* *of* *a* *one-to-one*
> *relationship*
