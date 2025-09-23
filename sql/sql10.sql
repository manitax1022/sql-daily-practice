SELECT o.order_id, s.supplier_name, s.region, 
       o.product_name, o.quantity, o.unit_price, o.order_date,
	   CASE
	       WHEN o.unit_price >= 160 THEN 'High Value'
	       WHEN o.unit_price >= 125 AND o.unit_price <160 THEN 'Regular'
	       ELSE 'Low Value'
	   END AS order_category
       FROM Orders o
LEFT JOIN Suppliers s
    ON o.supplier_id = s.supplier_id
ORDER BY o.order_date DESC;
