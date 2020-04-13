
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PERSON_PLAN_GRP] 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonPlanGrp]
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
	     SET [PARENT_ID] = Source.PARENT_ID
      ,[CHILD_ID] = Source.CHILD_ID
      ,[PERSON_PLAN_GRP_CD] = Source.PERSON_PLAN_GRP_CD
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_PLAN_GRP]    Dest
	INNER JOIN [stage].[PERSON_PLAN_GRP]   Source ON Source.[PERSON_PLAN_GRP_ID] = Dest.[PERSON_PLAN_GRP_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_PLAN_GRP]  
           ([PERSON_PLAN_GRP_ID]
           ,[PARENT_ID]
           ,[CHILD_ID]
           ,[PERSON_PLAN_GRP_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_PLAN_GRP_ID]
           ,[PARENT_ID]
           ,[CHILD_ID]
           ,[PERSON_PLAN_GRP_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_PLAN_GRP]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_PLAN_GRP]    Dest with (nolock)
		                  where Dest.[PERSON_PLAN_GRP_ID]  = Source.[PERSON_PLAN_GRP_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_PLAN_GRP',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END