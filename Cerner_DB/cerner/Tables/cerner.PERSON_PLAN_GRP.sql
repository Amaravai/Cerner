CREATE TABLE [cerner].[PERSON_PLAN_GRP] (
    [PERSON_PLAN_GRP_ID]     FLOAT (53)    NOT NULL,
    [PARENT_ID]              FLOAT (53)    NULL,
    [CHILD_ID]               FLOAT (53)    NULL,
    [PERSON_PLAN_GRP_CD]     FLOAT (53)    NULL,
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
    [CONTRIBUTOR_SYSTEM_CD]  FLOAT (53)    NULL,
    [RowCreated]             DATETIME2 (3) NOT NULL,
    [RowModified]            DATETIME2 (3) NULL,
    [RowDeleted]             DATETIME2 (0) NULL,
    [RowAltered]             DATETIME2 (0) NOT NULL, 
    CONSTRAINT [PK_PERSON_PLAN_GRP] PRIMARY KEY ([PERSON_PLAN_GRP_ID])
);

