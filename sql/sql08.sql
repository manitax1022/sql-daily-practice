SELECT s.supplier_name, s.region,
       SUM(o.quantity*o.unit_price) AS total_purchase_value
FROM Orders o
INNER JOIN Suppliers s
    ON o.supplier_id = s.supplier_id
GROUP BY s.supplier_name, s.region
ORDER BY total_purchase_value DESC;	