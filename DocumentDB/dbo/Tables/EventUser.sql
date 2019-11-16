CREATE TABLE [dbo].[EventUser] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [EventId]  INT            NOT NULL,
    [UserName] NVARCHAR (256) NOT NULL,
    CONSTRAINT [PK_EventUser] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EventUser_Event] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([Id])
);

