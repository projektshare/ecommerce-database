USE [ShoppingPortal]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminId] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](2000) NULL,
	[Email] [nvarchar](2000) NULL,
	[PasswordHash] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributeDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttributeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](2000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AttributeDetails] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Name] [nvarchar](2000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CategoryDetails] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [uniqueidentifier] NOT NULL,
	[StateId] [uniqueidentifier] NULL,
	[Name] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CityDetails] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CountryDetails] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[CityId] [uniqueidentifier] NULL,
	[StateId] [uniqueidentifier] NULL,
	[CountryId] [uniqueidentifier] NULL,
	[Name] [nvarchar](2000) NULL,
	[Email] [nvarchar](2000) NULL,
	[PhoneNumber] [nvarchar](2000) NULL,
	[PasswordHash] [nvarchar](4000) NULL,
	[ShippingAddress] [nvarchar](4000) NULL,
	[BillingAddres] [nvarchar](4000) NULL,
	[Pincode] [int] NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CustomerDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[OrderNumber] [nvarchar](4000) NULL,
	[Quantity] [int] NULL,
	[Total] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPaymentRel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPaymentRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [uniqueidentifier] NULL,
	[PaymentId] [uniqueidentifier] NULL,
	[ReferenceNo] [nvarchar](4000) NULL,
	[TimeStamp] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_OrderPaymentRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethodDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethodDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethodId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](2000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_PaymentMethodDetails] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributeRel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[AttributeId] [uniqueidentifier] NULL,
	[Name] [nvarchar](2000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProductAttributeRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryRel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProductCategoryRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[SKU] [nvarchar](4000) NULL,
	[Name] [nvarchar](2000) NULL,
	[Description] [nvarchar](4000) NULL,
	[BasePrice] [nvarchar](2000) NULL,
	[StockQuantity] [int] NULL,
	[MinimumQuantity] [int] NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImageRel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImageRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[FileName] [nvarchar](4000) NULL,
	[FileType] [nvarchar](4000) NULL,
	[FileSize] [nvarchar](4000) NULL,
	[DisplayOrder] [int] NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProductImageRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateDetails]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [uniqueidentifier] NOT NULL,
	[CountryId] [uniqueidentifier] NULL,
	[Name] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_StateDetails] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([Id], [AdminId], [Username], [Email], [PasswordHash], [HostIp], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive], [IsDeleted]) VALUES (1, N'eadefd7c-9bc1-495b-92e8-4031d94f3f76', N'admin', N'slokchavhan9@gmail.com', N'tttdoybuFsAnWJYAfwOUqg==', NULL, NULL, NULL, NULL, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryDetails] ON 
GO
INSERT [dbo].[CategoryDetails] ([Id], [CategoryId], [ParentId], [Name], [HostIp], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive], [IsDeleted]) VALUES (2, N'c97b1710-f7a9-45d2-9ee7-2b04ca42f797', N'aff9ed28-0f47-4c1c-ac85-a9eda2e46ac9', N'Accessories', NULL, N'eadefd7c-9bc1-495b-92e8-4031d94f3f76', CAST(N'2019-02-28T04:49:05.473' AS DateTime), NULL, CAST(N'2019-02-28T04:49:05.473' AS DateTime), 1, 0)
GO
INSERT [dbo].[CategoryDetails] ([Id], [CategoryId], [ParentId], [Name], [HostIp], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive], [IsDeleted]) VALUES (1, N'aff9ed28-0f47-4c1c-ac85-a9eda2e46ac9', NULL, N'Women', NULL, N'eadefd7c-9bc1-495b-92e8-4031d94f3f76', CAST(N'2019-02-28T04:33:27.547' AS DateTime), NULL, CAST(N'2019-02-28T04:33:27.550' AS DateTime), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[CategoryDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[CountryDetails] ON 
GO
INSERT [dbo].[CountryDetails] ([Id], [CountryId], [Name], [HostIp], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive], [IsDeleted]) VALUES (1, N'df1a57a8-b3d3-45bf-91ab-f5e406ff63ea', N'India', NULL, N'eadefd7c-9bc1-495b-92e8-4031d94f3f76', CAST(N'2019-02-28T13:49:06.293' AS DateTime), NULL, CAST(N'2019-02-28T13:49:55.917' AS DateTime), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[CountryDetails] OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_del]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE Admin
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_lst]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[AdminId]
      ,[Username]
      ,[Email]
      ,[PasswordHash]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[Admin]
WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_lstpage]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[AdminId]
      ,[Username]
      ,[Email]
      ,[PasswordHash]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [Admin] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum * 1) * @pageSize * 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [Admin] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_sel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[AdminId]
      ,[Username]
      ,[Email]
      ,[PasswordHash]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[Admin]
WHERE [IsDeleted] = 0 AND [AdminId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_ups]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_ups]
	@Id int,
	@AdminId uniqueidentifier,
	@Username nvarchar(2000),
	@Email nvarchar(2000),
	@PasswordHash nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [Admin] (
		Id
		,[AdminId]
		,[Username]
		,[Email]
		,[PasswordHash]
		,[HostIp]
		,[CreatedBy]
		,[CreationDate]
		,[UpdatedBy]
		,[UpdatedDate]
		,[IsActive]
		,[IsDeleted]

	)
	VALUES (

	@Id,

	@AdminId,

	@Username,

	@Email,

	@PasswordHash,

	@HostIp,

	@CreatedBy,

	@CreationDate,

	@UpdatedBy,

	@UpdatedDate,

	@IsActive,

	@IsDeleted
	 )
	 SELECT @AdminId AS InsertedID
END
ELSE BEGIN 
	UPDATE [Admin] SET 

		[AdminId] = @AdminId,

		[Username] = @Username,

		[Email] = @Email,

		[PasswordHash] = @PasswordHash,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [AdminId] = @AdminId
SELECT @AdminId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CategoryDetails_del]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CategoryDetails_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE CategoryDetails
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CategoryDetails_lst]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CategoryDetails_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[CategoryId]
      ,[ParentId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[CategoryDetails]
WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CategoryDetails_lstpage]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CategoryDetails_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	(
		SELECT [Id]
      ,[CategoryId]
      ,[ParentId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [CategoryDetails] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum - 1) * @pageSize + 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [CategoryDetails] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CategoryDetails_sel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CategoryDetails_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[CategoryId]
      ,[ParentId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[CategoryDetails]
WHERE [IsDeleted] = 0 AND [CategoryId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CategoryDetails_ups]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CategoryDetails_ups]
	@Id int,
	@CategoryId uniqueidentifier,
	@ParentId uniqueidentifier,
	@Name nvarchar(2000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [CategoryDetails] (

		[CategoryId]
		,[ParentId]
		,[Name]
		,[HostIp]
		,[CreatedBy]
		,[CreationDate]
		,[UpdatedBy]
		,[UpdatedDate]
		,[IsActive]
		,[IsDeleted]

	)
	VALUES (

	@CategoryId,

	@ParentId,

	@Name,

	@HostIp,

	@CreatedBy,

	@CreationDate,

	@UpdatedBy,

	@UpdatedDate,

	@IsActive,

	@IsDeleted
	 )
	 SELECT @CategoryId AS InsertedID
END
ELSE BEGIN 
	UPDATE [CategoryDetails] SET 

		[CategoryId] = @CategoryId,

		[ParentId] = @ParentId,

		[Name] = @Name,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [CategoryId] = @CategoryId
SELECT @CategoryId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Country_sel]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Country_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[CountryId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[CountryDetails]
WHERE [IsDeleted] = 0 AND [CountryId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CountryDetails_del]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CountryDetails_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE [CountryDetails]
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CountryDetails_lst]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CountryDetails_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[CountryId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[CountryDetails]
WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CountryDetails_lstpage]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CountryDetails_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	(SELECT [Id]
      ,[CountryId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [CountryDetails] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum - 1) * @pageSize + 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM CountryDetails WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CountryDetails_ups]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CountryDetails_ups]
	@Id int,
	@CountryId uniqueidentifier,
	@Name nvarchar(2000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [CountryDetails] (

		[CountryId]
      ,[Name]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]

	)
	VALUES (

	@CountryId,

	@Name,

	@HostIp,

	@CreatedBy,

	@CreationDate,

	@UpdatedBy,

	@UpdatedDate,

	@IsActive,

	@IsDeleted
	 )
	 SELECT @CountryId AS InsertedID
END
ELSE BEGIN 
	UPDATE [CountryDetails] SET 

		[CountryId] = @CountryId,

		[Name] = @Name,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [CountryId] = @CountryId
SELECT @CountryId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ValidateAdmin]    Script Date: 28-02-2019 21:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ValidateAdmin]
	@Email nvarchar(2000),
	@PasswordHash nvarchar(4000)
AS
SET NOCOUNT ON


	SELECT [Id]
      ,[AdminId]
      ,[Username]
      ,[Email]
	FROM [dbo].[Admin]
	WHERE [IsDeleted] = 0 AND 
	([Username] = @Email AND [PasswordHash] = @PasswordHash)



SET NOCOUNT OFF
GO
