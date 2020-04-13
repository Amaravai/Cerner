
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for  ENCNTR_PROCEDURE  [ENCNTR_PROCEDURE]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessEncntrProcedure]
AS
BEGIN
     DECLARE @Rows int
	 DECLARE @InsertRows Int
	 DECLARE @UpdatedRows Int

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Update statements for procedure here
	Update Dest
	  SET  [CATALOG_CD] = Source.CATALOG_CD 
      ,[SYNONYM_ID] = Source.SYNONYM_ID 
      ,[ENCNTR_ID] = Source.ENCNTR_ID 
      ,[UPDT_CNT] = Source.UPDT_CNT 
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM 
      ,[UPDT_ID] = Source.UPDT_ID 
      ,[UPDT_TASK] = Source.UPDT_TASK 
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX 
      ,[PRIORITY_SEQ] = Source.PRIORITY_SEQ 
      ,[PROC_START_DT_TM] = Source.PROC_START_DT_TM 
      ,[SCHED_XRAY_TECH_IND] = Source.SCHED_XRAY_TECH_IND 
      ,[SCHED_XRAY_IND] = Source.SCHED_XRAY_IND 
      ,[CONCURRENT_IND] = Source.CONCURRENT_IND 
      ,[SCHED_DUR] = Source.SCHED_DUR 
      ,[SCHED_PRIMARY_IND] = Source.SCHED_PRIMARY_IND 
      ,[SCHED_SURGE_AREA_CD] = Source.SCHED_SURGE_AREA_CD 
      ,[SCHED_PRIORITY_CD] = Source.SCHED_PRIORITY_CD
      ,[SCHED_ANESTH_TYPE_CD] = Source.SCHED_ANESTH_TYPE_CD 
      ,[SCHED_PRIMARY_SURGEON_ID] = Source.SCHED_PRIMARY_SURGEON_ID 
      ,[NCEPOD_CD] = Source.NCEPOD_CD 
      ,[SCHED_SURGICAL_MOD3_CD] = Source.SCHED_SURGICAL_MOD3_CD 
      ,[SCHED_SURGICAL_MOD2_CD] = Source.SCHED_SURGICAL_MOD2_CD 
      ,[SCHED_SURGICAL_MOD1_CD] = Source.SCHED_SURGICAL_MOD1_CD 
      ,[SCHED_SURGICAL_ORDER_COMMENT] = Source.SCHED_SURGICAL_ORDER_COMMENT 
      ,[PROC_TEXT] = Source.PROC_TEXT 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[INST_ID] = Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[ENCNTR_PROCEDURE]  Dest
	INNER JOIN [stage].[ENCNTR_PROCEDURE] Source ON Source.[ENCNTR_PROCEDURE_ID] = Dest.[ENCNTR_PROCEDURE_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ENCNTR_PROCEDURE]
           ([ENCNTR_PROCEDURE_ID]
           ,[CATALOG_CD]
           ,[SYNONYM_ID]
           ,[ENCNTR_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[PRIORITY_SEQ]
           ,[PROC_START_DT_TM]
           ,[SCHED_XRAY_TECH_IND]
           ,[SCHED_XRAY_IND]
           ,[CONCURRENT_IND]
           ,[SCHED_DUR]
           ,[SCHED_PRIMARY_IND]
           ,[SCHED_SURGE_AREA_CD]
           ,[SCHED_PRIORITY_CD]
           ,[SCHED_ANESTH_TYPE_CD]
           ,[SCHED_PRIMARY_SURGEON_ID]
           ,[NCEPOD_CD]
           ,[SCHED_SURGICAL_MOD3_CD]
           ,[SCHED_SURGICAL_MOD2_CD]
           ,[SCHED_SURGICAL_MOD1_CD]
           ,[SCHED_SURGICAL_ORDER_COMMENT]
           ,[PROC_TEXT]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ENCNTR_PROCEDURE_ID]
           ,[CATALOG_CD]
           ,[SYNONYM_ID]
           ,[ENCNTR_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[PRIORITY_SEQ]
           ,[PROC_START_DT_TM]
           ,[SCHED_XRAY_TECH_IND]
           ,[SCHED_XRAY_IND]
           ,[CONCURRENT_IND]
           ,[SCHED_DUR]
           ,[SCHED_PRIMARY_IND]
           ,[SCHED_SURGE_AREA_CD]
           ,[SCHED_PRIORITY_CD]
           ,[SCHED_ANESTH_TYPE_CD]
           ,[SCHED_PRIMARY_SURGEON_ID]
           ,[NCEPOD_CD]
           ,[SCHED_SURGICAL_MOD3_CD]
           ,[SCHED_SURGICAL_MOD2_CD]
           ,[SCHED_SURGICAL_MOD1_CD]
           ,[SCHED_SURGICAL_ORDER_COMMENT]
           ,[PROC_TEXT]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ENCNTR_PROCEDURE] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ENCNTR_PROCEDURE]  Dest with (nolock)
		                  where Dest.[ENCNTR_PROCEDURE_ID]  = Source.[ENCNTR_PROCEDURE_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ENCNTR_PROCEDURE',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END