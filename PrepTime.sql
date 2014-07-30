USE [Recipe]
GO

/****** Object:  Table [dbo].[PrepTime]    Script Date: 7/30/2014 3:54:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PrepTime](
	[PrepTime] [int] NULL,
	[PrepTimeId] [int] NOT NULL,
 CONSTRAINT [PK_PrepTime] PRIMARY KEY CLUSTERED 
(
	[PrepTimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PrepTime]  WITH CHECK ADD  CONSTRAINT [FK_PrepTime_CookingTime] FOREIGN KEY([PrepTimeId])
REFERENCES [dbo].[CookingTime] ([CookingTimeId])
GO

ALTER TABLE [dbo].[PrepTime] CHECK CONSTRAINT [FK_PrepTime_CookingTime]
GO

