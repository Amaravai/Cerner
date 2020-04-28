﻿CREATE TABLE [stage].[PERSON_NAME] (
    [PERSON_NAME_ID]         NUMERIC (38, 4) NULL,
    [PERSON_ID]              NUMERIC (38, 4) NULL,
    [NAME_TYPE_CD]           NUMERIC (38, 4) NULL,
    [UPDT_CNT]               NUMERIC (38, 4) NULL,
    [UPDT_DT_TM]             DATETIME        NULL,
    [UPDT_ID]                NUMERIC (38, 4) NULL,
    [UPDT_TASK]              NUMERIC (38, 4) NULL,
    [UPDT_APPLCTX]           NUMERIC (38, 4) NULL,
    [ACTIVE_IND]             NUMERIC (38, 4) NULL,
    [ACTIVE_STATUS_CD]       NUMERIC (38, 4) NULL,
    [ACTIVE_STATUS_DT_TM]    DATETIME        NULL,
    [ACTIVE_STATUS_PRSNL_ID] NUMERIC (38, 4) NULL,
    [BEG_EFFECTIVE_DT_TM]    DATETIME        NULL,
    [END_EFFECTIVE_DT_TM]    DATETIME        NULL,
    [NAME_ORIGINAL]          VARCHAR (100)   NULL,
    [NAME_FORMAT_CD]         NUMERIC (38, 4) NULL,
    [NAME_FULL]              VARCHAR (100)   NULL,
    [NAME_FIRST]             VARCHAR (100)   NULL,
    [NAME_MIDDLE]            VARCHAR (100)   NULL,
    [NAME_LAST]              VARCHAR (100)   NULL,
    [NAME_DEGREE]            VARCHAR (100)   NULL,
    [NAME_TITLE]             VARCHAR (100)   NULL,
    [NAME_PREFIX]            VARCHAR (100)   NULL,
    [NAME_SUFFIX]            VARCHAR (100)   NULL,
    [NAME_INITIALS]          VARCHAR (100)   NULL,
    [DATA_STATUS_CD]         NUMERIC (38, 4) NULL,
    [DATA_STATUS_DT_TM]      DATETIME        NULL,
    [DATA_STATUS_PRSNL_ID]   NUMERIC (38, 4) NULL,
    [CONTRIBUTOR_SYSTEM_CD]  NUMERIC (38, 4) NULL,
    [NAME_FIRST_KEY]         VARCHAR (100)   NULL,
    [NAME_LAST_KEY]          VARCHAR (100)   NULL,
    [NAME_MIDDLE_KEY]        VARCHAR (100)   NULL,
    [NAME_FIRST_KEY_NLS]     VARCHAR (202)   NULL,
    [NAME_LAST_KEY_NLS]      VARCHAR (202)   NULL,
    [NAME_MIDDLE_KEY_NLS]    VARCHAR (202)   NULL,
    [SOURCE_IDENTIFIER]      VARCHAR (255)   NULL,
    [NAME_TYPE_SEQ]          NUMERIC (38, 4) NULL,
    [NAME_FIRST_KEY_A_NLS]   VARCHAR (400)   NULL,
    [NAME_LAST_KEY_A_NLS]    VARCHAR (400)   NULL,
    [NAME_MIDDLE_KEY_A_NLS]  VARCHAR (400)   NULL,
    [LAST_UTC_TS]            DATETIME        NULL,
    [INST_ID]                NUMERIC (38, 4) NULL
);

