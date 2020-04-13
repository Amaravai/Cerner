
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for  ENCNTR_PLAN_RELTN 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessEncntrPlanReltn]
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
	  SET [ENCNTR_ID] = Source.ENCNTR_ID 
      ,[PERSON_ID] = Source.PERSON_ID 
      ,[PERSON_PLAN_RELTN_ID] = Source.PERSON_PLAN_RELTN_ID 
      ,[HEALTH_PLAN_ID] = Source.HEALTH_PLAN_ID 
      ,[ORGANIZATION_ID] = Source.ORGANIZATION_ID 
      ,[PERSON_ORG_RELTN_ID] = Source.PERSON_ORG_RELTN_ID 
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD 
      ,[UPDT_CNT] = Source.UPDT_CNT 
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM 
      ,[UPDT_ID] = Source.UPDT_ID 
      ,[UPDT_TASK] = Source.UPDT_TASK 
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX 
      ,[ACTIVE_IND] = Source.ACTIVE_IND 
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD 
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID 
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM 
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM 
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD 
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM 
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID 
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM 
      ,[SUBSCRIBER_TYPE_CD] = Source.SUBSCRIBER_TYPE_CD 
      ,[ORIG_PRIORITY_SEQ] = Source.ORIG_PRIORITY_SEQ 
      ,[PRIORITY_SEQ] = Source.PRIORITY_SEQ 
      ,[MEMBER_NBR] = Source.MEMBER_NBR 
      ,[SUBS_MEMBER_NBR] = Source.SUBS_MEMBER_NBR 
      ,[INSUR_SOURCE_INFO_CD] = Source.INSUR_SOURCE_INFO_CD 
      ,[BALANCE_TYPE_CD] = Source.BALANCE_TYPE_CD 
      ,[DEDUCT_AMT] = Source.DEDUCT_AMT 
      ,[DEDUCT_MET_AMT] = Source.DEDUCT_MET_AMT 
      ,[DEDUCT_MET_DT_TM] = Source.DEDUCT_MET_DT_TM 
      ,[ASSIGN_BENEFITS_CD] = Source.ASSIGN_BENEFITS_CD 
      ,[COORD_BENEFITS_CD] = Source.COORD_BENEFITS_CD 
      ,[PLAN_TYPE_CD] = Source.PLAN_TYPE_CD 
      ,[PLAN_CLASS_CD] = Source.PLAN_CLASS_CD 
      ,[HEALTH_CARD_PROVINCE] = Source.HEALTH_CARD_PROVINCE 
      ,[HEALTH_CARD_VER_CODE] = Source.HEALTH_CARD_VER_CODE 
      ,[HEALTH_CARD_NBR] = Source.HEALTH_CARD_NBR 
      ,[INSURED_CARD_NAME] = Source.INSURED_CARD_NAME 
      ,[GROUP_NAME] = Source.GROUP_NAME 
      ,[GROUP_NBR] = Source.GROUP_NBR 
      ,[POLICY_NBR] = Source.POLICY_NBR 
      ,[SPONSOR_PERSON_ORG_RELTN_ID] = Source.SPONSOR_PERSON_ORG_RELTN_ID 
      ,[MILITARY_RANK_CD] = Source.MILITARY_RANK_CD 
      ,[MILITARY_STATUS_CD] = Source.MILITARY_STATUS_CD 
      ,[MILITARY_SERVICE_CD] = Source.MILITARY_SERVICE_CD 
      ,[MILITARY_BASE_LOCATION] = Source.MILITARY_BASE_LOCATION 
      ,[HEALTH_CARD_TYPE] = Source.HEALTH_CARD_TYPE 
      ,[HEALTH_CARD_ISSUE_DT_TM] = Source.HEALTH_CARD_ISSUE_DT_TM 
      ,[HEALTH_CARD_EXPIRY_DT_TM] = Source.HEALTH_CARD_EXPIRY_DT_TM 
      ,[MEMBER_PERSON_CODE] = Source.MEMBER_PERSON_CODE 
      ,[INS_CARD_COPIED_CD] = Source.INS_CARD_COPIED_CD 
      ,[LIFE_RSV_DAYS] = Source.LIFE_RSV_DAYS 
      ,[LIFE_RSV_REMAIN_DAYS] = Source.LIFE_RSV_REMAIN_DAYS 
      ,[LIFE_RSV_DAILY_DED_AMT] = Source.LIFE_RSV_DAILY_DED_AMT 
      ,[LIFE_RSV_DAILY_DED_QUAL_CD] = Source.LIFE_RSV_DAILY_DED_QUAL_CD 
      ,[CARD_ISSUE_NBR] = Source.CARD_ISSUE_NBR 
      ,[CARD_CATEGORY_CD] = Source.CARD_CATEGORY_CD 
      ,[PROGRAM_STATUS_CD] = Source.PROGRAM_STATUS_CD 
      ,[VERIFY_PRSNL_ID] = Source.VERIFY_PRSNL_ID 
      ,[VERIFY_DT_TM] = Source.VERIFY_DT_TM 
      ,[VERIFY_STATUS_CD] = Source.VERIFY_STATUS_CD 
      ,[DENIAL_REASON_CD] = Source.DENIAL_REASON_CD 
      ,[COVERAGE_COMMENTS_LONG_TEXT_ID] = Source.COVERAGE_COMMENTS_LONG_TEXT_ID 
      ,[SIGNATURE_ON_FILE_CD] = Source.SIGNATURE_ON_FILE_CD 
      ,[PRICING_AGENCY_CD] = Source.PRICING_AGENCY_CD 
      ,[RX_PLAN_COB_SEQ] = Source.RX_PLAN_COB_SEQ 
      ,[SIGNATURE_SOURCE_CD] = Source.SIGNATURE_SOURCE_CD 
      ,[ACCEPT_ASSIGNMENT_CD] = Source.ACCEPT_ASSIGNMENT_CD 
      ,[SIGNATURE_DT_TM] = Source.SIGNATURE_DT_TM 
      ,[INSURED_CARD_NAME_MIDDLE] = Source.INSURED_CARD_NAME_MIDDLE 
      ,[INSURED_CARD_NAME_LAST] = Source.INSURED_CARD_NAME_LAST 
      ,[INSURED_CARD_NAME_SUFFIX] = Source.INSURED_CARD_NAME_SUFFIX 
      ,[INSURED_CARD_NAME_FIRST] = Source.INSURED_CARD_NAME_FIRST 
      ,[PROP_CASUALTY_CLAIM_NBR_TXT] = Source.PROP_CASUALTY_CLAIM_NBR_TXT 
      ,[VERIFY_SOURCE_CD] = Source.VERIFY_SOURCE_CD 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[NOTIFY_SOURCE_CD] = Source.NOTIFY_SOURCE_CD 
      ,[RESUBMIT_278N_CD] = Source.RESUBMIT_278N_CD 
      ,[ALT_MEMBER_NBR] = Source.ALT_MEMBER_NBR 
      ,[EXT_PAYER_NAME] = Source.EXT_PAYER_NAME 
      ,[EXT_PAYER_IDENT] = Source.EXT_PAYER_IDENT 
      ,[NOTIFY_DT_TM] = Source.NOTIFY_DT_TM 
      ,[NOTIFY_PRSNL_ID] = Source.NOTIFY_PRSNL_ID 
      ,[AUTH_REQUIRED_CD] = Source.AUTH_REQUIRED_CD 
      ,[GENERIC_HEALTH_PLAN_NAME] = Source.GENERIC_HEALTH_PLAN_NAME 
      ,[INS_OFFICE_ORG_ID] = Source.INS_OFFICE_ORG_ID 
      ,[BENEFIT_VERIFY_DT_TM] = Source.BENEFIT_VERIFY_DT_TM 
      ,[INST_ID] = Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[ENCNTR_PLAN_RELTN]  Dest
	INNER JOIN [stage].[ENCNTR_PLAN_RELTN] Source ON Source.[ENCNTR_PLAN_RELTN_ID] = Dest.[ENCNTR_PLAN_RELTN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ENCNTR_PLAN_RELTN]
           ([ENCNTR_PLAN_RELTN_ID]
           ,[ENCNTR_ID]
           ,[PERSON_ID]
           ,[PERSON_PLAN_RELTN_ID]
           ,[HEALTH_PLAN_ID]
           ,[ORGANIZATION_ID]
           ,[PERSON_ORG_RELTN_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ACTIVE_STATUS_DT_TM]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[END_EFFECTIVE_DT_TM]
           ,[SUBSCRIBER_TYPE_CD]
           ,[ORIG_PRIORITY_SEQ]
           ,[PRIORITY_SEQ]
           ,[MEMBER_NBR]
           ,[SUBS_MEMBER_NBR]
           ,[INSUR_SOURCE_INFO_CD]
           ,[BALANCE_TYPE_CD]
           ,[DEDUCT_AMT]
           ,[DEDUCT_MET_AMT]
           ,[DEDUCT_MET_DT_TM]
           ,[ASSIGN_BENEFITS_CD]
           ,[COORD_BENEFITS_CD]
           ,[PLAN_TYPE_CD]
           ,[PLAN_CLASS_CD]
           ,[HEALTH_CARD_PROVINCE]
           ,[HEALTH_CARD_VER_CODE]
           ,[HEALTH_CARD_NBR]
           ,[INSURED_CARD_NAME]
           ,[GROUP_NAME]
           ,[GROUP_NBR]
           ,[POLICY_NBR]
           ,[SPONSOR_PERSON_ORG_RELTN_ID]
           ,[MILITARY_RANK_CD]
           ,[MILITARY_STATUS_CD]
           ,[MILITARY_SERVICE_CD]
           ,[MILITARY_BASE_LOCATION]
           ,[HEALTH_CARD_TYPE]
           ,[HEALTH_CARD_ISSUE_DT_TM]
           ,[HEALTH_CARD_EXPIRY_DT_TM]
           ,[MEMBER_PERSON_CODE]
           ,[INS_CARD_COPIED_CD]
           ,[LIFE_RSV_DAYS]
           ,[LIFE_RSV_REMAIN_DAYS]
           ,[LIFE_RSV_DAILY_DED_AMT]
           ,[LIFE_RSV_DAILY_DED_QUAL_CD]
           ,[CARD_ISSUE_NBR]
           ,[CARD_CATEGORY_CD]
           ,[PROGRAM_STATUS_CD]
           ,[VERIFY_PRSNL_ID]
           ,[VERIFY_DT_TM]
           ,[VERIFY_STATUS_CD]
           ,[DENIAL_REASON_CD]
           ,[COVERAGE_COMMENTS_LONG_TEXT_ID]
           ,[SIGNATURE_ON_FILE_CD]
           ,[PRICING_AGENCY_CD]
           ,[RX_PLAN_COB_SEQ]
           ,[SIGNATURE_SOURCE_CD]
           ,[ACCEPT_ASSIGNMENT_CD]
           ,[SIGNATURE_DT_TM]
           ,[INSURED_CARD_NAME_MIDDLE]
           ,[INSURED_CARD_NAME_LAST]
           ,[INSURED_CARD_NAME_SUFFIX]
           ,[INSURED_CARD_NAME_FIRST]
           ,[PROP_CASUALTY_CLAIM_NBR_TXT]
           ,[VERIFY_SOURCE_CD]
           ,[LAST_UTC_TS]
           ,[NOTIFY_SOURCE_CD]
           ,[RESUBMIT_278N_CD]
           ,[ALT_MEMBER_NBR]
           ,[EXT_PAYER_NAME]
           ,[EXT_PAYER_IDENT]
           ,[NOTIFY_DT_TM]
           ,[NOTIFY_PRSNL_ID]
           ,[AUTH_REQUIRED_CD]
           ,[GENERIC_HEALTH_PLAN_NAME]
           ,[INS_OFFICE_ORG_ID]
           ,[BENEFIT_VERIFY_DT_TM]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ENCNTR_PLAN_RELTN_ID]
           ,[ENCNTR_ID]
           ,[PERSON_ID]
           ,[PERSON_PLAN_RELTN_ID]
           ,[HEALTH_PLAN_ID]
           ,[ORGANIZATION_ID]
           ,[PERSON_ORG_RELTN_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ACTIVE_STATUS_DT_TM]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[END_EFFECTIVE_DT_TM]
           ,[SUBSCRIBER_TYPE_CD]
           ,[ORIG_PRIORITY_SEQ]
           ,[PRIORITY_SEQ]
           ,[MEMBER_NBR]
           ,[SUBS_MEMBER_NBR]
           ,[INSUR_SOURCE_INFO_CD]
           ,[BALANCE_TYPE_CD]
           ,[DEDUCT_AMT]
           ,[DEDUCT_MET_AMT]
           ,[DEDUCT_MET_DT_TM]
           ,[ASSIGN_BENEFITS_CD]
           ,[COORD_BENEFITS_CD]
           ,[PLAN_TYPE_CD]
           ,[PLAN_CLASS_CD]
           ,[HEALTH_CARD_PROVINCE]
           ,[HEALTH_CARD_VER_CODE]
           ,[HEALTH_CARD_NBR]
           ,[INSURED_CARD_NAME]
           ,[GROUP_NAME]
           ,[GROUP_NBR]
           ,[POLICY_NBR]
           ,[SPONSOR_PERSON_ORG_RELTN_ID]
           ,[MILITARY_RANK_CD]
           ,[MILITARY_STATUS_CD]
           ,[MILITARY_SERVICE_CD]
           ,[MILITARY_BASE_LOCATION]
           ,[HEALTH_CARD_TYPE]
           ,[HEALTH_CARD_ISSUE_DT_TM]
           ,[HEALTH_CARD_EXPIRY_DT_TM]
           ,[MEMBER_PERSON_CODE]
           ,[INS_CARD_COPIED_CD]
           ,[LIFE_RSV_DAYS]
           ,[LIFE_RSV_REMAIN_DAYS]
           ,[LIFE_RSV_DAILY_DED_AMT]
           ,[LIFE_RSV_DAILY_DED_QUAL_CD]
           ,[CARD_ISSUE_NBR]
           ,[CARD_CATEGORY_CD]
           ,[PROGRAM_STATUS_CD]
           ,[VERIFY_PRSNL_ID]
           ,[VERIFY_DT_TM]
           ,[VERIFY_STATUS_CD]
           ,[DENIAL_REASON_CD]
           ,[COVERAGE_COMMENTS_LONG_TEXT_ID]
           ,[SIGNATURE_ON_FILE_CD]
           ,[PRICING_AGENCY_CD]
           ,[RX_PLAN_COB_SEQ]
           ,[SIGNATURE_SOURCE_CD]
           ,[ACCEPT_ASSIGNMENT_CD]
           ,[SIGNATURE_DT_TM]
           ,[INSURED_CARD_NAME_MIDDLE]
           ,[INSURED_CARD_NAME_LAST]
           ,[INSURED_CARD_NAME_SUFFIX]
           ,[INSURED_CARD_NAME_FIRST]
           ,[PROP_CASUALTY_CLAIM_NBR_TXT]
           ,[VERIFY_SOURCE_CD]
           ,[LAST_UTC_TS]
           ,[NOTIFY_SOURCE_CD]
           ,[RESUBMIT_278N_CD]
           ,[ALT_MEMBER_NBR]
           ,[EXT_PAYER_NAME]
           ,[EXT_PAYER_IDENT]
           ,[NOTIFY_DT_TM]
           ,[NOTIFY_PRSNL_ID]
           ,[AUTH_REQUIRED_CD]
           ,[GENERIC_HEALTH_PLAN_NAME]
           ,[INS_OFFICE_ORG_ID]
           ,[BENEFIT_VERIFY_DT_TM]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ENCNTR_PLAN_RELTN] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ENCNTR_PLAN_RELTN]  Dest with (nolock)
		                  where Dest.[ENCNTR_PLAN_RELTN_ID]  = Source.[ENCNTR_PLAN_RELTN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ENCNTR_PLAN_RELTN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END