USE [Recipe]
GO

/****** Object:  Table [dbo].[Steps]    Script Date: 7/30/2014 3:56:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Steps](
	[StepsId] [int] NOT NULL,
	[Steps] [nchar](1000) NULL,
 CONSTRAINT [PK_Steps] PRIMARY KEY CLUSTERED 
(
	[StepsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Steps]  WITH CHECK ADD  CONSTRAINT [FK_Steps_PrepTime] FOREIGN KEY([StepsId])
REFERENCES [dbo].[PrepTime] ([PrepTimeId])
GO

ALTER TABLE [dbo].[Steps] CHECK CONSTRAINT [FK_Steps_PrepTime]
GO


