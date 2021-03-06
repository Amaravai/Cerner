﻿CREATE TABLE [cerner].[PERSON_CODE_VALUE_R] (
    [PERSON_CODE_VALUE_R_ID] FLOAT (53)    NOT NULL,
    [PERSON_ID]              FLOAT (53)    NULL,
    [CODE_SET]               FLOAT (53)    NULL,
    [CODE_VALUE]             FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]  FLOAT (53)    NULL,
    [UPDT_CNT]               FLOAT (53)    NULL,
    [UPDT_DT_TM]             DATETIME      NULL,
    [UPDT_ID]                FLOAT (53)    NULL,
    [UPDT_TASK]              FLOAT (53)    NULL,
    [UPDT_APPLCTX]           FLOAT (53)    NULL,
    [ACTIVE_IND]             FLOAT (53)    NULL,
    [ACTIVE_STATUS_CD]       FLOAT (53)    NULL,
    [ACTIVE_STATUS_PRSNL_ID] FLOAT (53)    NULL,
    [ACTIVE_STATUS_DT_TM]    DATETIME      NULL,
    [BEG_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [LAST_UTC_TS]            VARCHAR (75)  NULL,
    [INST_ID]                FLOAT (53)    NULL,
    [RowCreated]             DATETIME2 (3) NOT NULL,
    [RowModified]            DATETIME2 (3) NULL,
    [RowDeleted]             DATETIME2 (0) NULL,
    [RowAltered]             DATETIME2 (0) NOT NULL, 
    CONSTRAINT [PK_PERSON_CODE_VALUE_R] PRIMARY KEY ([PERSON_CODE_VALUE_R_ID])
);

