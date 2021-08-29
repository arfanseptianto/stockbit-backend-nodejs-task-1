# STOCKBIT BACKEND NODE.JS TASK - 1

Terdapat sebuah table "USER" yg memiliki 3 kolom: ID, UserName, Parent. Di mana:
- Kolom ID adalah Primary Key
- Kolom UserName adalah Nama User
- Kolom Parent adalah ID dari User yang menjadi Creator untuk User tertentu.
eg.
```sql
——————————————————————————
| ID | UserName | Parent |
——————————————————————————
| 1  | Ali      | 2      |
| 2  | Budi     | 0      |
| 3  | Cecep    | 1      |
——————————————————————————
```

Tuliskan SQL Query untuk mendapatkan data berisi:
```sql
——————————————————————————————————
| ID | UserName | ParentUserName |
——————————————————————————————————
| 1  | Ali      | Budi           |
| 2  | Budi     | Null           |
| 3  | Cecep    | Ali            |
——————————————————————————————————
```
*Kolom ParentUserName adalah UserName berdasarkan value Parent

### ANSWER
 ```sql
SELECT
    A.ID,
    A.UserName,
    B.UserName AS ParentUserName
FROM
    `USER` AS A
    LEFT JOIN
        `USER` AS B
    ON
        B.ID = A.Parent;
```
