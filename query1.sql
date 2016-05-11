select title, lastName, companyName, addressLine1, ISNULL(addressLine2,'') as AddressLine2, city, stateProvince, postalCode
from SalesLT.customer
join SalesLT.customerAddress on SalesLT.customer.CustomerID = salesLT.CustomerAddress.CustomerID
join SalesLT.address on salesLT.CustomerAddress.AddressID = salesLT.Address.AddressID