# sql-daily-practice
SQL practice using procurement dataset (SQLite + DB Browser)
This repo documents my daily SQL pratice using procurement dataset.
Each day I add new queries, export results, and summarize insights.
Tools: SQLite + DB Browser for SQLite.

## Day 1 - Basic SELECT & WHERE

### Q01 - Check all orders
**SQL**
```sql
SELECT *
FROM Orders;
```
**Result**
- [CSV Output](outputs/result01.csv)
- ![Screenshot](screenshots/SQL01.png)

**Insight**

Raw table inspection, confirmed data imported correctly.


### Q02 - Orders with unit_price > 200
**SQL**
```sql
SELECT *
FROM Orders
WHERE unit_price > 200;
```
**Result**
- [CSV Output](outputs/result02.csv)
- ![Screenshot](screenshots/SQL02.png)

**Insight**

Orders with unit price greater than 200 are primarily Tissue and Virgin Baled Tissue. These represent high-value procurement items, important for tracking spending patterns and supporting the paper mill’s production formulas.


### Q03 - Orders with unit_price < 200 AND QUANTITY > 150
**SQL**
```sql
SELECT *
FROM Orders
WHERE unit_price < 200 AND QUANTITY > 150;
```
**Result**
- [CSV Output](outputs/result03.csv)
- ![Screenshot](screenshots/SQL03.png)

**Insight**

Orders with unit price below 200 but high quantities (greater than 150) suggest bulk procurement of lower-cost materials. These are typically commodity-grade paper products purchased in large volumes to support steady production needs. Monitoring this category is important for tracking operational efficiency, negotiating bulk discounts, and identifying cost-saving opportunities in procurement.


## Day 2 - Basic Order & Grouping
### Q04 - List all orders sorted by highest unit price
**SQL**
```sql
SELECT *  
FROM Orders  
ORDER BY unit_price DESC;
```
**Result**
- [CSV Output](outputs/result04.csv)
- ![Screenshot](screenshots/SQL04.png)

**Insight**

Sorting orders by descending unit price highlights the most expensive procurement items first. This helps quickly identify premium-grade materials (such as Virgin Baled Tissue) and monitor their impact on overall procurement costs. It is useful for spend analysis and supplier negotiations.


### Q05 - List all unique suppliers  
**SQL**
```sql
SELECT DISTINCT supplier_id  
FROM Orders;
```
**Result**
- [CSV Output](outputs/result05.csv)
- ![Screenshot](screenshots/SQL05.png)

**Insight**

The query returns 13 unique suppliers from my current account dataset, showing the diversity within my own vendor base. This distinction is useful for monitoring supplier relationships and assessing potential dependencies, even though it does not cover the full team’s supplier pool.


### Q06 - Count total number of orders  
**SQL**
```sql
SELECT COUNT(*) AS total_orders  
FROM Orders;  
```
**Result**
- [CSV Output](outputs/result06.csv)
- ![Screenshot](screenshots/SQL06.png)

**Insight**

The dataset contains 55 total orders from my current supplier accounts (From January 2025 to September 2025). This provides a baseline for analyzing order distribution, supplier activity, and procurement patterns.


### Q07 - Total quantity purchased per supplier (ranked)  
**SQL**
```sql
SELECT supplier_id, SUM(quantity) AS total_qty_purchase  
FROM Orders  
GROUP BY supplier_id  
ORDER BY total_qty_purchase DESC;
```
**Result**
- [CSV Output](outputs/result07.csv)
- ![Screenshot](screenshots/SQL07.png)

**Insight**

The query ranks suppliers by total quantity purchased. Supplier 100700 accounts for the highest volume (3,905 units), followed by Supplier 100741 (2,085 units). This breakdown helps identify top-volume suppliers in my dataset, useful for evaluating supplier dependency, negotiating bulk contracts, and monitoring procurement concentration risks.
