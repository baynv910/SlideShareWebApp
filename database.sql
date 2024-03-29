USE [SlideShare]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [int] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[file_name] [nvarchar](150) NULL,
	[Thumbnail] [nvarchar](150) NULL,
	[Downloads] [int] NULL,
	[summary] [nvarchar](255) NULL,
 CONSTRAINT [PK_documents] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DownloadInfo]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DownloadInfo](
	[DownloadID] [int] NOT NULL,
	[Users] [nvarchar](50) NULL,
	[DownloadTime] [nvarchar](150) NULL,
	[Documents] [int] NULL,
 CONSTRAINT [PK_downloadInfo] PRIMARY KEY CLUSTERED 
(
	[DownloadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadInfo]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadInfo](
	[UploadID] [int] IDENTITY(1,1) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[UploadTime] [nvarchar](150) NULL,
	[Documents] [int] NOT NULL,
	[Active] [int] NULL,
 CONSTRAINT [PK_uploadInfo] PRIMARY KEY CLUSTERED 
(
	[UploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](150) NOT NULL,
	[Picture] [nvarchar](150) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Password] [nvarchar](150) NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Link]) VALUES (1, N'Lập trình', N'/programming')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Link]) VALUES (2, N'Thiết kế - Đồ họa', N'/graphic-design')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Link]) VALUES (3, N'Tiếng Anh', N'/english')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Link]) VALUES (4, N'Phần mềm', N'/software')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Documents] ON 

INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (17, 1, N'Sách Lập trình 01', N'sach-lap-trinh-01', N'https://baynv.github.io/freedoc.net/img/lap-trinh-01.png', 123, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (19, 1, N'Sách Lập trình 02', N'sach-lap-trinh-02', N'https://baynv.github.io/freedoc.net/img/lap-trinh-02.png', 15, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (20, 2, N'Sách Thiết Kế 01', N'sach-thiet-ke-01', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 23, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (21, 2, N'Sách Thiết Kế 02', N'sach-thiet-ke-02', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 16, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (22, 3, N'Tiếng Anh 01', N'tieng-anh-01', N'https://baynv.github.io/freedoc.net/img/tieng-anh-01.png', 20, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (23, 3, N'Tiếng Anh 02', N'tieng-anh-02', N'https://baynv.github.io/freedoc.net/img/tieng-anh-02.png', 52, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (24, 4, N'Phần mềm 01', N'phan-mem-01', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 80, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (25, 4, N'Phần mềm 02', N'phan-mem-02', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 62, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (26, 1, N'Sách Lập trình 03', N'sach-lap-trinh-03', N'https://baynv.github.io/freedoc.net/img/lap-trinh-03.png', 21, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (27, 1, N'Sách Lập trình 04', N'sach-lap-trinh-04', N'https://baynv.github.io/freedoc.net/img/lap-trinh-04.png', 22, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (28, 2, N'Sách Thiết Kế 03', N'sach-thiet-ke-03', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 414, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (29, 2, N'Sách Thiết Kế 04', N'sach-thiet-ke-04', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 14, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (30, 3, N'Tiếng Anh 03', N'tieng-anh-03', N'https://baynv.github.io/freedoc.net/img/tieng-anh-03.png', 41, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (31, 3, N'Tiếng Anh 04', N'tieng-anh-04', N'https://baynv.github.io/freedoc.net/img/tieng-anh-04.png', 417, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (32, 4, N'Phần mềm 03', N'phan-mem-03', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 747, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
INSERT [dbo].[Documents] ([DocumentID], [Category], [Title], [file_name], [Thumbnail], [Downloads], [summary]) VALUES (33, 4, N'Phần mềm 04', N'phan-mem-04', N'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg', 17, N'lorem ipsum dolor sit amet consectetur adipiscing elit. aliquam tincidunt elementum sem non luctus')
SET IDENTITY_INSERT [dbo].[Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[UploadInfo] ON 

INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (7, N'baynv910', N'2020-10-05', 17, 0)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (8, N'minhtai', N'2020-10-06', 19, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (9, N'baynv910', N'2020-10-07', 20, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (10, N'minhtai', N'2020-10-08', 21, 0)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (11, N'baynv910', N'2020-10-09', 22, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (12, N'minhtai', N'2020-10-10', 23, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (13, N'baynv910', N'2020-10-11', 24, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (14, N'minhtai', N'2020-10-12', 25, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (15, N'baynv910', N'2020-10-13', 26, 0)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (16, N'minhtai', N'2020-10-14', 27, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (17, N'baynv910', N'2020-10-15', 28, 0)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (18, N'minhtai', N'2020-10-16', 29, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (19, N'baynv910', N'2020-10-17', 30, 0)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (20, N'minhtai', N'2020-10-18', 31, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (21, N'baynv910', N'2020-10-19', 32, 1)
INSERT [dbo].[UploadInfo] ([UploadID], [Author], [UploadTime], [Documents], [Active]) VALUES (22, N'minhtai', N'2020-10-20', 33, 1)
SET IDENTITY_INSERT [dbo].[UploadInfo] OFF
GO
INSERT [dbo].[Users] ([UserID], [Fullname], [Picture], [Email], [PhoneNumber], [Password], [Role]) VALUES (N'baynv910', N'Nguyễn Văn Bảy', NULL, N'1751012088bay@ou.edu.vn', N'0979541934', N'123456789', 1)
INSERT [dbo].[Users] ([UserID], [Fullname], [Picture], [Email], [PhoneNumber], [Password], [Role]) VALUES (N'customer01', N'Khách hàng 01', NULL, N'customer01@freedoc.vn', N'05202000002', N'123456789', 0)
INSERT [dbo].[Users] ([UserID], [Fullname], [Picture], [Email], [PhoneNumber], [Password], [Role]) VALUES (N'minhtai', N'Phan Văn Minh Tài', NULL, NULL, NULL, N'123', 1)
GO
/****** Object:  StoredProcedure [dbo].[GetDocumentById]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDocumentById]
	@documentId INT
AS
BEGIN
	SELECT d.*, ui.Author, ui.UploadTime, ui.Active
	FROM Documents d, UploadInfo ui
	WHERE d.DocumentID = ui.Documents
	AND d.DocumentID = @documentId
END
GO
/****** Object:  StoredProcedure [dbo].[GetDocumentsByCategoryId]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDocumentsByCategoryId]
	@cateId INT
AS
BEGIN
	SELECT d.*, ui.Author, ui.UploadTime, ui.Active
	FROM Documents d, UploadInfo ui
	WHERE d.DocumentID = ui.Documents
	AND d.Category = @cateId
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTopDocumentsByCategoryId]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTopDocumentsByCategoryId]
	@categoryId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (3) d.*, ui.Author, ui.UploadTime
	FROM Documents d, UploadInfo ui
	WHERE d.DocumentID = ui.Documents
	AND d.Category = @categoryId
	ORDER BY ui.UploadTime DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTopDownloads]    Script Date: 6/22/2020 11:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTopDownloads]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (5) d.*, ui.Author, ui.UploadTime
	FROM Documents d, UploadInfo ui
	WHERE d.DocumentID = ui.Documents
	ORDER BY d.Downloads DESC
END
GO
