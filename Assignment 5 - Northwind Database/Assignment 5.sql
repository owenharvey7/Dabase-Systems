# 1.)What is the full name, full address, title, and phone number for all employees currently living in a US state that shares a border with the Pacific Ocean?
Select first_name, last_name, address, title, home_phone
From Northwind.employees
Where Region IN ('WA', 'OR', 'CA', 'AK', 'HI');

# 2.)Give the same information for all employees not in the USA but are older than 50 years of age.
Select first_name, last_name, address, title, home_phone
From Northwind.employees
Where country != 'USA' and birth_date < DATE_SUB(NOW(), INTERVAL 50 YEAR);

# 3.)Which employees (last name, first name without repeats) have placed orders delivered to Norway?
SELECT DISTINCT e.last_name, e.first_name
FROM Northwind.employees e
JOIN Northwind.orders o ON e.employee_id = o.employee_id
JOIN Northwind.customers c ON o.customer_id = c.customer_id
WHERE c.country = 'Norway';


# 4.)What is the title and name of any employee that has sold at least two of either "Vegie-spread" or "Sir Rodney’s Marmalade"?
SELECT DISTINCT e.title, e.first_name, e.last_name
FROM Northwind.employees e
JOIN Northwind.orders o ON e.employee_id = o.employee_id
JOIN Northwind.order_details od ON o.order_id = od.order_id
JOIN Northwind.products p ON od.product_id = p.product_id
WHERE p.product_name IN ('Vegie-spread', 'Sir Rodney’s Marmalade')
GROUP BY e.title, e.first_name, e.last_name
HAVING COUNT(p.product_name) >= 2;


# 5.)What are the Employee IDs for all employees who have sold more than 70 products?
SELECT employee_id
FROM Northwind.orders
GROUP BY employee_id
HAVING COUNT(*) > 70;


# 6.)List the last name of all employees that live on the same city as their managers.
SELECT e.last_name
FROM Northwind.employees e
JOIN Northwind.employees m ON e.reports_to = m.employee_id
WHERE e.city = m.city;


# 7.)List the product names of all products that were bought OR sold by people who live in London (use a UNION).
SELECT product_name
FROM Northwind.products
WHERE product_id IN (
    SELECT DISTINCT product_id
    FROM Northwind.order_details
    WHERE order_id IN (
        SELECT order_id
        FROM Northwind.orders
        WHERE customer_id IN (
            SELECT customer_id
            FROM Northwind.customers
            WHERE city = 'London'
        )
    )
    UNION
    SELECT DISTINCT product_id
    FROM Northwind.order_details
    WHERE order_id IN (
        SELECT order_id
        FROM Northwind.orders
        WHERE employee_id IN (
            SELECT employee_id
            FROM Northwind.employees
            WHERE city = 'London'
        )
    )
);


# 8.)What is the average price of products for each category? Output just the average price as "average_price" and the category ID.
SELECT category_id, AVG(unit_price) AS average_price
FROM Northwind.products
GROUP BY category_id;
