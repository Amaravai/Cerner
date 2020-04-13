
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for  ENCNTR_PRSNL_RELTN   
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessEncntrPrsnlReltn]
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
	     SET [PRSNL_PERSON_ID] = Source.PRSNL_PERSON_ID 
      ,[ENCNTR_PRSNL_R_CD] = Source.ENCNTR_PRSNL_R_CD 
      ,[ENCNTR_ID] = Source.ENCNTR_ID 
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
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD 
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM 
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID 
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD 
      ,[FREE_TEXT_CD] = Source.FREE_TEXT_CD 
      ,[FT_PRSNL_NAME] = Source.FT_PRSNL_NAME 
      ,[MANUAL_CREATE_IND] = Source.MANUAL_CREATE_IND 
      ,[MANUAL_CREATE_BY_ID] = Source.MANUAL_CREATE_BY_ID 
      ,[MANUAL_CREATE_DT_TM] = Source.MANUAL_CREATE_DT_TM 
      ,[MANUAL_INACT_IND] = Source.MANUAL_INACT_IND 
      ,[MANUAL_INACT_BY_ID] = Source.MANUAL_INACT_BY_ID 
      ,[MANUAL_INACT_DT_TM] = Source.MANUAL_INACT_DT_TM 
      ,[PRIORITY_SEQ] = Source.PRIORITY_SEQ 
      ,[INTERNAL_SEQ] = Source.INTERNAL_SEQ 
      ,[EXPIRATION_IND] = Source.EXPIRATION_IND 
      ,[NOTIFICATION_CD] = Source.NOTIFICATION_CD 
      ,[EXPIRE_DT_TM] = Source.EXPIRE_DT_TM 
      ,[TRANSACTION_DT_TM] = Source.TRANSACTION_DT_TM 
      ,[ACTIVITY_DT_TM] = Source.ACTIVITY_DT_TM 
      ,[ENCNTR_TYPE_CD] = Source.ENCNTR_TYPE_CD 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[CLU_SUBKEY1_FLAG] = Source.CLU_SUBKEY1_FLAG 
      ,[INST_ID] = Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[ENCNTR_PRSNL_RELTN]  Dest
	INNER JOIN [stage].[ENCNTR_PRSNL_RELTN] Source ON Source.[ENCNTR_PRSNL_RELTN_ID] = Dest.[ENCNTR_PRSNL_RELTN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ENCNTR_PRSNL_RELTN]
           ([ENCNTR_PRSNL_RELTN_ID]
           ,[PRSNL_PERSON_ID]
           ,[ENCNTR_PRSNL_R_CD]
           ,[ENCNTR_ID]
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
           ,[FREE_TEXT_CD]
           ,[FT_PRSNL_NAME]
           ,[MANUAL_CREATE_IND]
           ,[MANUAL_CREATE_BY_ID]
           ,[MANUAL_CREATE_DT_TM]
           ,[MANUAL_INACT_IND]
           ,[MANUAL_INACT_BY_ID]
           ,[MANUAL_INACT_DT_TM]
           ,[PRIORITY_SEQ]
           ,[INTERNAL_SEQ]
           ,[EXPIRATION_IND]
           ,[NOTIFICATION_CD]
           ,[EXPIRE_DT_TM]
           ,[TRANSACTION_DT_TM]
           ,[ACTIVITY_DT_TM]
           ,[ENCNTR_TYPE_CD]
           ,[LAST_UTC_TS]
           ,[CLU_SUBKEY1_FLAG]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ENCNTR_PRSNL_RELTN_ID]
           ,[PRSNL_PERSON_ID]
           ,[ENCNTR_PRSNL_R_CD]
           ,[ENCNTR_ID]
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
           ,[FREE_TEXT_CD]
           ,[FT_PRSNL_NAME]
           ,[MANUAL_CREATE_IND]
           ,[MANUAL_CREATE_BY_ID]
           ,[MANUAL_CREATE_DT_TM]
           ,[MANUAL_INACT_IND]
           ,[MANUAL_INACT_BY_ID]
           ,[MANUAL_INACT_DT_TM]
           ,[PRIORITY_SEQ]
           ,[INTERNAL_SEQ]
           ,[EXPIRATION_IND]
           ,[NOTIFICATION_CD]
           ,[EXPIRE_DT_TM]
           ,[TRANSACTION_DT_TM]
           ,[ACTIVITY_DT_TM]
           ,[ENCNTR_TYPE_CD]
           ,[LAST_UTC_TS]
           ,[CLU_SUBKEY1_FLAG]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ENCNTR_PRSNL_RELTN] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ENCNTR_PRSNL_RELTN]  Dest with (nolock)
		                  where Dest.[ENCNTR_PRSNL_RELTN_ID]  = Source.[ENCNTR_PRSNL_RELTN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ENCNTR_PRSNL_RELTN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END