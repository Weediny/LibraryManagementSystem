﻿CREATE TABLE [dbo].[Position] (
    [id_position]   INT NOT NULL IDENTITY,
    [position_enum] INT NOT NULL,
    CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED ([id_position] ASC)
);

