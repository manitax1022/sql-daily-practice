SELECT supplier_id, SUM(quantity) AS total_qty_purchase
FROM Orders
GROUP BY supplier_id
ORDER BY total_qty_purchase DESC;
