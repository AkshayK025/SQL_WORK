# 🚗 Vehicle Dealership Analytics – SQL Query Solutions

This repository contains SQL queries and sample datasets for analyzing a vehicle dealership business. The dataset is structured in MySQL and supports complex analytical queries related to purchases, services, and customer behavior.

---

## 📌 Question 1  
**Find customers who purchased the same vehicle model more than once in the same year.**

---

### ✅ Objective

Identify customers who have made multiple purchases of the **same vehicle model** within the **same calendar year**.

---

### 🧠 Logic

We group the data by:

- Customer name  
- Vehicle model name  
- Year of purchase  

Then, we use `HAVING COUNT(*) > 1` to filter for customers who purchased the same model more than once in that year.

---

### 🛠️ SQL Query

```sql
SELECT
    c.full_name AS name,
    m.model_name AS model,
    YEAR(p.purchase_date) AS purchase_year
FROM 
    customers c
JOIN purchases p USING(customer_id)
JOIN vehicles v USING(vehicle_id)
JOIN models m USING(model_id)
GROUP BY 
    c.full_name, m.model_name, YEAR(p.purchase_date)
HAVING 
    COUNT(*) > 1;
```

## Result
| Name         | Model   | Purchase Year |
|--------------|---------|----------------|
| Alice Smith  | Corolla | 2024           |

---
## 📌 Question 2  
**Identify vehicles not serviced in the last 12 months**

---

### ✅ Objective

Find vehicles that either:
- Have **never been serviced**
- Or were **last serviced more than 12 months ago**

---

### 🧠 Logic

- Use `LEFT JOIN` to include vehicles with no service history.
- Use `MAX(service_date)` to get the latest service per vehicle.
- Filter using `HAVING` to find services older than 12 months or `NULL`.

---

### 🛠️ SQL Query

```sql
SELECT
    v.vehicle_id,
    MAX(s.service_date) AS last_service_date
FROM 
    vehicles v
LEFT JOIN services s USING(vehicle_id)
GROUP BY v.vehicle_id
HAVING 
    MAX(s.service_date) IS NULL
    OR MAX(s.service_date) < DATE_SUB(CURDATE(), INTERVAL 12 MONTH);
```
## Result:

| Vehicle ID | Last Service Date |
|------------|-------------------|
| 1          | 2024-06-01        |
| 2          | 2023-01-15        |
| 3          | 2023-06-20        |
| 4          | *(Not Available)* |
| 6          | *(Not Available)* |

---
