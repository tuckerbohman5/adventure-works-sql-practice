SELECT COUNT(name) as ProductCount, COUNT(DISTINCT StandardCost) as DistinctStandardCost, COUNT(DISTINCT ListPrice) as DistinctPrices
FROM SalesLT.Product
WHERE StandardCost > 500