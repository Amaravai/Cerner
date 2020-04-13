 CREATE TABLE [cerner].[Address]
(
          ADDRESS_ID              BIGINT NOT NULL
        , PARENT_ENTITY_NAME      VARCHAR(32) NOT NULL
        , PARENT_ENTITY_ID        BIGINT NOT NULL
        , ADDRESS_TYPE_CD         BIGINT NOT NULL
        , UPDT_CNT                BIGINT NOT NULL
        , UPDT_DT_TM              DATE NOT NULL
        , UPDT_ID                 BIGINT NOT NULL
        , UPDT_TASK               BIGINT NOT NULL
        , UPDT_APPLCTX            BIGINT NOT NULL
        , ACTIVE_IND              BIGINT
        , ACTIVE_STATUS_CD        BIGINT NOT NULL
        , ACTIVE_STATUS_DT_TM     DATE
        , ACTIVE_STATUS_PRSNL_ID  BIGINT NOT NULL
        , ADDRESS_FORMAT_CD       BIGINT NOT NULL
        , BEG_EFFECTIVE_DT_TM     DATE NOT NULL
        , END_EFFECTIVE_DT_TM     DATE NOT NULL
        , CONTACT_NAME            VARCHAR(200)
        , RESIDENCE_TYPE_CD       BIGINT NOT NULL
        , COMMENT_TXT             VARCHAR(200)
        , STREET_ADDR             VARCHAR(100)
        , STREET_ADDR2            VARCHAR(100)
        , STREET_ADDR3            VARCHAR(100)
        , STREET_ADDR4            VARCHAR(100)
        , CITY                    VARCHAR(100)
        , STATE                   VARCHAR(100)
        , STATE_CD                BIGINT NOT NULL
        , ZIPCODE                 VARCHAR(25)
        , ZIP_CODE_GROUP_CD       BIGINT NOT NULL
        , POSTAL_BARCODE_INFO     VARCHAR(100)
        , COUNTY                  VARCHAR(100)
        , COUNTY_CD               BIGINT NOT NULL
        , COUNTRY                 VARCHAR(100)
        , COUNTRY_CD              BIGINT NOT NULL
        , RESIDENCE_CD            BIGINT NOT NULL
        , MAIL_STOP               VARCHAR(100)
        , DATA_STATUS_CD          BIGINT NOT NULL
        , DATA_STATUS_DT_TM       DATE
        , DATA_STATUS_PRSNL_ID    BIGINT NOT NULL
        , ADDRESS_TYPE_SEQ        BIGINT NOT NULL
        , BEG_EFFECTIVE_MM_DD     BIGINT
        , END_EFFECTIVE_MM_DD     BIGINT
        , CONTRIBUTOR_SYSTEM_CD   BIGINT NOT NULL
        , OPERATION_HOURS         VARCHAR(255)
        , LONG_TEXT_ID            BIGINT NOT NULL
        , ADDRESS_INFO_STATUS_CD  BIGINT NOT NULL
        , PRIMARY_CARE_CD         BIGINT NOT NULL
        , DISTRICT_HEALTH_CD      BIGINT NOT NULL
        , ZIPCODE_KEY             VARCHAR(25)
        , POSTAL_IDENTIFIER       VARCHAR(100)
        , POSTAL_IDENTIFIER_KEY   VARCHAR(100)
        , SOURCE_IDENTIFIER       VARCHAR(255)
        , CITY_CD                 BIGINT NOT NULL
        , VALIDATION_EXPIRE_DT_TM DATE
        , LAST_UTC_TS             DATETIME
        , INST_ID                 BIGINT
        , RowCreated DATETIME2(3) NOT NULL
        , RowModified DATETIME2(3) NULL
        , RowDeleted DATETIME2(0) NULL
        , RowAltered DATETIME2(0) NOT NULL, 
    CONSTRAINT [PK_Address] PRIMARY KEY ([ADDRESS_ID])
)
 
