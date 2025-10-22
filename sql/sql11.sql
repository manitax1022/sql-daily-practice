SELECT 
    s.supplier_name,
    SUM(CASE WHEN o.unit_price >= 160 THEN o.quantity * o.unit_price ELSE 0 END) AS high_value_spend,
    SUM(CASE WHEN o.unit_price >= 125 AND o.unit_price < 160 THEN o.quantity * o.unit_price ELSE 0 END) AS regular_spend,
    SUM(o.quantity * o.unit_price) AS total_spend
FROM Orders o
INNER JOIN Suppliers s
    ON o.supplier_id = s.supplier_id
GROUP BY s.supplier_name
ORDER BY total_spend DESC;
