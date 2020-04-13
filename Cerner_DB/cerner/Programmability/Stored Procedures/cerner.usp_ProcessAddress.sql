
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for Address 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessAddress]
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
	SET [PARENT_ENTITY_NAME] = Source.PARENT_ENTITY_NAME 
      ,[PARENT_ENTITY_ID] = Source.PARENT_ENTITY_ID 
      ,[ADDRESS_TYPE_CD] = Source.ADDRESS_TYPE_CD 
      ,[UPDT_CNT] = Source.UPDT_CNT 
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM 
      ,[UPDT_ID] = Source.UPDT_ID 
      ,[UPDT_TASK] = Source.UPDT_TASK 
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX 
      ,[ACTIVE_IND] = Source.ACTIVE_IND 
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD 
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM 
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID 
      ,[ADDRESS_FORMAT_CD] = Source.ADDRESS_FORMAT_CD 
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM 
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM 
      ,[CONTACT_NAME] = Source.CONTACT_NAME 
      ,[RESIDENCE_TYPE_CD] = Source.RESIDENCE_TYPE_CD 
      ,[COMMENT_TXT] = Source.COMMENT_TXT 
      ,[STREET_ADDR] = Source.STREET_ADDR 
      ,[STREET_ADDR2] = Source.STREET_ADDR2 
      ,[STREET_ADDR3] = Source.STREET_ADDR3 
      ,[STREET_ADDR4] = Source.STREET_ADDR4 
      ,[CITY] = Source.CITY 
      ,[STATE] = Source.STATE 
      ,[STATE_CD] = Source.STATE_CD 
      ,[ZIPCODE] = Source.ZIPCODE 
      ,[ZIP_CODE_GROUP_CD] = Source.ZIP_CODE_GROUP_CD 
      ,[POSTAL_BARCODE_INFO] = Source.POSTAL_BARCODE_INFO 
      ,[COUNTY] = Source.COUNTY 
      ,[COUNTY_CD] = Source.COUNTY_CD 
      ,[COUNTRY] = Source.COUNTRY 
      ,[COUNTRY_CD] = Source.COUNTRY_CD 
      ,[RESIDENCE_CD] = Source.RESIDENCE_CD 
      ,[MAIL_STOP] = Source.MAIL_STOP 
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD 
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM 
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID 
      ,[ADDRESS_TYPE_SEQ] = Source.ADDRESS_TYPE_SEQ 
      ,[BEG_EFFECTIVE_MM_DD] = Source.BEG_EFFECTIVE_MM_DD 
      ,[END_EFFECTIVE_MM_DD] = Source.END_EFFECTIVE_MM_DD 
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD 
      ,[OPERATION_HOURS] = Source.OPERATION_HOURS 
      ,[LONG_TEXT_ID] = Source.LONG_TEXT_ID 
      ,[ADDRESS_INFO_STATUS_CD] = Source.ADDRESS_INFO_STATUS_CD 
      ,[PRIMARY_CARE_CD] = Source.PRIMARY_CARE_CD 
      ,[DISTRICT_HEALTH_CD] = Source.DISTRICT_HEALTH_CD 
      ,[ZIPCODE_KEY] = Source.ZIPCODE_KEY 
      ,[POSTAL_IDENTIFIER] = Source.POSTAL_IDENTIFIER 
      ,[POSTAL_IDENTIFIER_KEY] = Source.POSTAL_IDENTIFIER_KEY 
      ,[SOURCE_IDENTIFIER] = Source.SOURCE_IDENTIFIER 
      ,[CITY_CD] = Source.CITY_CD 
      ,[VALIDATION_EXPIRE_DT_TM] = Source.VALIDATION_EXPIRE_DT_TM 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[INST_ID] = Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM cerner.Address Dest
	INNER JOIN stage.Address Source ON Source.ADDRESS_ID = Dest.ADDRESS_ID
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ADDRESS]
           ([ADDRESS_ID]
           ,[PARENT_ENTITY_NAME]
           ,[PARENT_ENTITY_ID]
           ,[ADDRESS_TYPE_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ADDRESS_FORMAT_CD]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[CONTACT_NAME]
           ,[RESIDENCE_TYPE_CD]
           ,[COMMENT_TXT]
           ,[STREET_ADDR]
           ,[STREET_ADDR2]
           ,[STREET_ADDR3]
           ,[STREET_ADDR4]
           ,[CITY]
           ,[STATE]
           ,[STATE_CD]
           ,[ZIPCODE]
           ,[ZIP_CODE_GROUP_CD]
           ,[POSTAL_BARCODE_INFO]
           ,[COUNTY]
           ,[COUNTY_CD]
           ,[COUNTRY]
           ,[COUNTRY_CD]
           ,[RESIDENCE_CD]
           ,[MAIL_STOP]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[ADDRESS_TYPE_SEQ]
           ,[BEG_EFFECTIVE_MM_DD]
           ,[END_EFFECTIVE_MM_DD]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[OPERATION_HOURS]
           ,[LONG_TEXT_ID]
           ,[ADDRESS_INFO_STATUS_CD]
           ,[PRIMARY_CARE_CD]
           ,[DISTRICT_HEALTH_CD]
           ,[ZIPCODE_KEY]
           ,[POSTAL_IDENTIFIER]
           ,[POSTAL_IDENTIFIER_KEY]
           ,[SOURCE_IDENTIFIER]
           ,[CITY_CD]
           ,[VALIDATION_EXPIRE_DT_TM]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ADDRESS_ID]
           ,[PARENT_ENTITY_NAME]
           ,[PARENT_ENTITY_ID]
           ,[ADDRESS_TYPE_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ADDRESS_FORMAT_CD]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[CONTACT_NAME]
           ,[RESIDENCE_TYPE_CD]
           ,[COMMENT_TXT]
           ,[STREET_ADDR]
           ,[STREET_ADDR2]
           ,[STREET_ADDR3]
           ,[STREET_ADDR4]
           ,[CITY]
           ,[STATE]
           ,[STATE_CD]
           ,[ZIPCODE]
           ,[ZIP_CODE_GROUP_CD]
           ,[POSTAL_BARCODE_INFO]
           ,[COUNTY]
           ,[COUNTY_CD]
           ,[COUNTRY]
           ,[COUNTRY_CD]
           ,[RESIDENCE_CD]
           ,[MAIL_STOP]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[ADDRESS_TYPE_SEQ]
           ,[BEG_EFFECTIVE_MM_DD]
           ,[END_EFFECTIVE_MM_DD]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[OPERATION_HOURS]
           ,[LONG_TEXT_ID]
           ,[ADDRESS_INFO_STATUS_CD]
           ,[PRIMARY_CARE_CD]
           ,[DISTRICT_HEALTH_CD]
           ,[ZIPCODE_KEY]
           ,[POSTAL_IDENTIFIER]
           ,[POSTAL_IDENTIFIER_KEY]
           ,[SOURCE_IDENTIFIER]
           ,[CITY_CD]
           ,[VALIDATION_EXPIRE_DT_TM]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM stage.Address Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM cerner.Address Dest with (nolock)
		                  where Dest.ADDRESS_ID = Source.ADDRESS_ID );
		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ADDRESS',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END