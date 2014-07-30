USE [Recipe]
GO

/****** Object:  Table [dbo].[Ingredient]    Script Date: 7/30/2014 3:53:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ingredient](
	[RecipeId] [int] NULL,
	[Ingredient] [nchar](1000) NULL,
	[IngredientId] [int] NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Recipe] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Recipe] ([RecipeId])
GO

ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Recipe]
GO

