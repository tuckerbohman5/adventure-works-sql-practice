DECLARE  @temp_table TABLE (     
        tablename sysname 
,       row_count INT 
,       reserved VARCHAR(50) collate database_default 
,       data VARCHAR(50) collate database_default 
,       index_size VARCHAR(50) collate database_default 
,       unused VARCHAR(50) collate database_default  
); 
INSERT INTO @temp_table
EXEC sp_spaceused 'SalesLT.Product';

INSERT INTO @temp_table
EXEC sp_spaceused 'SalesLT.Address';

SELECT tablename as TableName, row_count as NumOfRows, index_size as IndexSize
FROM @temp_table;