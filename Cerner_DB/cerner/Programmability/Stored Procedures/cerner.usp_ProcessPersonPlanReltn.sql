
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PERSON_PLAN_RELTN] 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonPlanReltn]
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
	     SET [HEALTH_PLAN_ID] = Source.HEALTH_PLAN_ID
      ,[PERSON_ID] = Source.PERSON_ID
      ,[PERSON_PLAN_R_CD] = Source.PERSON_PLAN_R_CD
      ,[PERSON_ORG_RELTN_ID] = Source.PERSON_ORG_RELTN_ID
      ,[ORGANIZATION_ID] = Source.ORGANIZATION_ID
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
      ,[PRIORITY_SEQ] = Source.PRIORITY_SEQ
      ,[MEMBER_NBR] = Source.MEMBER_NBR
      ,[SIGNATURE_ON_FILE_CD] = Source.SIGNATURE_ON_FILE_CD
      ,[BALANCE_TYPE_CD] = Source.BALANCE_TYPE_CD
      ,[DEDUCT_AMT] = Source.DEDUCT_AMT
      ,[DEDUCT_MET_AMT] = Source.DEDUCT_MET_AMT
      ,[DEDUCT_MET_DT_TM] = Source.DEDUCT_MET_DT_TM
      ,[COVERAGE_TYPE_CD] = Source.COVERAGE_TYPE_CD
      ,[MAX_OUT_PCKT_AMT] = Source.MAX_OUT_PCKT_AMT
      ,[MAX_OUT_PCKT_DT_TM] = Source.MAX_OUT_PCKT_DT_TM
      ,[FAM_DEDUCT_MET_AMT] = Source.FAM_DEDUCT_MET_AMT
      ,[FAM_DEDUCT_MET_DT_TM] = Source.FAM_DEDUCT_MET_DT_TM
      ,[VERIFY_STATUS_CD] = Source.VERIFY_STATUS_CD
      ,[VERIFY_DT_TM] = Source.VERIFY_DT_TM
      ,[VERIFY_PRSNL_ID] = Source.VERIFY_PRSNL_ID
      ,[PLAN_TYPE_CD] = Source.PLAN_TYPE_CD
      ,[PLAN_CLASS_CD] = Source.PLAN_CLASS_CD
      ,[INSURED_CARD_NAME] = Source.INSURED_CARD_NAME
      ,[GROUP_NAME] = Source.GROUP_NAME
      ,[GROUP_NBR] = Source.GROUP_NBR
      ,[POLICY_NBR] = Source.POLICY_NBR
      ,[SPONSOR_PERSON_ORG_RELTN_ID] = Source.SPONSOR_PERSON_ORG_RELTN_ID
      ,[SUBSCRIBER_PERSON_ID] = Source.SUBSCRIBER_PERSON_ID
      ,[MEMBER_PERSON_CODE] = Source.MEMBER_PERSON_CODE
      ,[LIFE_RSV_DAYS] = Source.LIFE_RSV_DAYS
      ,[LIFE_RSV_REMAIN_DAYS] = Source.LIFE_RSV_REMAIN_DAYS
      ,[LIFE_RSV_DAILY_DED_AMT] = Source.LIFE_RSV_DAILY_DED_AMT
      ,[LIFE_RSV_DAILY_DED_QUAL_CD] = Source.LIFE_RSV_DAILY_DED_QUAL_CD
      ,[CARD_ISSUE_NBR] = Source.CARD_ISSUE_NBR
      ,[CARD_CATEGORY_CD] = Source.CARD_CATEGORY_CD
      ,[PROGRAM_STATUS_CD] = Source.PROGRAM_STATUS_CD
      ,[DENIAL_REASON_CD] = Source.DENIAL_REASON_CD
      ,[COVERAGE_COMMENTS_LONG_TEXT_ID] = Source.COVERAGE_COMMENTS_LONG_TEXT_ID
      ,[CONTRACT_CODE] = Source.CONTRACT_CODE
      ,[INSURED_CARD_NAME_FIRST] = Source.INSURED_CARD_NAME_FIRST
      ,[INSURED_CARD_NAME_MIDDLE] = Source.INSURED_CARD_NAME_MIDDLE
      ,[INSURED_CARD_NAME_SUFFIX] = Source.INSURED_CARD_NAME_SUFFIX
      ,[INSURED_CARD_NAME_LAST] = Source.INSURED_CARD_NAME_LAST
      ,[VERIFY_SOURCE_CD] = Source.VERIFY_SOURCE_CD
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[EXT_PAYER_NAME] = Source.EXT_PAYER_NAME
      ,[EXT_PAYER_IDENT] = Source.EXT_PAYER_IDENT
      ,[ALT_MEMBER_NBR] = Source.ALT_MEMBER_NBR
      ,[GENERIC_HEALTH_PLAN_NAME] = Source.GENERIC_HEALTH_PLAN_NAME
      ,[INS_OFFICE_ORG_ID] = Source.INS_OFFICE_ORG_ID
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_PLAN_RELTN]    Dest
	INNER JOIN [stage].[PERSON_PLAN_RELTN]   Source ON Source.[PERSON_PLAN_RELTN_ID] = Dest.[PERSON_PLAN_RELTN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_PLAN_RELTN]  
           ([PERSON_PLAN_RELTN_ID]
           ,[HEALTH_PLAN_ID]
           ,[PERSON_ID]
           ,[PERSON_PLAN_R_CD]
           ,[PERSON_ORG_RELTN_ID]
           ,[ORGANIZATION_ID]
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
           ,[PRIORITY_SEQ]
           ,[MEMBER_NBR]
           ,[SIGNATURE_ON_FILE_CD]
           ,[BALANCE_TYPE_CD]
           ,[DEDUCT_AMT]
           ,[DEDUCT_MET_AMT]
           ,[DEDUCT_MET_DT_TM]
           ,[COVERAGE_TYPE_CD]
           ,[MAX_OUT_PCKT_AMT]
           ,[MAX_OUT_PCKT_DT_TM]
           ,[FAM_DEDUCT_MET_AMT]
           ,[FAM_DEDUCT_MET_DT_TM]
           ,[VERIFY_STATUS_CD]
           ,[VERIFY_DT_TM]
           ,[VERIFY_PRSNL_ID]
           ,[PLAN_TYPE_CD]
           ,[PLAN_CLASS_CD]
           ,[INSURED_CARD_NAME]
           ,[GROUP_NAME]
           ,[GROUP_NBR]
           ,[POLICY_NBR]
           ,[SPONSOR_PERSON_ORG_RELTN_ID]
           ,[SUBSCRIBER_PERSON_ID]
           ,[MEMBER_PERSON_CODE]
           ,[LIFE_RSV_DAYS]
           ,[LIFE_RSV_REMAIN_DAYS]
           ,[LIFE_RSV_DAILY_DED_AMT]
           ,[LIFE_RSV_DAILY_DED_QUAL_CD]
           ,[CARD_ISSUE_NBR]
           ,[CARD_CATEGORY_CD]
           ,[PROGRAM_STATUS_CD]
           ,[DENIAL_REASON_CD]
           ,[COVERAGE_COMMENTS_LONG_TEXT_ID]
           ,[CONTRACT_CODE]
           ,[INSURED_CARD_NAME_FIRST]
           ,[INSURED_CARD_NAME_MIDDLE]
           ,[INSURED_CARD_NAME_SUFFIX]
           ,[INSURED_CARD_NAME_LAST]
           ,[VERIFY_SOURCE_CD]
           ,[LAST_UTC_TS]
           ,[EXT_PAYER_NAME]
           ,[EXT_PAYER_IDENT]
           ,[ALT_MEMBER_NBR]
           ,[GENERIC_HEALTH_PLAN_NAME]
           ,[INS_OFFICE_ORG_ID]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_PLAN_RELTN_ID]
           ,[HEALTH_PLAN_ID]
           ,[PERSON_ID]
           ,[PERSON_PLAN_R_CD]
           ,[PERSON_ORG_RELTN_ID]
           ,[ORGANIZATION_ID]
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
           ,[PRIORITY_SEQ]
           ,[MEMBER_NBR]
           ,[SIGNATURE_ON_FILE_CD]
           ,[BALANCE_TYPE_CD]
           ,[DEDUCT_AMT]
           ,[DEDUCT_MET_AMT]
           ,[DEDUCT_MET_DT_TM]
           ,[COVERAGE_TYPE_CD]
           ,[MAX_OUT_PCKT_AMT]
           ,[MAX_OUT_PCKT_DT_TM]
           ,[FAM_DEDUCT_MET_AMT]
           ,[FAM_DEDUCT_MET_DT_TM]
           ,[VERIFY_STATUS_CD]
           ,[VERIFY_DT_TM]
           ,[VERIFY_PRSNL_ID]
           ,[PLAN_TYPE_CD]
           ,[PLAN_CLASS_CD]
           ,[INSURED_CARD_NAME]
           ,[GROUP_NAME]
           ,[GROUP_NBR]
           ,[POLICY_NBR]
           ,[SPONSOR_PERSON_ORG_RELTN_ID]
           ,[SUBSCRIBER_PERSON_ID]
           ,[MEMBER_PERSON_CODE]
           ,[LIFE_RSV_DAYS]
           ,[LIFE_RSV_REMAIN_DAYS]
           ,[LIFE_RSV_DAILY_DED_AMT]
           ,[LIFE_RSV_DAILY_DED_QUAL_CD]
           ,[CARD_ISSUE_NBR]
           ,[CARD_CATEGORY_CD]
           ,[PROGRAM_STATUS_CD]
           ,[DENIAL_REASON_CD]
           ,[COVERAGE_COMMENTS_LONG_TEXT_ID]
           ,[CONTRACT_CODE]
           ,[INSURED_CARD_NAME_FIRST]
           ,[INSURED_CARD_NAME_MIDDLE]
           ,[INSURED_CARD_NAME_SUFFIX]
           ,[INSURED_CARD_NAME_LAST]
           ,[VERIFY_SOURCE_CD]
           ,[LAST_UTC_TS]
           ,[EXT_PAYER_NAME]
           ,[EXT_PAYER_IDENT]
           ,[ALT_MEMBER_NBR]
           ,[GENERIC_HEALTH_PLAN_NAME]
           ,[INS_OFFICE_ORG_ID]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_PLAN_RELTN]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_PLAN_RELTN]    Dest with (nolock)
		                  where Dest.[PERSON_PLAN_RELTN_ID]  = Source.[PERSON_PLAN_RELTN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_PLAN_RELTN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END