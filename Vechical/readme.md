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
## 📌 Question 3  
**Get top 3 dealers per region based on profit (revenue - cost) for Q1 2025**

---

### ✅ Objective

Identify the **top 3 dealers in each region** who generated the **most profit** during **Q1 of 2025**. Profit is calculated as the difference between **revenue and cost**.

---

### 🧠 Logic

- Filter purchases to include only those in **Q1 2025**.
- Aggregate total profit per dealer per region.
- Use `ROW_NUMBER()` to rank dealers within each region based on profit.
- Select only the **top 3 per region**.

---

### 🛠️ SQL Query

```sql
WITH dealer_profits AS (
    SELECT
        d.region AS region,
        d.dealer_name AS dealer,
        SUM(p.revenue - p.cost) AS total_profit,
        ROW_NUMBER() OVER (
            PARTITION BY d.region 
            ORDER BY SUM(p.revenue - p.cost) DESC
        ) AS rn
    FROM purchases p
    JOIN dealers d USING(dealer_id)
    WHERE QUARTER(p.purchase_date) = 1
      AND YEAR(p.purchase_date) = 2025
    GROUP BY d.region, d.dealer_name
)
SELECT 
    region, 
    dealer, 
    total_profit
FROM dealer_profits
WHERE rn <= 3;
```
## Result:
| Region | Dealer      | Total Profit |
|--------|-------------|--------------|
| South  | SpeedMotors | 2000.00      |
| West   | DriveAway   | 2000.00      |

---
## 📌 Question 4  
**Calculate the month-over-month % growth in service appointments in 2024**

---

### ✅ Objective

Track how service demand changes each month in 2024 by computing the **month-over-month percentage growth** in service appointments.

---

### 🧠 Logic

- Filter records to only include the year 2024.
- Use `COUNT()` to get monthly totals.
- Use the `LAG()` window function to compare each month with the previous month.
- Use `ROUND(...)` and `NULLIF(...)` to compute and format the percentage change safely.

---

### 🛠️ SQL Query

```sql
WITH cte AS (
    SELECT 
        MONTH(appointment_date) AS month_num,
        MONTHNAME(appointment_date) AS Month,
        COUNT(appointment_id) AS Total_Appointment
    FROM 
        service_appointments
    WHERE 
        YEAR(appointment_date) = 2024
    GROUP BY 
        MONTH(appointment_date), MONTHNAME(appointment_date)
)
SELECT
    Month, 
    Total_Appointment,
    LAG(Total_Appointment) OVER (ORDER BY month_num) AS previous_total_appointment,
    ROUND(
        (Total_Appointment - LAG(Total_Appointment) OVER (ORDER BY month_num)) 
        / NULLIF(LAG(Total_Appointment) OVER (ORDER BY month_num), 0) * 100, 2
    ) AS percentage_change
FROM
    cte
ORDER BY
    month_num;
```
## Result

| Month    | Total Appointment | Previous Total Appointment | Percentage Change |
|----------|-------------------|-----------------------------|-------------------|
| January  | 1                 |                             |                   |
| February | 1                 | 1                           | 0.00%             |
| March    | 2                 | 1                           | 100.00%           |
| April    | 1                 | 2                           | -50.00%           |
| May      | 1                 | 1                           | 0.00%             |
| June     | 2                 | 1                           | 100.00%           |