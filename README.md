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
