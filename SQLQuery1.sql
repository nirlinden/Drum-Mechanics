CREATE TABLE [dbo].[Users] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]      NVARCHAR (50)  NULL,
    [LastName]       NVARCHAR (50)  NULL,
    [Username]       NVARCHAR (50)  NOT NULL,
    [Email]          NVARCHAR (100) NOT NULL,
    [Password]       NVARCHAR (100) NOT NULL,
    [Phone]          NVARCHAR (20)  NULL,
    [PreferredStyle] NVARCHAR (50)  NULL,
    [ExpLevel]       NVARCHAR (50)  NULL,
    [IsAdmin]        BIT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);