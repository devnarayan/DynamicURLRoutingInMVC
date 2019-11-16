CREATE TABLE [dbo].[DocumentHistory] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [DocumentId] INT            NOT NULL,
    [FieldName]  NVARCHAR (15)  NOT NULL,
    [OldValue]   NVARCHAR (MAX) NOT NULL,
    [NewValue]   NVARCHAR (MAX) NOT NULL,
    [UpdatedOn]  DATETIME       NOT NULL,
    [UpdatedBy]  INT            NOT NULL,
    CONSTRAINT [PK_DocumentHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DocumentHistory_Document] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id]),
    CONSTRAINT [FK_DocumentHistory_User] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User] ([Id])
);

