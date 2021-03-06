USE [master]
GO
/****** Object:  Database [dbBook]    Script Date: 7/28/2020 3:49:52 PM ******/
CREATE DATABASE [dbBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbBook] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbBook] SET RECOVERY FULL 
GO
ALTER DATABASE [dbBook] SET  MULTI_USER 
GO
ALTER DATABASE [dbBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbBook] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbBook', N'ON'
GO
ALTER DATABASE [dbBook] SET QUERY_STORE = OFF
GO
USE [dbBook]
GO
/****** Object:  Table [dbo].[tbl_Author]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Author](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Birthday] [datetime] NULL,
	[Address] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Book]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Author] [int] NOT NULL,
	[Creator] [nvarchar](max) NOT NULL,
	[Categories] [int] NULL,
	[Cover] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Author] ON 

INSERT [dbo].[tbl_Author] ([Id], [Name], [Birthday], [Address], [Website]) VALUES (1, N'tran duong thuy tram', CAST(N'2020-07-23T20:54:32.347' AS DateTime), N'60 truong dinh', N'21dsdsad')
INSERT [dbo].[tbl_Author] ([Id], [Name], [Birthday], [Address], [Website]) VALUES (3, N'Dinh bich hanh', CAST(N'2020-07-23T21:02:20.730' AS DateTime), N'12 trung nu vuong', N'sadsd')
INSERT [dbo].[tbl_Author] ([Id], [Name], [Birthday], [Address], [Website]) VALUES (4, N'nguyen bich ngoc', CAST(N'2020-07-23T21:02:20.730' AS DateTime), N'12 hung vuong', N'sadsadsa')
INSERT [dbo].[tbl_Author] ([Id], [Name], [Birthday], [Address], [Website]) VALUES (5, N'nguyen tuan', CAST(N'2020-07-23T21:02:20.730' AS DateTime), N'12 hung vuong', N'sdsadsdasdsd')
SET IDENTITY_INSERT [dbo].[tbl_Author] OFF
SET IDENTITY_INSERT [dbo].[tbl_Book] ON 

INSERT [dbo].[tbl_Book] ([Id], [Title], [Description], [Author], [Creator], [Categories], [Cover], [Content]) VALUES (1, N'Toan 1', N'Sach toan1', 1, N'1', 1, N'Image1.jpg', N'ọc (TX Điện Bàn, Quảng Nam) tỏ ra bức xúc, nhờ các cơ quan chức năng can thiệp giải quyết việc Cty chậm chốt sổ bảo hiểm xã hội (BHXH),')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Description], [Author], [Creator], [Categories], [Cover], [Content]) VALUES (4, N'Toan 3', N'bai tap123', 4, N'an', 2, N'Image2.jpg', N'wqewqeqwe')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Description], [Author], [Creator], [Categories], [Cover], [Content]) VALUES (5, N'Ngu van 1', N'Sach ngu van 12', 4, N'hientan', 5, N'Image3.jpg', N'Cty TNHH May Minh Hoàng 2 "quên" đóng hàng chục tỷ 
đồng bảo hiểm cho công nhân 
Hàng trăm công nhân đang và từng làm việc tại Cty TNHH May Minh Hoàng 2 tại KCN Điện Nam –  
 
Điện Ngọc (TX Điện Bàn, Quảng Nam) tỏ ra bức xúc, nhờ các cơ quan chức năng can thiệp giải quyết việc 
Cty chậm chốt sổ bảo hiểm xã hội (BHXH), 
 
 bảo hiểm thất nghiệp (BHTN) cho người lao động. 
 ')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Description], [Author], [Creator], [Categories], [Cover], [Content]) VALUES (6, N'Toan 5', N'Sach toan1', 1, N'an', 1, N'Image4.jpg', N'ọc (TX Điện Bàn, Quảng Nam) tỏ ra bức xúc, nhờ các cơ quan chức năng can thiệp giải quyết việc Cty chậm chốt sổ bảo hiểm xã hội (BHXH),')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Description], [Author], [Creator], [Categories], [Cover], [Content]) VALUES (7, N'Ngu van 2', N'Ngu van', 1, N'an', 1, N'Image6.jpg', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Book] OFF
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([Id], [Title]) VALUES (1, N'Sach giao khoa')
INSERT [dbo].[tbl_Category] ([Id], [Title]) VALUES (2, N'Sach toan')
INSERT [dbo].[tbl_Category] ([Id], [Title]) VALUES (4, N'Sach hoa hoc')
INSERT [dbo].[tbl_Category] ([Id], [Title]) VALUES (5, N'Sach ngu van')
INSERT [dbo].[tbl_Category] ([Id], [Title]) VALUES (6, N'Sach vat ly')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (1, N'hientan', N'123', N'Nguyen Hien', N'Tan', 1)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (2, N'tan', N'123', N'nguyen', N'tan', 2)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (3, N'tram', N'123', NULL, NULL, 2)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (4, N'an', N'An123', N'Dang Binh ', N'An', 2)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (5, N'binh', N'12', N'nguyen', N'binh', 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (6, N'an2', N'123', N'nguyen', N'binh', 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (7, N'hanh', N'Ha123', N'Tran Thi ', N'Binh', 2)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (8, N'ngoc', N'123', NULL, NULL, 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (9, N'tuan', N'123', NULL, NULL, 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (10, N'sony', N'123', NULL, NULL, 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (11, N'quy', N'123', NULL, NULL, 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (13, N'tuan1', N'123', N'tran', N'tuan', 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (14, N'tram1', N'123', NULL, NULL, 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (15, N'nam', N'123', NULL, NULL, 0)
INSERT [dbo].[tbl_User] ([Id], [Username], [Password], [FirstName], [LastName], [Role]) VALUES (16, N'tai', N'Aas1', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckLogin]
	-- Add the parameters for the stored procedure here
	@Username nvarchar(MAX), 
	@Password nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	

    -- Insert statements for procedure here
	SELECT * FROM tbl_User where tbl_User.Username = @Username and tbl_User.Password = @Password
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAuthor]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAuthor]
	@Id int
AS
BEGIN
	DELETE FROM tbl_Author WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBook]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteBook]
	-- Add the parameters for the stored procedure here
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DELETE FROM tbl_Book WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCategory]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DELETE FROM tbl_Category WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUser] 
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DELETE FROM tbl_User WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertAuthor]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertAuthor]
	@Name nvarchar(MAX), 
	@Birthday datetime,
	@Address nvarchar(MAX),
	@Wedsite nvarchar(MAX)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM tbl_Author WHERE Name = @Name) 
BEGIN
	RETURN CAST(0 AS BIT)
END
ELSE
BEGIN
   INSERT INTO tbl_Author(Name, Birthday, Address, Website) VALUES(@Name, @Birthday, @Address, @Wedsite)
   RETURN CAST(1 AS BIT)
END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertBook]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertBook]
	-- Add the parameters for the stored procedure here
	@Title nvarchar(MAX), 
	@Description nvarchar(MAX),
	@Author int,
	@Creator nvarchar(MAX),
	@Categories int,
	@Cover nvarchar(MAX),
	@Content nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	INSERT INTO tbl_Book(Title, Description, Author, Creator, Categories, Cover, Content)
	VALUES(@Title, @Description, @Author, @Creator, @Categories, @Cover, @Content)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertCategory]
	@Title nvarchar(MAX)
AS
IF EXISTS (SELECT 1 FROM tbl_Category WHERE Title = @Title) 
BEGIN
	RETURN CAST(0 AS BIT)
END
ELSE
BEGIN
   INSERT INTO tbl_Category(Title) VALUES(@Title)
   RETURN CAST(1 AS BIT)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUser]
	-- Add the parameters for the stored procedure here
	@Username nvarchar(MAX), 
	@Password nvarchar(MAX),
	@Firstname nvarchar(MAX),
	@Lastname nvarchar(MAX),
	@Role int
	
AS
BEGIN


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
	IF EXISTS (SELECT 1 FROM tbl_User WHERE Username = @Username) 
BEGIN
	RETURN CAST(0 AS BIT)
END
ELSE
BEGIN
   INSERT INTO tbl_User(Username, Password, FirstName, LastName, Role) VALUES(@Username, @Password, @Firstname, @Lastname, @Role)
   RETURN CAST(1 AS BIT)
END
END
GO
/****** Object:  StoredProcedure [dbo].[SearchUser]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchUser]
	-- Add the parameters for the stored procedure here
	 @Username nvarchar(MAX),
	 @Password nvarchar(MAX),
	 @Firstname nvarchar(MAX),
	 @Lastname nvarchar(MAX)
AS
BEGIN


	DECLARE @UsernameTemp nvarchar(MAX)
	DECLARE @PasswordTemp nvarchar(MAX)
	DECLARE @FirstnameTemp nvarchar(MAX)
	DECLARE @LastnameTemp nvarchar(MAX)

	SET @UsernameTemp = @Username + '%'
	SET @PasswordTemp = @Password + '%'
	SET @FirstnameTemp = @Firstname + '%'
	SET @LastnameTemp = @Lastname + '%'
	
	SELECT * FROM tbl_User WHERE Username LIKE @UsernameTemp
							OR Password LIKE @PasswordTemp
							OR FirstName LIKE @FirstnameTemp
							OR LastName LIKE @LastnameTemp
	
END
GO
/****** Object:  StoredProcedure [dbo].[SelectBook]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectBook]
	-- Add the parameters for the stored procedure here
	@Title VARCHAR(Max), 
	@Description VARCHAR(Max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @sqlCommand VARCHAR(8000) 
	
SET @sqlCommand = 'SELECT * FROM tbl_Book'
if((isnull(@Title,''))!='' OR (isnull(@Description,''))!='' )
BEGIN
SET @sqlCommand = @sqlCommand + ' WHERE'
    IF ((isnull(@Title,'')) != '')
    BEGIN
        SET @sqlCommand = @sqlCommand + ' Title LIKE ''' + @Title + '%' 
        IF ((isnull(@Description,'')) != '')
        BEGIN
            SET @sqlCommand = @sqlCommand + '''AND'
        END
    END
        IF ((isnull(@Description,'')) != '')
        BEGIN
            SET @sqlCommand = @sqlCommand + ' Description LIKE ''' + @Description + '%'
        END
    SET @sqlCommand = @sqlCommand + ''''
END
EXEC (@sqlCommand)
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAuthor]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAuthor]
	@Id int,
	@Name nvarchar(MAX), 
	@Birthday datetime,
	@Address nvarchar(MAX),
	@Wedsite nvarchar(MAX)
AS
BEGIN
	IF ((SELECT COUNT(*) FROM tbl_Author WHERE Name = @Name) > 1)
BEGIN
	RETURN CAST(0 AS BIT)
END
ELSE
BEGIN
		UPDATE tbl_Author 
		SET 
		Name = @Name,
		Birthday = @Birthday,
		Address = @Address,
		Website = @Wedsite
		WHERE Id = @Id
   
   RETURN CAST(1 AS BIT)
END
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateBook]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateBook]
	-- Add the parameters for the stored procedure here
	@Id int,
	@Title nvarchar(MAX), 
	@Description nvarchar(MAX),
	@Author int,
	@Categories int,
	@Cover nvarchar(MAX),
	@Content nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	UPDATE tbl_Book 
		SET 
		Title = @Title,
		Description = @Description,
		Author = @Author,
		Categories = @Categories,
		Cover = @Cover,
		Content = @Content
		WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateCategory]
	@Id int,
	@Title nvarchar(MAX)
AS
IF ((SELECT COUNT(*) FROM tbl_Category WHERE Title = @Title) > 1)
BEGIN
	RETURN CAST(0 AS BIT)
END
ELSE
BEGIN
   UPDATE tbl_Category 
		SET 
		Title = @Title
		WHERE Id = @Id
   
   RETURN CAST(1 AS BIT)
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateInfoUser]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateInfoUser]
	-- Add the parameters for the stored procedure here
	@Username nvarchar(MAX), 
	@Firstname nvarchar(MAX),
	@Lastname nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	UPDATE tbl_User 
		SET 
		Username = @Username,
		FirstName = @Firstname,
		LastName = @Lastname
		WHERE Username = @Username
   
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePasswordUser]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePasswordUser]
	-- Add the parameters for the stored procedure here
	@Username nvarchar(MAX), 
	@PasswordCurrent nvarchar(MAX),
	@PasswordNew nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	IF EXISTS (SELECT 1 FROM tbl_User WHERE Username = @Username and Password = @PasswordCurrent) 
BEGIN
		UPDATE tbl_User 
		SET 
		Password = @PasswordNew
		WHERE Username = @Username and Password = @PasswordCurrent
   
   RETURN CAST(1 AS BIT)
END
ELSE
BEGIN
   RETURN CAST(0 AS BIT)
END
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 7/28/2020 3:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUser]
	@Id int,
	@Username nvarchar(MAX), 
	@Password nvarchar(MAX),
	@Firstname nvarchar(MAX),
	@Lastname nvarchar(MAX),
	@Role int
AS
BEGIN
	IF ((SELECT COUNT(*) FROM tbl_User WHERE Username = @Username) > 1)
BEGIN
	RETURN CAST(0 AS BIT)
END
ELSE
BEGIN
		UPDATE tbl_User 
		SET 
		Username = @Username,
		Password = @Password,
		FirstName = @Firstname,
		LastName = @Lastname,
		Role = @Role
		WHERE Id = @Id
   
   RETURN CAST(1 AS BIT)
END
END
GO
USE [master]
GO
ALTER DATABASE [dbBook] SET  READ_WRITE 
GO
