 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PRSNL]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPrsnl]
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
	   SET [UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[CREATE_PRSNL_ID] = Source.CREATE_PRSNL_ID
      ,[CREATE_DT_TM] = Source.CREATE_DT_TM
      ,[NAME_LAST_KEY] = Source.NAME_LAST_KEY
      ,[NAME_FIRST_KEY] = Source.NAME_FIRST_KEY
      ,[PRSNL_TYPE_CD] = Source.PRSNL_TYPE_CD
      ,[NAME_FULL_FORMATTED] = Source.NAME_FULL_FORMATTED
      ,[PASSWORD] = Source.PASSWORD
      ,[EMAIL] = Source.EMAIL
      ,[PHYSICIAN_IND] = Source.PHYSICIAN_IND
      ,[POSITION_CD] = Source.POSITION_CD
      ,[DEPARTMENT_CD] = Source.DEPARTMENT_CD
      ,[FREE_TEXT_IND] = Source.FREE_TEXT_IND
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[SECTION_CD] = Source.SECTION_CD
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[NAME_LAST] = Source.NAME_LAST
      ,[NAME_FIRST] = Source.NAME_FIRST
      ,[USERNAME] = Source.USERNAME 
      ,[FT_ENTITY_NAME] = Source.FT_ENTITY_NAME 
      ,[FT_ENTITY_ID] = Source.FT_ENTITY_ID
      ,[PRIM_ASSIGN_LOC_CD] = Source.PRIM_ASSIGN_LOC_CD
      ,[LOG_ACCESS_IND] = Source.LOG_ACCESS_IND
      ,[LOG_LEVEL] = Source.LOG_LEVEL
      ,[NAME_LAST_KEY_NLS] = Source.NAME_LAST_KEY_NLS
      ,[NAME_FIRST_KEY_NLS] = Source.NAME_FIRST_KEY_NLS
      ,[PHYSICIAN_STATUS_CD] = Source.PHYSICIAN_STATUS_CD
      ,[LOGICAL_DOMAIN_GRP_ID] = Source.LOGICAL_DOMAIN_GRP_ID
      ,[LOGICAL_DOMAIN_ID] = Source.LOGICAL_DOMAIN_ID
      ,[NAME_LAST_KEY_A_NLS] = Source.NAME_LAST_KEY_A_NLS
      ,[NAME_FIRST_KEY_A_NLS] = Source.NAME_FIRST_KEY_A_NLS
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[EXTERNAL_IND] = Source.EXTERNAL_IND
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PRSNL]    Dest
	INNER JOIN [stage].[PRSNL]   Source ON Source.[PERSON_ID] = Dest.[PERSON_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PRSNL]  
           ([PERSON_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[CREATE_PRSNL_ID]
           ,[CREATE_DT_TM]
           ,[NAME_LAST_KEY]
           ,[NAME_FIRST_KEY]
           ,[PRSNL_TYPE_CD]
           ,[NAME_FULL_FORMATTED]
           ,[PASSWORD]
           ,[EMAIL]
           ,[PHYSICIAN_IND]
           ,[POSITION_CD]
           ,[DEPARTMENT_CD]
           ,[FREE_TEXT_IND]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[SECTION_CD]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[NAME_LAST]
           ,[NAME_FIRST]
           ,[USERNAME]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[PRIM_ASSIGN_LOC_CD]
           ,[LOG_ACCESS_IND]
           ,[LOG_LEVEL]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_FIRST_KEY_NLS]
           ,[PHYSICIAN_STATUS_CD]
           ,[LOGICAL_DOMAIN_GRP_ID]
           ,[LOGICAL_DOMAIN_ID]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[EXTERNAL_IND]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[CREATE_PRSNL_ID]
           ,[CREATE_DT_TM]
           ,[NAME_LAST_KEY]
           ,[NAME_FIRST_KEY]
           ,[PRSNL_TYPE_CD]
           ,[NAME_FULL_FORMATTED]
           ,[PASSWORD]
           ,[EMAIL]
           ,[PHYSICIAN_IND]
           ,[POSITION_CD]
           ,[DEPARTMENT_CD]
           ,[FREE_TEXT_IND]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[SECTION_CD]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[NAME_LAST]
           ,[NAME_FIRST]
           ,[USERNAME]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[PRIM_ASSIGN_LOC_CD]
           ,[LOG_ACCESS_IND]
           ,[LOG_LEVEL]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_FIRST_KEY_NLS]
           ,[PHYSICIAN_STATUS_CD]
           ,[LOGICAL_DOMAIN_GRP_ID]
           ,[LOGICAL_DOMAIN_ID]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[EXTERNAL_IND]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PRSNL]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PRSNL]    Dest with (nolock)
		                  where Dest.[PERSON_ID]  = Source.[PERSON_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PRSNL',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END