# Ch.2 Design Objectives

## Design then implementation

· Ex. Architect designs a house, then contractor builds it

## Objectives of good design

1. Supports information retrieval

2. Efficient tables

3. Data integrity

4. Supports the business

5. Supports future growth

## Benefits of good design

1. Can modify database design, i.e. the structure

2. Can modify data

3. Easy to retrieve data

4. Easy to develop applications on database

# 3-phase design model

1. Requirements analysis - examine business, interview users

2. Data modeling - we use entity-relationship (ER) diagramming

3. Normalization - decompose larger tables into smaller ones to eliminate redundant and duplicate data

- First-sixth normal form

- Boyce-Codd Normal Form

- Domain/Key Normal Form

<!-- Agents 1:N Clients Figure 2.1/An example of a basic ER diagram -->
![](https://web-api.textin.com/ocr_image/external/c367ee4200674e48.jpg)

### Ex. 1st NF: Atomicity

each cell in a table must contain one single value.


| FirstName | LastName | Knowledge |
| --- | --- | --- |
| Thomas | Mueller | Java, $C++,PHP$ |
| Ursula | Meier | PHP,Java |
| Igor | Mueller | $C++$ Java |



**Result after Normalisation**


| FirstName | LastName | Knowledge |
| --- | --- | --- |
| Thomas | Mueller | $C++$ |
| Thomas | Mueller | PHP |
| Thomas | Mueller | Java |
| Ursula | Meier | Java |
| Ursula | Meier | PHP |
| Igor | Mueller | Java |
| Igor | Mueller | $C++$ |


