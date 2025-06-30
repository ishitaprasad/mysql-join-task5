This project demonstrates creating two tables (`Customers` and `Orders`) and using different SQL join types.

## Join Types:

- **INNER JOIN**
  Returns only rows where there is a match in both tables.

- **LEFT JOIN**
  Returns all rows from the left table (`Customers`), and matched rows from the right table (`Orders`). If no match, result is NULL on the right side.

- **RIGHT JOIN**
  Returns all rows from the right table (`Orders`), and matched rows from the left table (`Customers`). If no match, result is NULL on the left side.

- **FULL OUTER JOIN**
  Combines the results of LEFT JOIN and RIGHT JOIN. Returns all rows from both tables, with NULLs where no match exists. (Emulated with `UNION` in MySQL.)

