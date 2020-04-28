


-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 06-APR-2020 
-- Description: Provides the DashBoard details for Cerner
-- =============================================  
CREATE PROCEDURE [etl].[usp_getDashBoardDetails_Cerner]
AS
BEGIN
With Cte_GetLatestLoadManifest
AS
(Select PackageName,InsertRecordCount,UpdateRecordCount,LoadDateTime, 
       Sum(InsertRecordCount + UpdateRecordCount) Over(Partition By PackageName,LoadDateTime ORDER BY PackageName ) AS TotalRowsProcessed,[OracleRowCount],[SqlServerRowCount]
      ,Rank() OVER(Partition BY PackageName ORDER BY LoadDateTime DESC) rn
FROM [etl].[Manifest]
)
Select PackageName,TableName,M.LoadDateTime, WM.RowsStaged,M.InsertRecordCount,M.UpdateRecordCount, TotalRowsProcessed,[OracleRowCount],[SqlServerRowCount],
		Case WHEN TotalRowsProcessed < WM.RowsStaged Then 'MisMatched Rows' Else 'Matched Rows' END AS Alert
FROM Cte_GetLatestLoadManifest M
INNER JOIN [etl].[WaterMark] WM ON WM.TableName = M.PackageName
WHERE rn=1
Order By M.LoadDateTime Desc
 
END