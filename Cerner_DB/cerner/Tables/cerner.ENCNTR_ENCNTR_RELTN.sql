CREATE TABLE [cerner].[ENCNTR_ENCNTR_RELTN]
(
	[ENCNTR_ENCNTR_RELTN_ID] FLOAT (53)   NOT NULL,
    [ENCNTR_ID]              FLOAT (53)   NULL,
    [RELATED_ENCNTR_ID]      FLOAT (53)   NULL,
    [ENCNTR_RELTN_TYPE_CD]   FLOAT (53)   NULL,
    [UPDT_APPLCTX]           FLOAT (53)   NULL,
    [UPDT_CNT]               FLOAT (53)   NULL,
    [UPDT_DT_TM]             DATETIME     NULL,
    [UPDT_ID]                FLOAT (53)   NULL,
    [UPDT_TASK]              FLOAT (53)   NULL,
    [LAST_UTC_TS]            VARCHAR (75) NULL,
    [RowCreated]             DATETIME2(3) NOT NULL,
    [RowModified]            DATETIME2(3) NULL,
    [RowDeleted]             DATETIME2(0) NULL,
    [RowAltered]             DATETIME2(0) NOT NULL, 
    CONSTRAINT [PK_ENCNTR_ENCNTR_RELTN] PRIMARY KEY ([ENCNTR_ENCNTR_RELTN_ID])
)
