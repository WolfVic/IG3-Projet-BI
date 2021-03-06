USE [ProjetETLBI]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 09-12-21 19:17:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[Id] [numeric](18, 0) NOT NULL,
	[NameFr] [nchar](40) NOT NULL,
	[NameEn] [nchar](40) NOT NULL,
	[QuantityPerUnit] [nchar](20) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[CatId] [numeric](18, 0) NOT NULL,
	[NameCatFr] [nchar](15) NOT NULL,
	[NameCatEn] [nchar](15) NOT NULL,
 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimProduct] ADD  CONSTRAINT [DF_DimProduct_NameFr]  DEFAULT (N'Inconnu') FOR [NameFr]
GO

ALTER TABLE [dbo].[DimProduct] ADD  CONSTRAINT [DF_DimProduct_NameCatFr]  DEFAULT (N'Inconnu') FOR [NameCatFr]
GO