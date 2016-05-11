WITH product_summary as ( 
  SELECT so.productID, SUM(so.orderqty) as TotalQuantityOrdered 
  FROM SalesLT.SalesOrderDetail so
  GROUP BY so.ProductID
)
SELECT p.Name as ProductName, ps.TotalQuantityOrdered, p.ListPrice, p.ListPrice * ps.TotalQuantityOrdered as SalesTotal
FROM product_summary ps
INNER JOIN salesLT.Product p on p.ProductID = ps.ProductID