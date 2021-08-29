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
