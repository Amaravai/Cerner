﻿CREATE TABLE [cerner].[ORGANIZATION] (
    [ORGANIZATION_ID]        FLOAT (53)    NOT NULL,
    [UPDT_CNT]               FLOAT (53)    NULL,
    [UPDT_DT_TM]             DATETIME      NULL,
    [UPDT_ID]                FLOAT (53)    NULL,
    [UPDT_TASK]              FLOAT (53)    NULL,
    [UPDT_APPLCTX]           FLOAT (53)    NULL,
    [ACTIVE_IND]             FLOAT (53)    NULL,
    [ACTIVE_STATUS_CD]       FLOAT (53)    NULL,
    [ACTIVE_STATUS_DT_TM]    DATETIME      NULL,
    [ACTIVE_STATUS_PRSNL_ID] FLOAT (53)    NULL,
    [BEG_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [DATA_STATUS_CD]         FLOAT (53)    NULL,
    [DATA_STATUS_DT_TM]      DATETIME      NULL,
    [DATA_STATUS_PRSNL_ID]   FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]  FLOAT (53)    NULL,
    [ORG_NAME]               VARCHAR (100) NULL,
    [ORG_NAME_KEY]           VARCHAR (100) NULL,
    [FEDERAL_TAX_ID_NBR]     VARCHAR (100) NULL,
    [ORG_STATUS_CD]          FLOAT (53)    NULL,
    [FT_ENTITY_NAME]         VARCHAR (32)  NULL,
    [FT_ENTITY_ID]           FLOAT (53)    NULL,
    [ORG_CLASS_CD]           FLOAT (53)    NULL,
    [ORG_NAME_KEY_NLS]       VARCHAR (202) NULL,
    [CONTRIBUTOR_SOURCE_CD]  FLOAT (53)    NULL,
    [LOGICAL_DOMAIN_ID]      FLOAT (53)    NULL,
    [ORG_NAME_KEY_A_NLS]     VARCHAR (400) NULL,
    [LAST_UTC_TS]            VARCHAR (75)  NULL,
    [EXTERNAL_IND]           FLOAT (53)    NULL,
    [INST_ID]                FLOAT (53)    NULL,
    [RowCreated]             DATETIME2 (3) NOT NULL,
    [RowModified]            DATETIME2 (3) NULL,
    [RowDeleted]             DATETIME2 (0) NULL,
    [RowAltered]             DATETIME2 (0) NOT NULL, 
    CONSTRAINT [PK_ORGANIZATION] PRIMARY KEY ([ORGANIZATION_ID])
);

