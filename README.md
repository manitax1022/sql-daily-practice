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
- ![Screenshot](screenshots/sql01.png)

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
- ![Screenshot](screenshots/sql02.png)

**Insight**
Orders with unit price > 200 are mainly Tissue and Virgin Baled tissue. These represent high-value procurement items useful for monitoring spend and headquarter paper mill's formula creation.
