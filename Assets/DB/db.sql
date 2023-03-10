USE [EcommerceVer2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Phone] [varchar](13) NULL,
	[CreateDate] [datetime] NULL,
	[LastLogin] [datetime] NULL,
	[RoleId] [int] NULL,
	[IsActived] [bit] NOT NULL,
	[Randomkey] [nchar](10) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributePrices]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributePrices](
	[AttributePriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[IsActived] [bit] NULL,
 CONSTRAINT [PK_AttributePrices] PRIMARY KEY CLUSTERED 
(
	[AttributePriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](100) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NOT NULL,
	[Descriptions] [nvarchar](250) NULL,
	[ParentID] [int] NOT NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[IsPublished] [bit] NOT NULL,
	[ThumbImg] [nvarchar](250) NULL,
	[Title] [nvarchar](200) NULL,
	[Alias] [nvarchar](250) NULL,
	[Cover] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustommerID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[BirthDay] [datetime] NULL,
	[Avatar] [nvarchar](250) NULL,
	[Address] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Phone] [varchar](13) NULL,
	[District] [nvarchar](max) NULL,
	[Ward] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[LastLogin] [datetime] NULL,
	[IsActived] [bit] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[Randomkey] [nvarchar](10) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustommerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[TransactionStatusID] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsPaid] [bit] NULL,
	[Note] [nvarchar](max) NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[District] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[Ward] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[CreateDate] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Descriptions] [nvarchar](255) NULL,
	[CateID] [int] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Discount] [int] NULL,
	[ThumbImg] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[IsBestsellers] [bit] NOT NULL,
	[Homeflag] [bit] NOT NULL,
	[IsActived] [bit] NOT NULL,
	[Tag] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[UnitInStock] [int] NULL,
	[BrandID] [int] NULL,
	[SalesPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[ShipperName] [nvarchar](200) NULL,
	[Phone] [varchar](13) NULL,
	[Company] [nvarchar](255) NULL,
	[Shipdate] [datetime] NULL,
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 1/2/2023 2:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactionStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](50) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactionStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([UserID], [Username], [Password], [Email], [FullName], [Phone], [CreateDate], [LastLogin], [RoleId], [IsActived], [Randomkey]) VALUES (1, N'Admin', N'4bf41f4c0bfebbdda7750cb50fb10884', N'tanhiep26@gmail.com', N'Nguyen Tan Hiep', N'0367337123', NULL, NULL, 3, 1, N'4@163     ')
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Email], [FullName], [Phone], [CreateDate], [LastLogin], [RoleId], [IsActived], [Randomkey]) VALUES (2, N'Staff', N'a1dbfc5e025cfab8d57d8039b76f09b4', N'tanhiep26@gmail.com', N'Staff', N'0367337123', NULL, NULL, 2, 1, N'*rcj9     ')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (1, N'Apple', N'apple.png')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (2, N'Oppo', N'oppo.jpg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (3, N'Nokia', N'nokia.jpg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (4, N'Dell', N'dell.jpg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (5, N'Xiaomi', N'xiaomi.jpg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (6, N'HP', N'hp.jpg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (7, N'Asus', N'asus.jpeg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (8, N'MSI', N'msi.png')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (9, N'Samsung', N'samsung.jpg')
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Logo]) VALUES (10, N'Logitech', N'logitech.png')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished], [ThumbImg], [Title], [Alias], [Cover]) VALUES (1, N'Laptop', N'<p>Laptop</p>', 0, NULL, NULL, 1, N'laptop.png', N'Laptop', N'laptop', NULL)
INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished], [ThumbImg], [Title], [Alias], [Cover]) VALUES (2, N'Smartphone', N'<p>Smartphone<br></p>', 0, NULL, NULL, 1, N'smartphone.jpg', N'Smartphone', N'smartphone', NULL)
INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished], [ThumbImg], [Title], [Alias], [Cover]) VALUES (3, N'Phukien', N'<p>Ph??? ki???n</p>', 0, NULL, NULL, 1, N'phkin.jpg', N'Ph??? ki???n', N'phukien', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustommerID], [Password], [FullName], [BirthDay], [Avatar], [Address], [Mail], [Phone], [District], [Ward], [CreateDate], [LastLogin], [IsActived], [Username], [Province], [Randomkey]) VALUES (3, N'4bf41f4c0bfebbdda7750cb50fb10884', N'Nguyen Van A', NULL, N'avatar.png', N'??dfasdfasdf', N'abctes1t@gmail.com', N'0123456789', NULL, NULL, NULL, CAST(N'2022-12-31T15:46:16.160' AS DateTime), 1, N'member2', N'T???nh th??nh', N'lngpq')
INSERT [dbo].[Customers] ([CustommerID], [Password], [FullName], [BirthDay], [Avatar], [Address], [Mail], [Phone], [District], [Ward], [CreateDate], [LastLogin], [IsActived], [Username], [Province], [Randomkey]) VALUES (4, N'4bf41f4c0bfebbdda7750cb50fb10884', N'Nguy???n T???n Hi???p', CAST(N'2022-12-14T14:21:00.000' AS DateTime), N'avatar.png', N'123', N'123@gmail.com', N'0337124566', NULL, NULL, CAST(N'2022-12-29T14:22:05.167' AS DateTime), CAST(N'2022-12-29T14:22:05.167' AS DateTime), 1, N'member', N'T???nh th??nh', N'!h{9h')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderDate], [TransactionStatusID], [IsDeleted], [IsPaid], [Note], [TotalMoney], [District], [Province], [Ward], [Address]) VALUES (1, 3, CAST(N'2022-12-29T14:28:57.850' AS DateTime), 1, 0, 0, NULL, CAST(1980000.00 AS Decimal(18, 2)), NULL, N'T???nh th??nh', NULL, N'??dfasdfasdf')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [CreateDate], [Price]) VALUES (1, 1, 15, NULL, 1, NULL, CAST(1980000.00 AS Decimal(18, 2)), CAST(N'2022-12-29T14:28:57.887' AS DateTime), CAST(1980000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (1, N'Iphone13 Pro Max', NULL, N'<p>Iphone 13 Pro max m??u xanh</p>', 2, CAST(27000000.00 AS Decimal(18, 2)), 1, N'iphone13promax.jpg', NULL, CAST(N'2021-11-27T13:58:00.000' AS DateTime), CAST(N'2021-11-27T14:00:01.213' AS DateTime), 1, 1, 1, N'IP13', N'Smartphone', N'iphone13promax', 50, 1, CAST(26730000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (2, N'Nokia51 4GB', NULL, N'<p>Nokia 51 4GB</p>', 2, CAST(7000000.00 AS Decimal(18, 2)), 0, N'nokia514gb.jpg', NULL, CAST(N'2021-11-27T13:59:50.000' AS DateTime), CAST(N'2021-11-27T15:31:50.330' AS DateTime), 1, 1, 1, N'Nokia', N'Smartphone', N'nokia514gb', 50, 3, CAST(7000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (3, N'Oppo Reno6 5G', NULL, N'<p>OppoReno6_5G<br></p>', 2, CAST(7500000.00 AS Decimal(18, 2)), 0, N'opporeno65g.jpg', NULL, CAST(N'2021-11-27T14:02:01.000' AS DateTime), CAST(N'2021-11-27T14:02:27.157' AS DateTime), 1, 1, 1, N'Oppo reno6', N'Smartphone', N'opporeno65g', 50, 2, CAST(7500000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (4, N'Samsung Galaxy Z Flod3 5G', NULL, N'<p>Samsung GalaxyZ Flod3 5G<br></p>', 2, CAST(17000000.00 AS Decimal(18, 2)), 0, N'samsunggalaxyzflod35g.jpg', NULL, CAST(N'2021-11-27T14:04:25.000' AS DateTime), CAST(N'2021-11-27T15:39:08.737' AS DateTime), 1, 1, 1, N'samsung galaxy z Flod3', N'Smartphone', N'samsunggalaxyzflod35g', 50, 9, CAST(17000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (5, N'Xiaomi Redmi Note10', NULL, N'<p>xiaomi redmi note-10<br></p>', 2, CAST(9000000.00 AS Decimal(18, 2)), 1, N'xiaomiredminote10.png', NULL, CAST(N'2021-11-27T14:05:58.800' AS DateTime), CAST(N'2021-11-27T14:05:58.800' AS DateTime), 1, 1, 1, N'Xiaomi', N'Smartphone', N'xiaomiredminote10', 50, 5, CAST(8910000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (6, N'Asus E420S', NULL, N'<p>Asus E420S</p>', 1, CAST(25000000.00 AS Decimal(18, 2)), 1, N'asuse420s.jpg', NULL, CAST(N'2021-11-27T14:07:26.303' AS DateTime), CAST(N'2021-11-27T14:07:26.303' AS DateTime), 1, 1, 1, N'Asus', N'Laptop', N'asuse420s', 50, 7, CAST(24750000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (7, N'Dell Gaming G5', NULL, N'<p>Dell Gaming G5</p>', 1, CAST(21000000.00 AS Decimal(18, 2)), 0, N'dellgamingg5.jpg', NULL, CAST(N'2021-11-27T14:08:38.000' AS DateTime), CAST(N'2021-11-27T15:32:56.507' AS DateTime), 1, 1, 1, N'Dell Gaming', N'Laptop', N'dellgamingg5', 50, 4, CAST(21000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (8, N'HP Pavilion Gaming 15', NULL, N'<p>HP Pavilion Gaming 15<br></p>', 1, CAST(21000000.00 AS Decimal(18, 2)), 2, N'hppaviliongaming15.jpg', NULL, CAST(N'2021-11-27T14:09:56.000' AS DateTime), CAST(N'2021-11-27T15:33:30.173' AS DateTime), 1, 1, 1, N'HP Gaming', N'Laptop', N'hppaviliongaming15', 50, 6, CAST(20580000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (9, N'Macbook M1 2019', NULL, N'<p>Macbook M1 2019 256Gb</p>', 1, CAST(51000000.00 AS Decimal(18, 2)), 1, N'macbookm12019.png', NULL, CAST(N'2021-11-27T14:11:12.210' AS DateTime), CAST(N'2021-11-27T14:11:12.210' AS DateTime), 1, 1, 1, N'Macbook M1', N'Laptop', N'macbookm12019', 50, 1, CAST(50490000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (10, N'MSI Gaming GF65', NULL, N'<p>MSI Gaming GF65<br></p>', 1, CAST(21000000.00 AS Decimal(18, 2)), 1, N'msigaminggf65.jpg', NULL, CAST(N'2021-11-27T14:11:57.000' AS DateTime), CAST(N'2021-11-27T15:33:43.427' AS DateTime), 1, 1, 1, N'MSI Gaming', N'Laptop', N'msigaminggf65', 50, 8, CAST(20790000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (11, N'Airpod Pro', NULL, N'<p>Apple Airpod Pro<br></p>', 3, CAST(5000000.00 AS Decimal(18, 2)), 1, N'airpodpro.jpg', NULL, CAST(N'2021-11-27T14:13:34.000' AS DateTime), CAST(N'2021-11-27T14:13:51.900' AS DateTime), 1, 1, 1, N'AirPod Pro', N'PhuKien', N'airpodpro', 50, 1, CAST(4950000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (12, N'Magic Keyboard', NULL, N'<p>Apple Magic Keyboard<br></p>', 3, CAST(2700000.00 AS Decimal(18, 2)), 0, N'magickeyboard.jpg', NULL, CAST(N'2021-11-27T14:16:01.473' AS DateTime), CAST(N'2021-11-27T14:16:01.473' AS DateTime), 1, 1, 1, N'Magic keyboard', N'PhuKien', N'magickeyboard', 50, 1, CAST(2700000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (13, N'B??n Ph??m C?? MSI', NULL, N'<p>B??n ph??m c?? MSI</p>', 3, CAST(1100000.00 AS Decimal(18, 2)), 0, N'bnphmcmsi.png', NULL, CAST(N'2021-11-27T14:17:25.833' AS DateTime), CAST(N'2021-11-27T14:17:25.833' AS DateTime), 1, 1, 1, N'B??n ph??m c?? MSI', N'PhuKien', N'bnphmcmsi', 50, 8, CAST(1100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (14, N'B??n Ph??m Logitech', NULL, N'<p>B??n ph??m logitech</p>', 3, CAST(7000000.00 AS Decimal(18, 2)), 0, N'bnphmlogitech.png', NULL, CAST(N'2021-11-27T14:18:31.697' AS DateTime), CAST(N'2021-11-27T14:18:31.697' AS DateTime), 1, 1, 1, N'b??n ph??m logitech', N'PhuKien', N'bnphmlogitech', 50, 10, CAST(7000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (15, N'Chu???t Apple Magic ', NULL, N'<p>Chu???t Apple Magic&nbsp;<br></p>', 3, CAST(2000000.00 AS Decimal(18, 2)), 1, N'chutapplemagic.jpg', NULL, CAST(N'2021-11-27T14:20:08.720' AS DateTime), CAST(N'2021-11-27T14:20:08.720' AS DateTime), 1, 1, 1, N'Chu???t apple ', N'PhuKien', N'chutapplemagic', 50, 1, CAST(1980000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (16, N'Chu???t Gaming MSI', NULL, N'<p>Chu???t Gaming MSI</p>', 3, CAST(450000.00 AS Decimal(18, 2)), 1, N'chutgamingmsi.jpg', NULL, CAST(N'2021-11-27T14:21:06.210' AS DateTime), CAST(N'2021-11-27T14:21:06.210' AS DateTime), 1, 1, 1, N'Chu???t gaming MSI', N'PhuKien', N'chutgamingmsi', 40, 8, CAST(445500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (17, N'Chu???t Logitech', NULL, N'<p>chu???t kh??ng d??y logitech</p>', 3, CAST(210000.00 AS Decimal(18, 2)), 0, N'chutlogitech.jpg', NULL, CAST(N'2021-11-27T14:22:21.000' AS DateTime), CAST(N'2021-11-27T15:56:44.673' AS DateTime), 1, 1, 1, N'Chu???t logitech', N'PhuKien', N'chutlogitech', 40, 10, CAST(210000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (18, N'L??t Chu???t MSI', NULL, N'<p>L??t chu???t MSI</p>', 3, CAST(100000.00 AS Decimal(18, 2)), 0, N'ltchutmsi.png', NULL, CAST(N'2021-11-27T14:23:13.000' AS DateTime), CAST(N'2021-11-27T15:56:29.030' AS DateTime), 1, 1, 1, N'L??t chu???t MSI', N'PhuKien', N'ltchutmsi', 40, 8, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [BrandID], [SalesPrice]) VALUES (19, N'Tai Nghe Oppo', NULL, N'<p>tai nghe oppo</p>', 3, CAST(270000.00 AS Decimal(18, 2)), 1, N'taingheoppo.jpg', NULL, CAST(N'2021-11-27T14:24:05.000' AS DateTime), CAST(N'2021-11-27T15:56:17.330' AS DateTime), 1, 1, 1, N'tai nghe oppo', N'PhuKien', N'taingheoppo', 50, 2, CAST(267300.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName], [Descriptions]) VALUES (2, N'Staff', N'Staff')
INSERT [dbo].[Roles] ([RoleId], [RoleName], [Descriptions]) VALUES (3, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactStatus] ON 

INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (1, N'????n h??ng ???? ?????t', N'????n h??ng ???? ?????t')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (2, N'X??c nh???n th??ng tin thanh to??n', N'X??c nh???n th??ng tin thanh to??n')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (3, N'??ang v???n chuy???n', N'??ang v???n chuy???n')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (4, N'????n h??ng ???? nh???n', N'????n h??ng ???? nh???n')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (5, N'????n h??ng ???? giao', N'????n h??ng ???? giao')
SET IDENTITY_INSERT [dbo].[TransactStatus] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsPublished]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Homeflag]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (N'') FOR [Descriptions]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Roles]
GO
ALTER TABLE [dbo].[AttributePrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributePrices_Attribute] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attribute] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributePrices] CHECK CONSTRAINT [FK_AttributePrices_Attribute]
GO
ALTER TABLE [dbo].[AttributePrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributePrices_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[AttributePrices] CHECK CONSTRAINT [FK_AttributePrices_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustommerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_TransactStatus] FOREIGN KEY([TransactionStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactionStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_TransactStatus]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
