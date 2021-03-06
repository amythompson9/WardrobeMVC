USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 11/6/2017 3:51:27 PM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feetwear]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feetwear](
	[FootwearID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Feetwear] PRIMARY KEY CLUSTERED 
(
	[FootwearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasions]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasions](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[OccasionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occasions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/6/2017 3:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Plaid Scarf', N'~/Content/WardrobeImages/PlaidScarf1.jpg', N'Cotton Thrift Store Scarf', 12, 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'Gray Knit Hat', N'~/Content/WardrobeImages/beanie.png', N'Hat', 9, 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Brimmed Hat', N'~/Content/WardrobeImages/brimmedhat.jpg', N'Hat', 7, 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Choker Necklace', N'~/Content/WardrobeImages/choker.jpg', N'Necklace', 7, 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (5, N'Glasses', N'~/Content/WardrobeImages/glasses.jpg', N'Glasses', 7, 5, 1)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Ripped Denim Shorts', N'~/Content/WardrobeImages/denimshorts.jpg', N'Shorts', 5, 2, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'Gray Joggers', N'~/Content/WardrobeImages/joggers.jpg', N'Lounge Wear', 9, 5, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Black Leggings', N'~/Content/WardrobeImages/leggings.jpg', N'Leggings', 7, 5, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Skinny Black Jean', N'~/Content/WardrobeImages/skinnyjeanblack.jpg', N'Jeans', 7, 5, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (5, N'Skinny Blue Jeans', N'~/Content/WardrobeImages/skinnyjeanblue.jpg', N'Jeans', 5, 5, 1)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (1, N'Red')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (2, N'Orange')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (3, N'Yellow')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (4, N'Green')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (5, N'Blue')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (6, N'Violet')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (7, N'Black')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (8, N'White')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (9, N'Gray')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (10, N'Multi')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (11, N'Brown')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (12, N'Plaid')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (13, N'Stripes')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (14, N'Polka Dot')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Feetwear] ON 

INSERT [dbo].[Feetwear] ([FootwearID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Doc Marten''s Combat Boots', N'~/Content/WardrobeImages/docmarten.jpg', N'Boots', 7, 5, 1)
INSERT [dbo].[Feetwear] ([FootwearID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'New Balance Sneakers', N'~/Content/WardrobeImages/newbalance.jpg', N'Athletic Shoe', 10, 5, 1)
INSERT [dbo].[Feetwear] ([FootwearID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Patterned Boot', N'~/Content/WardrobeImages/patternboot.jpg', N'Boots', 10, 5, 1)
INSERT [dbo].[Feetwear] ([FootwearID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Tom''s Slip On Shoe', N'~/Content/WardrobeImages/toms.jpg', N'Athletic Shoe', 7, 5, 1)
SET IDENTITY_INSERT [dbo].[Feetwear] OFF
SET IDENTITY_INSERT [dbo].[Occasions] ON 

INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (1, N'Everyday')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (2, N'Wedding')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (3, N'Casual')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (4, N'Formal')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (5, N'Office')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (6, N'Brunch')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (7, N'Business Casual')
SET IDENTITY_INSERT [dbo].[Occasions] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (1, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (2, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (3, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (4, N'Winter')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (5, N'Any')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Army Jacket', N'~/Content/WardrobeImages/armyjacket.jpg', N'Jacket', 4, 4, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Black Tee Shirt', N'~/Content/WardrobeImages/blackvee.jpg', N'Shirt', 7, 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (5, N'Chambray Button Down', N'~/Content/WardrobeImages/chambray.jpg', N'Dress Shirt', 5, 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (6, N'Gray Tee Shirt', N'~/Content/WardrobeImages/graytee.jpg', N'Shirt', 9, 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (7, N'Zip Front Hooded Sweatshirt', N'~/Content/WardrobeImages/hoodie.jpg', N'Sweatshirt', 5, 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (8, N'Millennial Pink Cardigan', N'~/Content/WardrobeImages/pinkcardigan.jpg', N'Jacket', 10, 4, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (9, N'Plaid Flannel Shirt', N'~/Content/WardrobeImages/plaidshirt.jpg', N'Shirt', 12, 3, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (10, N'Black and White Striped Shirt', N'~/Content/WardrobeImages/stripedshirt.jpg', N'Shirt', 13, 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (11, N'Black and White Tribal Knit Sweater', N'~/Content/WardrobeImages/sweatertribal.jpg', N'Sweater', 10, 4, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (12, N'White Tee Shirt', N'~/Content/WardrobeImages/whitevee.jpg', N'Shirt', 8, 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [ColorID], [SeasonID], [OccasionID]) VALUES (13, N'Oversized Cardigan', N'~/Content/WardrobeImages/yellowcardigan.jpg', N'Sweater', 3, 4, 1)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Colors]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasions]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Colors]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Feetwear]  WITH CHECK ADD  CONSTRAINT [FK_Feetwear_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Feetwear] CHECK CONSTRAINT [FK_Feetwear_Colors]
GO
ALTER TABLE [dbo].[Feetwear]  WITH CHECK ADD  CONSTRAINT [FK_Feetwear_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Feetwear] CHECK CONSTRAINT [FK_Feetwear_Occasions]
GO
ALTER TABLE [dbo].[Feetwear]  WITH CHECK ADD  CONSTRAINT [FK_Feetwear_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Feetwear] CHECK CONSTRAINT [FK_Feetwear_Seasons]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Colors]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasions]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Seasons]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Colors]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
