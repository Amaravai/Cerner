

-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for Organization 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessOrganization]
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
	 SET  [UPDT_CNT] =Source.UPDT_CNT 
      ,[UPDT_DT_TM] =Source.UPDT_DT_TM 
      ,[UPDT_ID] =Source.UPDT_ID 
      ,[UPDT_TASK] =Source.UPDT_TASK 
      ,[UPDT_APPLCTX] =Source.UPDT_APPLCTX 
      ,[ACTIVE_IND] =Source.ACTIVE_IND 
      ,[ACTIVE_STATUS_CD] =Source.ACTIVE_STATUS_CD 
      ,[ACTIVE_STATUS_DT_TM] =Source.ACTIVE_STATUS_DT_TM 
      ,[ACTIVE_STATUS_PRSNL_ID] =Source.ACTIVE_STATUS_PRSNL_ID 
      ,[BEG_EFFECTIVE_DT_TM] =Source.BEG_EFFECTIVE_DT_TM 
      ,[END_EFFECTIVE_DT_TM] =Source.END_EFFECTIVE_DT_TM 
      ,[DATA_STATUS_CD] =Source.DATA_STATUS_CD 
      ,[DATA_STATUS_DT_TM] =Source.DATA_STATUS_DT_TM 
      ,[DATA_STATUS_PRSNL_ID] =Source.DATA_STATUS_PRSNL_ID 
      ,[CONTRIBUTOR_SYSTEM_CD] =Source.CONTRIBUTOR_SYSTEM_CD 
      ,[ORG_NAME] =Source.ORG_NAME 
      ,[ORG_NAME_KEY] =Source.ORG_NAME_KEY 
      ,[FEDERAL_TAX_ID_NBR] =Source.FEDERAL_TAX_ID_NBR 
      ,[ORG_STATUS_CD] =Source.ORG_STATUS_CD 
      ,[FT_ENTITY_NAME] =Source.FT_ENTITY_NAME 
      ,[FT_ENTITY_ID] =Source.FT_ENTITY_ID 
      ,[ORG_CLASS_CD] =Source.ORG_CLASS_CD 
      ,[ORG_NAME_KEY_NLS] =Source.ORG_NAME_KEY_NLS 
      ,[CONTRIBUTOR_SOURCE_CD] =Source.CONTRIBUTOR_SOURCE_CD 
      ,[LOGICAL_DOMAIN_ID] =Source.LOGICAL_DOMAIN_ID 
      ,[ORG_NAME_KEY_A_NLS] =Source.ORG_NAME_KEY_A_NLS 
      ,[LAST_UTC_TS] =Source.LAST_UTC_TS 
      ,[EXTERNAL_IND] =Source.EXTERNAL_IND 
      ,[INST_ID] =Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM [cerner].[ORGANIZATION] Dest
	INNER JOIN [stage].[ORGANIZATION] Source ON Source.[ORGANIZATION_ID] = Dest.[ORGANIZATION_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ORGANIZATION]
           ([ORGANIZATION_ID]
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
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[ORG_NAME]
           ,[ORG_NAME_KEY]
           ,[FEDERAL_TAX_ID_NBR]
           ,[ORG_STATUS_CD]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[ORG_CLASS_CD]
           ,[ORG_NAME_KEY_NLS]
           ,[CONTRIBUTOR_SOURCE_CD]
           ,[LOGICAL_DOMAIN_ID]
           ,[ORG_NAME_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[EXTERNAL_IND]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ORGANIZATION_ID]
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
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[ORG_NAME]
           ,[ORG_NAME_KEY]
           ,[FEDERAL_TAX_ID_NBR]
           ,[ORG_STATUS_CD]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[ORG_CLASS_CD]
           ,[ORG_NAME_KEY_NLS]
           ,[CONTRIBUTOR_SOURCE_CD]
           ,[LOGICAL_DOMAIN_ID]
           ,[ORG_NAME_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[EXTERNAL_IND]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ORGANIZATION] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ORGANIZATION]  Dest with (nolock)
		                  where Dest.[ORGANIZATION_ID] = Source.[ORGANIZATION_ID] );
		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ORGANIZATION',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END