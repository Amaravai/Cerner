

 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for  HealthPlan
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessHealthPlan]
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
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[PLAN_TYPE_CD] = Source.PLAN_TYPE_CD
      ,[PLAN_NAME] = Source.PLAN_NAME
      ,[PLAN_DESC] = Source.PLAN_DESC
      ,[FINANCIAL_CLASS_CD] = Source.FINANCIAL_CLASS_CD
      ,[FT_ENTITY_NAME] = Source.FT_ENTITY_NAME
      ,[FT_ENTITY_ID] = Source.FT_ENTITY_ID
      ,[BABY_COVERAGE_CD] = Source.BABY_COVERAGE_CD
      ,[COMB_BABY_BILL_CD] = Source.COMB_BABY_BILL_CD
      ,[PLAN_CLASS_CD] = Source.PLAN_CLASS_CD
      ,[GROUP_NBR] = Source.GROUP_NBR
      ,[GROUP_NAME] = Source.GROUP_NAME 
      ,[POLICY_NBR] = Source.POLICY_NBR
      ,[PLAN_NAME_KEY] = Source.PLAN_NAME_KEY
      ,[PLAN_NAME_KEY_NLS] = Source.PLAN_NAME_KEY_NLS 
      ,[PAT_BILL_PREF_FLAG] = Source.PAT_BILL_PREF_FLAG
      ,[PRI_CONCURRENT_IND] = Source.PRI_CONCURRENT_IND
      ,[SEC_CONCURRENT_IND] = Source.SEC_CONCURRENT_IND
      ,[PRODUCT_CD] = Source.PRODUCT_CD
      ,[BENEFIT_SET_NAME] = Source.BENEFIT_SET_NAME
      ,[LOGICAL_DOMAIN_ID] = Source.LOGICAL_DOMAIN_ID
      ,[FB_BENEFIT_SET_UID] = Source.FB_BENEFIT_SET_UID
      ,[SERVICE_TYPE_CD] = Source.SERVICE_TYPE_CD
      ,[PLAN_NAME_KEY_A_NLS] = Source.PLAN_NAME_KEY_A_NLS 
      ,[PLAN_CATEGORY_CD] = Source.PLAN_CATEGORY_CD
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[PROVIDER_AFFILIATION_TXT] = Source.PROVIDER_AFFILIATION_TXT
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[HEALTH_PLAN]  Dest
	INNER JOIN [stage].[HEALTH_PLAN] Source ON Source.[HEALTH_PLAN_ID] = Dest.[HEALTH_PLAN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[HEALTH_PLAN]
           ([HEALTH_PLAN_ID]
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
           ,[PLAN_TYPE_CD]
           ,[PLAN_NAME]
           ,[PLAN_DESC]
           ,[FINANCIAL_CLASS_CD]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[BABY_COVERAGE_CD]
           ,[COMB_BABY_BILL_CD]
           ,[PLAN_CLASS_CD]
           ,[GROUP_NBR]
           ,[GROUP_NAME]
           ,[POLICY_NBR]
           ,[PLAN_NAME_KEY]
           ,[PLAN_NAME_KEY_NLS]
           ,[PAT_BILL_PREF_FLAG]
           ,[PRI_CONCURRENT_IND]
           ,[SEC_CONCURRENT_IND]
           ,[PRODUCT_CD]
           ,[BENEFIT_SET_NAME]
           ,[LOGICAL_DOMAIN_ID]
           ,[FB_BENEFIT_SET_UID]
           ,[SERVICE_TYPE_CD]
           ,[PLAN_NAME_KEY_A_NLS]
           ,[PLAN_CATEGORY_CD]
           ,[LAST_UTC_TS]
           ,[PROVIDER_AFFILIATION_TXT]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [HEALTH_PLAN_ID]
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
           ,[PLAN_TYPE_CD]
           ,[PLAN_NAME]
           ,[PLAN_DESC]
           ,[FINANCIAL_CLASS_CD]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[BABY_COVERAGE_CD]
           ,[COMB_BABY_BILL_CD]
           ,[PLAN_CLASS_CD]
           ,[GROUP_NBR]
           ,[GROUP_NAME]
           ,[POLICY_NBR]
           ,[PLAN_NAME_KEY]
           ,[PLAN_NAME_KEY_NLS]
           ,[PAT_BILL_PREF_FLAG]
           ,[PRI_CONCURRENT_IND]
           ,[SEC_CONCURRENT_IND]
           ,[PRODUCT_CD]
           ,[BENEFIT_SET_NAME]
           ,[LOGICAL_DOMAIN_ID]
           ,[FB_BENEFIT_SET_UID]
           ,[SERVICE_TYPE_CD]
           ,[PLAN_NAME_KEY_A_NLS]
           ,[PLAN_CATEGORY_CD]
           ,[LAST_UTC_TS]
           ,[PROVIDER_AFFILIATION_TXT]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[HEALTH_PLAN] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[HEALTH_PLAN]  Dest with (nolock)
		                  where Dest.[HEALTH_PLAN_ID]  = Source.[HEALTH_PLAN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('HEALTH_PLAN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END