WITH product_summary as ( 
  SELECT so.productID, SUM(so.orderqty) as TotalQuantityOrdered 
  FROM SalesLT.SalesOrderDetail as so
  GROUP BY so.ProductID
)
SELECT p.Name as ProductName, ps.TotalQuantityOrdered, p.ListPrice, p.ListPrice * ps.TotalQuantityOrdered as SalesTotal
FROM product_summary as ps
INNER JOIN salesLT.Product as p on p.ProductID = ps.ProductID