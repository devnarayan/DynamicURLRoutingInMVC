CREATE TABLE [dbo].[Document] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Title]         NVARCHAR (256) NOT NULL,
    [Description]   NVARCHAR (MAX) NOT NULL,
    [BusinessLogic] NVARCHAR (MAX) NOT NULL,
    [TitleUrl]      NVARCHAR (256) NOT NULL,
    [NodeId]        NVARCHAR (20)  NOT NULL,
    [ParentNodeId]  NVARCHAR (20)  NULL,
    [AppId]         INT            NULL,
    [AppVersion]    VARCHAR (10)   NOT NULL,
    [DeveloperName] NVARCHAR (25)  NOT NULL,
    [QAName]        NVARCHAR (25)  NULL,
    [SprintName]    NVARCHAR (50)  NULL,
    [StoryId]       INT            NULL,
    [ProjectName]   NVARCHAR (50)  NULL,
    [UpdatedOn]     DATETIME       NOT NULL,
    [UpdatedBy]     INT            NOT NULL,
    [ContentTypeId] INT            NOT NULL,
    [Sequence]      INT            NOT NULL,
    CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Document_ContentType] FOREIGN KEY ([ContentTypeId]) REFERENCES [dbo].[ContentType] ([Id]),
    CONSTRAINT [FK_Document_User] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User] ([Id])
);

