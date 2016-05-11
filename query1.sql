SELECT title, lastName, companyName, addressLine1, ISNULL(addressLine2,'') as AddressLine2, city, stateProvince, postalCode
FROM SalesLT.customer
INNER JOIN SalesLT.customerAddress ON SalesLT.customer.CustomerID = salesLT.CustomerAddress.CustomerID
INNER JOIN SalesLT.address ON salesLT.CustomerAddress.AddressID = salesLT.Address.AddressID