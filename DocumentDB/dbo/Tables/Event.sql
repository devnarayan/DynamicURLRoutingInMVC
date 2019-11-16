CREATE TABLE [dbo].[Event] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [EventTitle]        NVARCHAR (256) NOT NULL,
    [Description]       NVARCHAR (MAX) NULL,
    [StartDate]         DATETIME       NOT NULL,
    [EdnDate]           DATETIME       NOT NULL,
    [CreatedBy]         NVARCHAR (256) NOT NULL,
    [ResponsiblePerson] NVARCHAR (256) NOT NULL,
    [Status]            INT            NOT NULL,
    [Location]          NVARCHAR (50)  NULL,
    [AllDay]            BIT            CONSTRAINT [DF_Event_AllDay] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED ([Id] ASC)
);

