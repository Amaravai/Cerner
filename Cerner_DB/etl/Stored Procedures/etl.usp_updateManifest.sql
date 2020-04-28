


-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 22-APR-2020 
-- Description: Update the Manifest with the Total Row COunts at the time of the run
-- =============================================  
CREATE PROCEDURE [etl].[usp_updateManifest]
AS
BEGIN
With Cte_GetLatestLoadManifest
AS
(Select [Id],PackageName,InsertRecordCount,UpdateRecordCount,LoadDateTime, 
       Sum(InsertRecordCount + UpdateRecordCount) Over(Partition By PackageName,LoadDateTime ORDER BY PackageName ) AS TotalRowsProcessed
      ,Rank() OVER(Partition BY PackageName ORDER BY LoadDateTime DESC) rn
FROM [etl].[Manifest]
)
,
GetSqlServerRowCounts
AS
(

SELECT   (sOBJ.name) AS [TableName]
      , SUM(sdmvPTNS.row_count) AS [RowCount]
FROM
      sys.objects AS sOBJ
      INNER JOIN sys.dm_db_partition_stats AS sdmvPTNS
            ON sOBJ.object_id = sdmvPTNS.object_id
WHERE 
      sOBJ.type = 'U'
      AND sOBJ.is_ms_shipped = 0x0
      AND sdmvPTNS.index_id < 2
	  AND QUOTENAME(SCHEMA_NAME(sOBJ.schema_id))='[cerner]'
GROUP BY
      sOBJ.schema_id
      , sOBJ.name
 
)
--Select PackageName,CR.[TABLE_ROWS] AS [OracleRowCount], SRC.[RowCount] AS [SqlServerRowCount]
Update Dest
SET [OracleRowCount] = COALESCE(CR.[TABLE_ROWS],0)
, [SqlServerRowCount] =  COALESCE(SRC.[RowCount],0)
FROM [etl].[Manifest] Dest
INNER JOIN Cte_GetLatestLoadManifest M ON M.Id = Dest.Id and M.PackageName = Dest.PackageName
LEFT OUTER JOIN  [stage].[CERNER_ROWCOUNTS] CR ON CR.Table_Name = Dest.PackageName
INNER JOIN GetSqlServerRowCounts SRC ON SRC.TableName =  Dest.PackageName
WHERE rn=1

 
END