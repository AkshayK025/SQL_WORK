##  Q1. Find customers who purchased the same vehicle model more than once in the same year. 

# Vehicle Sales Dataset

This dataset represents a simplified vehicle sales system with three core entities:

- **Customers**
- **Vehicles**
- **Sales**

It can be used for basic database modeling, queries, or analytics.

---

## 📄 Tables

### 1. Customers

Contains basic information about customers.

| Customer ID | Name    |
|-------------|---------|
| 1           | Alice   |
| 2           | Bob     |
| 3           | Charlie |

---

### 2. Vehicles

Details of available vehicle models.

| Vehicle ID | Model           |
|------------|------------------|
| 101        | Toyota Corolla   |
| 102        | Honda Civic      |
| 103        | Ford Focus       |

---

### 3. Sales

Links customers to vehicles through sale transactions.

| Sale ID | Customer ID | Vehicle ID | Sale Date   |
|---------|-------------|------------|-------------|
| 1       | 1           | 101        | 2023-01-15  |
| 2       | 1           | 101        | 2023-06-20  |
| 3       | 2           | 102        | 2023-03-05  |
| 4       | 2           | 103        | 2024-07-18  |
| 5       | 3           | 101        | 2023-04-10  |
| 6       | 3           | 101        | 2024-01-12  |

---

## 🔍 Example Use Cases

- Analyze how many times each customer has purchased a vehicle
- Track the popularity of specific vehicle models
- Practice SQL joins between tables

---

## 📁 Files

- `customers.csv`
- `vehicles.csv`
- `sales.csv`

## Query
```sql
SELECT 
    c.name,v.model,YEAR(s.sale_date)
FROM 
    customers c
JOIN sales s USING(customer_id)
JOIN vehicles v USING(vehicle_id)
GROUP BY 
    c.name,s.vehicle_id,v.model,YEAR(s.sale_date)
Having count(*)>1
```
##  Result
| Name  | Model           | Year |
|-------|------------------|------|
| Alice | Toyota Corolla   | 2023 |

This table shows customers who purchased the same vehicle model more than once in the same year. 
