USE [RENT_MOTOR]
GO
/****** Object:  Table [dbo].[bike]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bike](
	[id_bike] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](100) NULL,
	[price] [int] NULL,
	[IsActive] [bit] NULL,
	[id_type] [int] NULL,
	[IsHot] [bit] NULL,
	[describe] [nvarchar](max) NULL,
	[mass] [nchar](10) NULL,
	[volumn] [nchar](10) NULL,
	[size] [nchar](30) NULL,
	[consume] [nchar](30) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [Pk_bike] PRIMARY KEY CLUSTERED 
(
	[id_bike] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id_bill] [int] IDENTITY(1,1) NOT NULL,
	[id_rent] [int] NOT NULL,
	[money_hour] [int] NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_nill] PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[head] [nvarchar](200) NULL,
	[content] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id_cmt] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[content] [nvarchar](500) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[id_cmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](50) NULL,
	[facebook_link] [nvarchar](100) NULL,
 CONSTRAINT [PK__contact__DDDF328E0B62B1D8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id_employee] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[fulControl] [bit] NULL,
 CONSTRAINT [pk_employee] PRIMARY KEY CLUSTERED 
(
	[id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mail]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](150) NULL,
	[Message] [nvarchar](max) NULL,
	[IsRead] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rate]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[job] [nvarchar](50) NULL,
	[content] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_rate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rent]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rent](
	[id_rent] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
	[mail] [nvarchar](50) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_rent] PRIMARY KEY CLUSTERED 
(
	[id_rent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rentDetails]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rentDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rent] [int] NOT NULL,
	[id_bike] [int] NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_rentDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 4/10/2023 9:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[price_hour] [int] NULL,
	[price_day] [int] NULL,
	[price_month] [int] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bike] ON 

INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (1, N'SH Mode', N'/Content/images/xe/Sh.png', 25000, 1, 1, 1, N'<h2>1. Đ&aacute;nh gi&aacute; xe Honda SH Mode</h2>

<p>Honda SH Mode l&agrave; mẫu xe đang được quan t&acirc;m h&agrave;ng đầu tại Việt Nam. Chiếc xe tay ga nằm ở ph&acirc;n kh&uacute;c dưới SH v&agrave; tr&ecirc;n Honda Lead 2019 thật sự được rất nhiều chị em y&ecirc;u th&iacute;ch. Đối với SH Mode, Honda tập trung cải thiện khả năng vận h&agrave;nh ở 3 yếu tố: đầu xe linh hoạt, th&acirc;n xe tạo tư thế l&aacute;i thoải m&aacute;i v&agrave; hệ thống treo &ecirc;m &aacute;i.</p>

<p><img alt="Honda Sh Mode" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/sh-mode.jpg" width="660" /></p>

<p>Honda Sh Mode c&oacute; phong c&aacute;ch tinh tế sang trọng với những đường nét thiết kế mềm mại đậm ch&acirc;́t ch&acirc;u &Acirc;u. Ảnh Internet</p>

<h3>1.1. Đ&aacute;nh gi&aacute; xe SH Mode về thiết kế</h3>

<h4>1.1.1. Mặt nạ trước</h4>

<p>C&aacute;c d&ograve;ng xe SH Mode từ trước đến nay đều được đ&aacute;nh gi&aacute; rất cao bởi vẻ ngo&agrave;i thanh tho&aacute;t, mang đậm phong c&aacute;ch Ch&acirc;u &Acirc;u. Thể hiện r&otilde; nhất ở phần mặt nạ trước, c&aacute;c đường n&eacute;t giữa cụm đ&egrave;n pha, đ&egrave;n xi nhan v&agrave; đ&egrave;n định vị đều được xử l&yacute; gọn g&agrave;ng với tấm mặt nạ Crom h&igrave;nh chữ V, rất ấn tượng v&agrave; thu h&uacute;t.</p>

<p><img alt="mặt nạ Đánh giá xe Honda SH Mode" height="439" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/mat-na.jpg" width="660" /></p>

<p>Phần mặt nạ trước với những đường n&eacute;t thanh tho&aacute;t, tinh tế. Ảnh Internet</p>

<h4>1.1.2. Đu&ocirc;i xe</h4>

<p>Phần đu&ocirc;i xe tuy kh&ocirc;ng c&oacute; nhiều cải biến mới nhưng vẫn c&oacute; thể tạo điểm nhấn với tay cầm uốn cong để c&oacute; thể tiện l&ugrave;i xe trong phạm vi nhỏ hẹp. Logo SH mode in nổi ph&iacute;a cuối y&ecirc;n vừa đẹp mắt lại vừa thu h&uacute;t.</p>

<p><img alt="đuôi xe Đánh giá xe Honda SH Mode" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/duoi-xe.jpg" width="660" /></p>

<p>Phần tay cầm được uốn cong để kh&ocirc;ng bị đau tay khi quay xe. Ảnh Internet</p>

<h4>1.1.3. Mặt đồng hồ thể thao</h4>

<p>Nếu c&aacute;c đường n&eacute;t ph&iacute;a trước v&agrave; sau của SH Mode 2019 kh&aacute; uyển chuyển, nữ t&iacute;nh th&igrave; mặt đồng hồ mang phong c&aacute;ch thể thao, mạnh mẽ lại l&agrave; điểm cộng trong mắt của c&aacute;c đấng m&agrave;y r&acirc;u. Theo đ&oacute;, ở phi&ecirc;n bản n&agrave;y, xung quanh mặt đồng hồ điện tử được mạ Crom v&agrave; che phủ bởi chất liệu nhựa cao cấp, cực bền v&agrave; trong suốt. Việc thiết kế vị tr&iacute; hiển thị của c&aacute;c th&ocirc;ng số cũng rất r&otilde; r&agrave;ng, khoa học. Người d&ugrave;ng vừa c&oacute; thể điều khiển xe an to&agrave;n, lại vừa c&oacute; thể quan s&aacute;t tốt c&aacute;c t&iacute;n hiệu hoạt động.</p>

<p><img alt="đồng hồ Đánh giá xe Honda SH Mode" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/dong-ho.jpg" width="660" /></p>

<p>Thiết kế mặt đồng hồ thể thao sang trọng v&agrave; khoa học. Ảnh Internet</p>

<h4>1.1.4. Hệ thống đ&egrave;n pha</h4>

<p>Đa số c&aacute;c d&ograve;ng xe tay ga ch&iacute;nh h&atilde;ng của Honda như Vision, Lead, Air Blade&hellip;v&agrave; cả SH Mode đều c&oacute; cụm đ&egrave;n pha cao, s&aacute;ng v&agrave; dễ d&agrave;ng điều chỉnh c&aacute;c chế độ kh&aacute;c nhau khi đi v&agrave;o buổi tối. Tuy nhi&ecirc;n, ri&ecirc;ng ở SH Mode th&igrave; cụm đ&egrave;n pha n&agrave;y được thiết kế kh&aacute; gọn g&agrave;ng, vu&ocirc;ng vắn đem lại cảm gi&aacute;c vừa đơn giản nhưng cũng vừa tinh tế.</p>

<p><img alt="đèn pha Đánh giá xe Honda SH Mode" height="434" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/den-pha.jpg" width="660" /></p>

<p>Đ&egrave;n pha Sh Mode được thiết kế kh&aacute; gọn g&agrave;ng, vu&ocirc;ng vắn đem lại cảm gi&aacute;c vừa đơn giản nhưng cũng vừa tinh tế. Ảnh Internet</p>

<h4>1.1.5. Logo</h4>

<p>Logo SH Mode được lồng gh&eacute;p một c&aacute;ch kh&aacute; tinh tế trong to&agrave;n bộ thiết kế b&ecirc;n ngo&agrave;i tại phi&ecirc;n bản 2019. Với mục đ&iacute;ch tạo điểm nhấn v&agrave; nhận diện thương hiệu, logo &ldquo;SH&rdquo; c&aacute;ch điệu sẽ được đặt ở phần mặt nạ, ph&iacute;a trước v&agrave; ngay dưới t&ecirc;n nh&agrave; sản xuất Honda. Phần h&ocirc;ng xe ph&iacute;a sau, ở hai b&ecirc;n sẽ c&oacute; logo &ldquo;SH mode&rdquo; được mạ một lớp phủ kim loại m&agrave;u v&agrave;ng, b&oacute;ng v&agrave; đẹp mắt, vừa đủ để t&ocirc;n l&ecirc;n sự thanh lịch của chiếc xe. Cuối c&ugrave;ng l&agrave; logo in nổi ở cuối y&ecirc;n xe c&oacute; m&agrave;u trắng, điểm nhấn đặc biệt cho thương hiệu n&agrave;y.</p>

<p><img alt="logo Đánh giá xe Honda SH Mode" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/logo.jpg" width="660" /></p>

<p>Logo của Honda SH Mode với logo m&agrave;u v&agrave;ng đồng cuốn h&uacute;t v&agrave; nữ t&iacute;nh. Ảnh Internet</p>

<h4>1.1.6. Gương chiếu hậu</h4>

<p>Bộ phận gương chiếu hậu của SH Mode giống nhau ở cả hai d&ograve;ng CBS &amp; ABS. Theo đ&oacute;, gương được thiết kế với kiểu d&aacute;ng tr&ograve;n, kh&aacute; cổ điển tương tự như c&aacute;c loại xe ga mang phong c&aacute;ch Ch&acirc;u &Acirc;u. B&ecirc;n cạnh đ&oacute;, gương cũng được mạ Crom v&agrave; sử dụng khớp nối linh hoạt, c&oacute; thể điều chỉnh để quan s&aacute;t r&otilde; hơn trong từng điều kiện giao th&ocirc;ng.</p>

<p><img alt="Gương chiếu hậu" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/guong-chieu-hau.jpg" width="660" /></p>

<p>Gương chiếu hậu mạ Crom sang trọng. Ảnh Internet</p>

<h3>1.2. Đ&aacute;nh gi&aacute; xe SH Mode về động cơ</h3>

<ul>
	<li><strong>Động cơ &amp; C&ocirc;ng nghệ</strong>&nbsp;: Trải nghiệm h&agrave;nh tr&igrave;nh tuyệt vời với động cơ eSP thế hệ mới vận h&agrave;nh tối ưu v&agrave; tiết kiệm nhi&ecirc;n liệu vượt trội. Động cơ th&ocirc;ng minh thế hệ mới, được thiết kế nhỏ gọn, 125cc, 4 kỳ, xy-lanh đơn, l&agrave;m m&aacute;t bằng dung dịch &amp; t&iacute;ch hợp những c&ocirc;ng nghệ ti&ecirc;n tiến nhất. Nhờ đ&oacute;, Xe SH mode 2019 c&oacute; khả năng tiết kiệm nhi&ecirc;n liệu đến 56% (*) so với d&ograve;ng xe ga 125cc c&ugrave;ng loại (kh&ocirc;ng sử dụng eSP v&agrave; Idling Stop)</li>
	<li><strong>Hệ thống Phun xăng điện tử (PGM-FI):</strong>&nbsp;gi&uacute;p kiểm so&aacute;t v&agrave; cung cấp lượng nhi&ecirc;n liệu ph&ugrave; hợp, gi&uacute;p tiết kiệm nhi&ecirc;n liệu v&agrave; g&oacute;p phần giảm lượng kh&iacute; thải độc hại ra m&ocirc;i trường, đ&aacute;p ứng ti&ecirc;u chuẩn Euro 3 về kh&iacute; thải. Đi k&egrave;m với đ&oacute; l&agrave; Bộ đề t&iacute;ch hợp ACG vừa c&oacute; chức năng khởi động, vừa c&oacute; chức năng như m&aacute;y ph&aacute;t điện, gi&uacute;p xe khởi động v&agrave; t&aacute;i khởi động &ecirc;m &aacute;i.</li>
	<li><strong>Hệ thống ngắt động cơ tạm thời (Idling Stop):</strong>&nbsp;C&oacute; khả năng tự động ngắt động cơ tạm thời khi xe dừng qu&aacute; 3 gi&acirc;y. Động cơ sẽ được t&aacute;i khởi động &ecirc;m &aacute;i ngay khi người l&aacute;i tăng ga trở lại m&agrave; kh&ocirc;ng cần ấn n&uacute;t khởi động.</li>
</ul>

<p><img alt="Động cơ eSP " height="435" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/dong-co-sh.jpg" width="660" /></p>

<p>Động cơ eSP thế hệ mới vận h&agrave;nh tối ưu v&agrave; tiết kiệm nhi&ecirc;n liệu. Ảnh Internet</p>

<h3>1.3. Đ&aacute;nh gi&aacute; xe Honda SH Mode về&nbsp;khả n&acirc;ng vận h&agrave;nh</h3>

<p>Honda SH Mode được trang bị cụm động cơ 125cc, 4 kỳ, xy-lanh đơn, l&agrave;m m&aacute;t bằng dung dịch, t&iacute;ch hợp c&ocirc;ng nghệ phun xăng điện tử PGM &ndash; FI, sản sinh c&ocirc;ng suất tối đa 8,36kW/ tại 8.500 v&ograve;ng/ ph&uacute;t, m&ocirc;-men xoắn cực đại 11,7 N.m tại 5.000 v&ograve;ng/ ph&uacute;t.Điểm ấn tượng nhất của cụm động cơ n&agrave;y đ&oacute; ch&iacute;nh l&agrave; khả năng tiết kiệm nhi&ecirc;n liệu. Theo c&ocirc;ng bố của Honda, xe c&oacute; thể tiết kiệm được l&ecirc;n tới 56% nhi&ecirc;n liệu so với c&aacute;c d&ograve;ng xe ga 125cc kh&aacute;c đang c&oacute; mặt tr&ecirc;n thị trường hiện nay.</p>

<p>B&ecirc;n cạnh đ&oacute;, trải nghiệm vận h&agrave;nh của xe cũng được đ&aacute;nh gi&aacute; rất cao. SH Mode lu&ocirc;n mang lại cảm gi&aacute;c &ecirc;m &aacute;i ở khối động cơ v&agrave; sự chắc chắn khi tăng ga m&agrave; hầu như kh&ocirc;ng c&oacute; chấn động rung lắc g&igrave; đ&aacute;ng kể ngay cả sau một thời gian d&agrave;i sử dụng.Hiền h&ograve;a v&agrave; mềm mại l&agrave; những từ th&iacute;ch hợp nhất để mi&ecirc;u tả cảm gi&aacute;c m&agrave; chiếc xe n&agrave;y mang lại. Tuy nhi&ecirc;n, nếu người sử dụng y&ecirc;u th&iacute;ch v&agrave; mong muốn t&igrave;m kiếm một chiếc xe c&oacute; khả năng vận h&agrave;nh mạnh mẽ, phấn kh&iacute;ch th&igrave; SH Mode 125cc chưa thực sự đ&aacute;p ứng y&ecirc;u cầu</p>

<h3>1.4. Những điểm mới của xe Honda SH Mode 2019</h3>

<ul>
	<li>Hệ thống phanh tiến tiến kết hợp 3 p&iacute;t t&ocirc;ng thủy lực: Gi&uacute;p ph&acirc;n bố lực phanh b&aacute;nh trước với sau khi chỉ b&oacute;p phanh sau.</li>
	<li>Mặt đồng hồ điện tử cao cấp với phần ốp viền được mạ cr&ocirc;m s&aacute;ng b&oacute;ng, c&oacute; khả năng hiển thị cao c&ugrave;ng c&aacute;ch bố tr&iacute; hợp l&yacute; gi&uacute;p người l&aacute;i dễ d&agrave;ng quan s&aacute;t c&aacute;c th&ocirc;ng số.</li>
	<li>Hệ thống kh&oacute;a th&ocirc;ng minh (Honda SMART Key) l&agrave; c&ocirc;ng nghệ đột ph&aacute; mới lần đầu ti&ecirc;n được trang bị tr&ecirc;n xe SH mode 2019, thay cho hệ thống kh&oacute;a th&ocirc;ng thường hiện nay. Honda SMART Key c&oacute; thiết kế sang trọng t&iacute;ch hợp nhiều t&iacute;nh năng, mang lại tiện &iacute;ch cao cấp cho người sử dụng.</li>
</ul>

<p><img alt="Khóa từ thông minh" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/khoa-thong-minh-1.jpg" width="660" /></p>

<p>Kh&oacute;a từ th&ocirc;ng minh của SH Mode gi&uacute;p đảm bảo an to&agrave;n cho phương tiện. Ảnh Internet</p>

<ul>
	<li>Hệ thống ngắt động cơ tạm thời (Idling Stop). C&oacute; khả năng tự động ngắt động cơ tạm thời khi xe Honda SH Mode 2019 dừng qu&aacute; 3 gi&acirc;y. Động cơ sẽ được t&aacute;i khởi động &ecirc;m &aacute;i ngay khi người l&aacute;i tăng ga trở lại m&agrave; kh&ocirc;ng cần ấn n&uacute;t khởi động.</li>
	<li>Thiết kế v&agrave;nh xe h&igrave;nh SAO: V&agrave;nh xe 10 chấu h&igrave;nh sao nổi bật với b&aacute;nh trước v&agrave; đường k&iacute;nh 16 inch gi&uacute;p xe Sh Mode 2019 vận h&agrave;nh &ecirc;m &aacute;i ngay cả khi di chuyển tr&ecirc;n đường gồ ghề v&agrave; b&aacute;nh sau 14 inch mang lại sự thon gọn cho th&acirc;n xe.</li>
	<li>Hộc đựng đồ xe dưới y&ecirc;n xe: Hộc đựng đồ SH Mode 2019 rộng tới 18 l&iacute;t, c&oacute; thể chứa được hầu hết c&aacute;c loại mũ bảo hiểm cả đầu hoặc 2 mũ bảo hiểm nửa đầu c&ugrave;ng với c&aacute;c vật dụng nhỏ kh&aacute;c.</li>
</ul>

<h3>1.5. Đ&aacute;nh gi&aacute; xe Honda SH Mode về m&agrave;u sắc</h3>

<p>Theo đ&oacute;, năm nay thương hiệu sản xuất xe tay ga h&agrave;ng đầu đến từ Nhật Bản &ndash; Honda sẽ tr&igrave;nh l&agrave;ng 3 phi&ecirc;n bản kh&aacute;c nhau của SH Mode 2019: SH Mode CBS phi&ecirc;n bản Thời trang (phi&ecirc;n bản thường), SH Mode phanh ABS Thời trang v&agrave; SH Mode phanh ABS C&aacute; t&iacute;nh.</p>

<ul>
	<li>SH Mode 2019 phi&ecirc;n bản thường (Phanh CBS): xanh lam, trắng ng&agrave;, trắng n&acirc;u</li>
	<li>SH Mode 2019 phi&ecirc;n bản c&aacute; t&iacute;nh (Phanh ABS): bạc đen, trắng đen, đỏ đen</li>
	<li>SH Mode 2019 phi&ecirc;n bản thời trang (Phanh ABS): xanh lam, trắng ng&agrave;, trắng n&acirc;u</li>
</ul>

<p><img alt="màu sắc" height="440" src="https://yt.cdnxbvn.com/medias/topnews.com.vn/26581/mau-sac.jpg" width="660" /></p>

<p>M&agrave;u sắc của Honda SH Mode. Ảnh Internet</p>

<h3>1.6. Đ&aacute;nh gi&aacute; xe Honda SH Mode về ưu v&agrave; nhược điểm</h3>

<p><strong>Ưu điểm</strong></p>

<ul>
	<li>Honda SH Mode 2019 vẫn giữ thiết kế v&agrave; trang bị như phi&ecirc;n bản hiện tại, trong đ&oacute; c&oacute; c&aacute;c t&iacute;nh năng nổi bật như dừng cầm chừng, khởi động điện kết hợp bộ đề &ecirc;m &aacute;i, động cơ eSP 125 cc.</li>
	<li>SH Mode 2019 cũng được trang bị mặt đồng hồ kết hợp giữa analog v&agrave; kỹ thuật số. Trong khi đồng hồ analog thể hiện tốc độ th&igrave; mặt đồng hồ kỹ thuật số hiển thị thời gian v&agrave; h&agrave;nh tr&igrave;nh. Viền đồng hồ được mạ cr&ocirc;m b&oacute;ng kh&aacute; s&aacute;ng sủa, gi&uacute;p người l&aacute;i dễ d&agrave;ng quan s&aacute;t c&aacute;c th&ocirc;ng số.</li>
	<li>Ba t&iacute;nh năng ưu việt c&ugrave;ng được t&iacute;ch hợp tr&ecirc;n thiết bị điều khiển FOB bao gồm chức năng mở/ tắt xe từ xa, hệ thống x&aacute;c định vị tr&iacute; xe th&ocirc;ng minh v&agrave; hệ thống b&aacute;o động chống trộm, mang lại sự tiện lợi vượt trội v&agrave; trải nghiệm giống như sử dụng cho &ocirc; t&ocirc;.</li>
	<li>Thiết kế ổ kh&oacute;a &amp; ch&igrave;a kh&oacute;a th&ocirc;ng thường được thay thế ho&agrave;n to&agrave;n bằng n&uacute;m xoay khởi động c&oacute; viền &aacute;nh s&aacute;ng LED cao cấp bao quanh v&agrave; thiết bị điều khiển FOB nhỏ gọn, tinh tế, Honda SMART Key mang lại sự an t&acirc;m v&agrave; mức độ thỏa m&atilde;n cao hơn cho người sử dụng.</li>
</ul>

<p><strong>Nhược điểm</strong></p>

<ul>
	<li>V&igrave; l&agrave; d&ograve;ng xe Hot tr&ecirc;n thị trường n&ecirc;n Honda SH Mode 2019 thường bị c&aacute;c Head l&agrave;m gi&aacute; ngay sau khi ra mắt.</li>
</ul>
', N'118       ', N'5.6       ', N'195 x 67 x 110                ', N'2.16l                         ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (2, N'Wave Alpha', N'/Content/images/xe/wave.png', 15000, 1, 1, 1, N'<p><strong>THIẾT KẾ</strong></p>

<p>Wave Alpha 110cc phi&ecirc;n bản 2020 trẻ trung v&agrave; c&aacute; t&iacute;nh với thiết kế bộ tem mới, tạo những điểm nhấn ấn tượng, thu h&uacute;t &aacute;nh nh&igrave;n, cho bạn tự tin ghi lại dấu ấn c&ugrave;ng bạn b&egrave; của m&igrave;nh tr&ecirc;n mọi h&agrave;nh tr&igrave;nh.</p>

<p><strong>- Tem xe c&aacute; t&iacute;nh mới:</strong></p>

<p><img alt="tem_xe" src="https://hondatamanh.com.vn/vnt_upload/product/2020/10/tem_xe.jpg" /></p>

<p>Thiết kế tem mới với những đường n&eacute;t ấn tượng chạy dọc th&acirc;n xe mang lại h&igrave;nh ảnh tổng thể mới lạ v&agrave; c&aacute; t&iacute;nh.</p>

<p><strong>- Mặt đồng hồ dễ quan s&aacute;t:</strong></p>

<p><strong><img alt="mat_dong_ho" src="https://hondatamanh.com.vn/vnt_upload/product/2020/10/mat_dong_ho.jpg" /></strong></p>

<p>C&aacute;c th&ocirc;ng số vận h&agrave;nh được hiển thị đầy đủ gi&uacute;p người l&aacute;i quan s&aacute;t một c&aacute;ch dễ d&agrave;ng v&agrave; thuận tiện.</p>

<p><strong>ĐỘNG CƠ - C&Ocirc;NG NGHỆ</strong></p>

<p>Wave Alpha 110cc được trang bị động cơ 110cc với hiệu suất vượt trội m&agrave; vẫn đảm bảo khả năng tiết kiệm nhi&ecirc;n liệu một c&aacute;ch tối ưu.</p>

<p><img alt="dong_co" src="https://hondatamanh.com.vn/vnt_upload/product/2020/10/dong_co.jpg" /></p>

<p><strong>TIỆN &Iacute;CH V&Agrave; AN TO&Agrave;N:</strong></p>

<p><strong>- Đ&egrave;n chiếu s&aacute;ng ph&iacute;a trước c&oacute; t&iacute;nh năng tự động bật s&aacute;ng:</strong></p>

<p><img alt="den_chieu_sang" src="https://hondatamanh.com.vn/vnt_upload/product/2020/10/den_chieu_sang.jpg" /></p>

<p>Đảm bảo cho người sử dụng c&oacute; tầm nh&igrave;n tốt nhất, hạn chế c&aacute;c trường hợp qu&ecirc;n bật đ&egrave;n pha khi đi trong điều kiện &aacute;nh s&aacute;ng kh&ocirc;ng đảm bảo. B&ecirc;n cạnh đ&oacute;, khả năng nhận diện của xe khi di chuyển tr&ecirc;n đường phố cũng được tăng l&ecirc;n.</p>

<p><strong>- Ổ kh&oacute;a đa năng 3 trong 1:</strong></p>

<p><img alt="o_khoa" src="https://hondatamanh.com.vn/vnt_upload/product/2020/10/o_khoa.jpg" /></p>

<p>Ổ kh&oacute;a bao gồm kh&oacute;a điện, kh&oacute;a cổ v&agrave; kh&oacute;a từ, dễ sử dụng v&agrave; chống rỉ s&eacute;t hiệu quả.</p>
', N'97        ', N'3.7       ', N'191 x 69 x 108                ', N'1.9l                          ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (3, N'Winner X', N'/Content/images/xe/winner.jpg', 30000, 1, 1, 1, N'<h3>Thiết kế</h3>

<p>Lấy cảm hứng từ phong c&aacute;ch của những chiếc xe đua thể thao đậm chất Honda, WINNER X bổ sung Phi&ecirc;n bản giới hạn với tem v&agrave; m&agrave;u mới th&ecirc;m lựa chọn thể hiện chất ri&ecirc;ng của người l&aacute;i.</p>

<p><img alt="limited" src="https://hondatamanh.com.vn/vnt_upload/product/2021/03/limited_1.jpg" /></p>

<h3>Tem xe mới đậm chất thể thao</h3>

<p>Tem xe được thiết kế mới lạ v&agrave; mang lại nhận diện cao với nền chữ WINNER được nhấn mạnh ở cả đu&ocirc;i v&agrave; yếm xe. Nếu như yếm xe nổi bật với chữ WINNER X lớn được tạo th&agrave;nh từ những đường cắt đầy mạnh mẽ th&igrave; nền chữ WINNER ở đu&ocirc;i xe mang lại cảm gi&aacute;c ph&oacute;ng kho&aacute;ng với phong c&aacute;ch thiết kế hiện đại.<br />
Điểm xuyết tr&ecirc;n xe l&agrave; c&aacute;c đường tem kẻ ngang tinh tế, tăng cảm gi&aacute;c tốc độ v&agrave; gi&uacute;p nổi bật c&aacute;c chi tiết chữ tr&ecirc;n xe.<br />
Đặc biệt, tem chữ &quot;Limited Edition&quot; như một lời khẳng định cho chất ri&ecirc;ng v&agrave; đẳng cấp đỉnh cao của người l&aacute;i</p>

<p><img alt="Honda_Winner_X_2022_1" src="https://hondatamanh.com.vn/vnt_upload/product/2021/03/honda_winner_x_2022_1.jpg" /></p>

<h3>Cụm đ&egrave;n LED</h3>

<p>Cụm đ&egrave;n trước được thiết kế h&agrave;i h&ograve;a với to&agrave;n bộ th&acirc;n xe, trang bị c&ocirc;ng nghệ LED đặc trưng, lu&ocirc;n s&aacute;ng khi xe vận h&agrave;nh, n&acirc;ng cao t&iacute;nh an to&agrave;n v&agrave; tạo ra nhận dạng độc đ&aacute;o của WINNER X. Cụm đ&egrave;n ph&iacute;a sau cũng được trang bị LED l&agrave;m ho&agrave;n thiện vẻ hiện đại của một si&ecirc;u xe thể thao</p>

<p><img alt="Honda_Winner_X_2022_1" src="https://hondatamanh.com.vn/vnt_upload/product/2021/03/Honda_Winner_X_2022_1.png" /></p>

<h3>Đồng hồ LCD kĩ thuật số hiện đại</h3>

<p>&diams; Mặt đồng hồ LCD dạng &acirc;m bản nhỏ gọn được tạo h&igrave;nh khối theo phong c&aacute;ch thể thao hiện đại, gi&uacute;p hiển thị c&aacute;c th&ocirc;ng số r&otilde; n&eacute;t, đặc biệt đem lại cho người d&ugrave;ng tầm nh&igrave;n xuất sắc trong mọi điều kiện &aacute;nh s&aacute;ng.</p>

<p><img alt="dong_ho_lcd" src="https://hondatamanh.com.vn/vnt_upload/product/2019/07/dong_ho_lcd_1.jpg" /></p>

<h3>Trang bị đậm chất xe thể thao</h3>

<p>Được thiết kế như l&agrave; một chiếc xe thể thao ph&acirc;n khối lớn thực thụ, WINNER X mang tr&ecirc;n m&igrave;nh h&agrave;ng loạt trang bị hấp dẫn, đậm chất thể thao: G&aacute;c ch&acirc;n bằng nh&ocirc;m c&oacute; thể gập lại, tăng t&iacute;nh tiện dụng; Tay dắt sau thiết kế t&aacute;ch rời, tăng cảm gi&aacute;c thể thao; Đĩa phanh h&igrave;nh lượn s&oacute;ng, Y&ecirc;n xe &ecirc;m &aacute;i v&agrave; Phuộc trước tạo h&igrave;nh độc đ&aacute;o c&ugrave;ng Nắp nh&ocirc;m của c&agrave;ng sau c&agrave;ng nhấn mạnh vẻ thể thao, mạnh mẽ của WINNER X.</p>

<p><img alt="Honda_Winner_X_2021_3" src="https://hondatamanh.com.vn/vnt_upload/product/2021/03/honda_winner_x_2021_3_1.jpg" /></p>

<h3>Động cơ - C&ocirc;ng nghệ</h3>

<p>Động cơ 150cc mạnh mẽ c&ugrave;ng khả năng vận h&agrave;nh vượt trội dẫn dắt đến những cảm x&uacute;c l&aacute;i đỉnh cao</p>

<h3>Động cơ 150cc đầy uy lực v&agrave; tiết kiệm nhi&ecirc;n liệu</h3>

<p>WINNER X gi&uacute;p bạn c&oacute; những trải nghiệm l&aacute;i xe cực đỉnh với khối động cơ mạnh mẽ h&agrave;ng đầu ph&acirc;n kh&uacute;c, hệ thống phun xăng điện tử hiện đại c&ugrave;ng hộp số 6 cấp, cam đ&ocirc;i DOHC 4 van l&agrave;m m&aacute;t bằng dung dịch mang đến khả năng tăng tốc vượt trội v&agrave; tiết kiệm nhi&ecirc;n liệu hiệu quả (1.7l/100km).</p>

<p><img alt="Honda_Winner_X_2022_7" src="https://hondatamanh.com.vn/vnt_upload/product/2021/03/Honda_Winner_X_2022_7.png" /></p>

<h3>Tiện &iacute;ch &amp; An to&agrave;n</h3>

<p>Cung cấp những trang bị tiện &iacute;ch hiện đại h&agrave;ng đầu, Winner X xứng danh một trợ thủ đắc lực tr&ecirc;n mọi h&agrave;nh tr&igrave;nh</p>

<h3>Hệ thống chống b&oacute; cứng phanh ABS</h3>

<p>Hệ thống chống b&oacute; cứng phanh ABS được trang bị cho b&aacute;nh trước, hoạt đ&ocirc;̣ng hi&ecirc;̣u quả khi người lái bóp phanh trước, giúp &ocirc;̉n định tư th&ecirc;́ của xe bằng cách ch&ocirc;́ng khóa cứng bánh xe, đặc bi&ecirc;̣t trong đi&ecirc;̀u ki&ecirc;̣n đường trơn ướt, g&ocirc;̀ gh&ecirc;̀ hoặc khi đang di chuyển ở tốc độ cao<br />
* &Aacute;p dụng cho phi&ecirc;n bản Camo, Đen mờ, Đường đua, Thể thao phanh ABS</p>

<p><img alt="Honda_Winner_X_2022_8" src="https://hondatamanh.com.vn/vnt_upload/product/2021/03/Honda_Winner_X_2022_8.png" /></p>

<h3>C&ocirc;ng tắc mở y&ecirc;n t&iacute;ch hợp</h3>

<p>Sự tiện lợi tối đa cũng được thể hiện qua việc t&iacute;ch hợp c&ocirc;ng tắc mở y&ecirc;n với ổ kh&oacute;a, gi&uacute;p bạn thao t&aacute;c dễ d&agrave;ng trong những t&igrave;nh huống h&agrave;ng ng&agrave;y như đổ xăng hoặc bảo dưỡng.</p>
', N'122       ', N'4.5       ', N'202 x 73 x 110                ', N'1.99l                         ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (4, N'Air Blade', N'/Content/images/xe/ab.png', 25000, 1, 1, 1, N'<h2><strong>Thiết kế Honda Air Blade&nbsp;150cc/125cc</strong></h2>

<p>Xứng danh một mẫu xe tay ga thể thao nổi bật với uy lực bứt ph&aacute; trau chuốt đến từng chi tiết, tạo ra ấn tượng kh&aacute;c biệt v&agrave; đ&aacute;ng nhớ.</p>

<h3><strong>Kiểu d&aacute;ng thể thao cao cấp</strong></h3>

<p>Tiếp tục l&agrave; hiện th&acirc;n của sự đột ph&aacute;, hiện đại với diện mạo được trau chuốt tỉ mỉ đến từng chi tiết, Air Blade mang h&igrave;nh ảnh đặc trưng được thể hiện qua thiết kế tổng thể gợi li&ecirc;n tưởng đến &ldquo;chữ X&rdquo;, phản chiếu sự cứng c&aacute;p trong bề mặt hiện đại xen lẫn l&agrave; những đường n&eacute;t được xử l&yacute; gọn g&agrave;ng, dứt kho&aacute;t. Đặc biệt, Air Blade 150cc kh&aacute;c biệt hơn với tấm chắn gi&oacute; ph&iacute;a trước, y&ecirc;n xe hai t&ocirc;ng m&agrave;u v&agrave; tiết diện lốp xe lớn.</p>

<p><img alt="honda-airblade-2021" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021.png" /></p>

<h3>Tem xe c&ugrave;ng phối m&agrave;u mới mới ấn tượng</h3>

<p>Tem xe được thiết kế mới với những đường n&eacute;t mạnh mẽ, thể thao, c&ugrave;ng phối m&agrave;u mới ấn tượng nhưng kh&ocirc;ng k&eacute;m phần sang trọng, mang đến diện mạo mới thể thao v&agrave; cuốn h&uacute;t hơn.</p>

<p><img alt="honda-airblade-2021-1" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-1.jpg" /></p>

<h3>Cụm đ&egrave;n LED trước</h3>

<p>Air Blade sử dụng đ&egrave;n định vị LED cỡ lớn với thiết kế đ&egrave;n trước được m&ocirc; phỏng cấu tr&uacute;c đ&egrave;n từ những mẫu xe ph&acirc;n khối lớn, tạo cảm gi&aacute;c thể thao năng động. Nhờ việc cải thiện đặc điểm ph&acirc;n v&ugrave;ng &aacute;nh s&aacute;ng của đ&egrave;n chiếu s&aacute;ng ph&iacute;a trước, tầm nh&igrave;n xe được cải thiện hơn v&agrave;o ban đ&ecirc;m v&agrave; trong điều kiện thời tiết xấu.</p>

<p><img alt="honda-airblade-2021-3" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-3.png" /></p>

<h3>Mặt đồng hồ LCD</h3>

<p>Mặt đồng hồ LCD kỹ thuật số ho&agrave;n to&agrave;n mang lại một thiết kế hiện đại, gọn g&agrave;ng hơn v&agrave; tăng kh&ocirc;ng gian cho th&ocirc;ng tin hiển thị. Ngo&agrave;i hai th&ocirc;ng tin về h&agrave;nh tr&igrave;nh, đồng hồ c&ograve;n hiển thị th&ocirc;ng tin ti&ecirc;u thụ nhi&ecirc;n liệu tức thời/trung b&igrave;nh, gi&uacute;p người d&ugrave;ng theo d&otilde;i được sự kh&aacute;c biệt trong những t&igrave;nh huống l&aacute;i xe kh&aacute;c nhau.</p>

<p><img alt="honda-airblade-2021-2" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-2.png" /></p>

<h2>Động cơ - C&ocirc;ng nghệ&nbsp;Honda Air Blade&nbsp;150cc/125cc</h2>

<p>Ngo&agrave;i động cơ 125 ph&acirc;n khối , Air Blade được trang bị th&ecirc;m động cơ 150 ph&acirc;n khối mạnh mẽ với khả năng tăng tốc vượt trội, tăng th&ecirc;m cảm gi&aacute;c phấn kh&iacute;ch để c&ugrave;ng bạn kh&aacute;m ph&aacute; mọi nẻo đường</p>

<h3>Động cơ 150cc</h3>

<p>Phi&ecirc;n bản 150 ph&acirc;n khối sử dụng động cơ eSP c&oacute; lọc gi&oacute; v&agrave; ống xả xe được điều chỉnh nhằm mang đến cảm gi&aacute;c m&aacute;y phấn kh&iacute;ch lẫn c&ocirc;ng suất tối đa vượt trội (9.6kW/8,500 v&ograve;ng ph&uacute;t).</p>

<p><img alt="honda-airblade-2021-4" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-4.png" /></p>

<h3>Khả năng tăng tốc vượt trội (d&agrave;nh cho Air Blade 150cc)</h3>

<p>Theo như kết quả thử nghiệm, động cơ 150 ph&acirc;n khối c&oacute; khả năng tăng tốc vượt trội, chỉ mất 6.2 gi&acirc;y để tăng tốc từ 0-100m với vận tốc từ 40km/h</p>

<p><img alt="honda-airblade-2021-10" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-10.png" /></p>

<h2>Tiện &iacute;ch &amp; An to&agrave;n&nbsp;Honda Air Blade&nbsp;150cc/125cc</h2>

<p>Hơn cả một chiếc xe, Air Blade ch&iacute;nh l&agrave; trợ thủ đắc lực v&agrave; đ&aacute;ng tin cậy của bạn tr&ecirc;n mỗi h&agrave;nh tr&igrave;nh nhờ trang bị những tiện &iacute;ch cao cấp v&agrave; ưu việt.</p>

<h3>Hệ thống kh&oacute;a th&ocirc;ng minh</h3>

<p>Mẫu xe Air Blade mới sử dụng hệ thống kh&oacute;a th&ocirc;ng minh vốn đ&atilde; quen thuộc với kh&aacute;ch h&agrave;ng Việt Nam. Tuyệt vời hơn nữa khi Air Blade mới được n&acirc;ng cấp chức năng b&aacute;o chống trộm để kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m hơn khi kh&ocirc;ng ở b&ecirc;n cạnh chiếc xe của m&igrave;nh.</p>

<p><img alt="honda-airblade-2021-5" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-5.png" /></p>

<h3>Hệ thống chống b&oacute; cứng phanh ABS (d&agrave;nh cho Air Blade 150cc)</h3>

<p>Hệ thống chống b&oacute; cứng phanh ABS cho b&aacute;nh trước lần đầu ti&ecirc;n được trang bị tr&ecirc;n Air Blade 150cc mang lại sự y&ecirc;n t&acirc;m cho kh&aacute;ch h&agrave;ng tr&ecirc;n điều kiện địa h&igrave;nh kh&aacute;c nhau.</p>

<p><img alt="honda-airblade-2021-6" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-6.png" /></p>

<h3>Hộc đựng đồ rộng r&atilde;i</h3>

<p>Hộc đựng đồ được n&acirc;ng cấp cực rộng r&atilde;i, c&oacute; thể để tới 2 chiếc mũ bảo hiểm th&ocirc;ng dụng, dung t&iacute;ch hộc đồ đạt tới 22.7 l&iacute;t (rộng th&ecirc;m 0.9 l&iacute;t) m&agrave; vẫn giữ nguy&ecirc;n thiết kế thon gọn. Kh&ocirc;ng chỉ được tăng th&ecirc;m về mặt dung t&iacute;ch m&agrave; hộc chứa đồ c&ograve;n tiếp tục được trang bị đ&egrave;n soi hộc đồ, gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng t&igrave;m kiếm c&aacute;c vật d&ugrave;ng trong điều kiện thiếu &aacute;nh s&aacute;ng.</p>

<p><img alt="honda-airblade-2021-7" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-7.jpg" /></p>

<h3>Cổng sạc tiện lợi (d&agrave;nh cho Air Blade 150cc)</h3>

<p>Phi&ecirc;n bản động cơ 150cc được trang bị th&ecirc;m cổng sạc trong hộc đựng đồ, cung cấp điện với c&ocirc;ng suất l&ecirc;n tới 12W khi động cơ đang chạy, gi&uacute;p n&acirc;ng tầm trải nghiệm cho kh&aacute;ch h&agrave;ng tr&ecirc;n mọi nẻo đường.</p>

<p><img alt="honda-airblade-2021-8" src="https://hondatamanh.com.vn/vnt_upload/product/2020/12/honda-airblade-2021-8.jpg" /></p>

<h3>Đ&egrave;n chiếu s&aacute;ng ph&iacute;a trước lu&ocirc;n s&aacute;ng</h3>

<p>Chế độ đ&egrave;n lu&ocirc;n s&aacute;ng đảm bảo cho người sử dụng c&oacute; tầm nh&igrave;n tốt nhất, hạn chế c&aacute;c trường hợp qu&ecirc;n bật đ&egrave;n khi đi trong điều kiện &aacute;nh s&aacute;ng kh&ocirc;ng đảm bảo, đồng thời gi&uacute;p n&acirc;ng cao khả năng hiện diện của xe khi lưu th&ocirc;ng tr&ecirc;n đường phố.</p>
', N'113       ', N'4.4       ', N'189 x 69 x 110                ', N'2.26l                         ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (5, N'Theon', N'/Content/images/xe/Theon.jpg', 20000, 1, 5, 0, N'<p>K&iacute;ch thước của Theon d&agrave;i x rộng x cao l&agrave; 2.006 x 800 x 1.255 (mm), tương tự SH. Chiều cao y&ecirc;n 780 mm, thấp hơn 19 mm so với SH n&ecirc;n sẽ dễ d&agrave;ng hơn với chiều cao người Việt. Trong khi đ&oacute;, khoảng s&aacute;ng gầm 160 mm lại cao hơn con số 146 mm của SH n&ecirc;n sẽ thuận tiện hơn khi đi đường ngập nước cũng như leo dốc.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-10.png" width="800" /></p>

<p>Tổng thể Theon c&aacute; t&iacute;nh, g&oacute;c cạnh v&agrave; c&oacute; phần nghịch ngợm, thể hiện r&otilde; phong c&aacute;ch d&agrave;nh cho nam giới. Đầu xe tạo điểm nhấn với đ&egrave;n pha LED xếp tầng, dải đ&egrave;n ban ng&agrave;y định vị n&ecirc;n chữ V. Đầu xe th&ecirc;m tấm ốp kiểu mặt nạ của đấu sĩ.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-1.jpg" width="800" /></p>

<p>S&agrave;n để ch&acirc;n kh&aacute; rộng, b&aacute;nh sau c&oacute; chắn b&ugrave;n tr&aacute;nh bắn đất l&ecirc;n lưng người.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-9.png" width="800" /></p>

<p>Xe sử dụng m&agrave;n h&igrave;nh điện tử, hiển thị đầy đủ c&aacute;c th&ocirc;ng tin cần thiết cho h&agrave;nh tr&igrave;nh v&agrave; xe, với hai cột pin tương ứng.</p>

<p>Xe cũng được trang bị loạt c&ocirc;ng nghệ hiện đại với ch&igrave;a kh&oacute;a th&ocirc;ng minh v&agrave; c&oacute; thể điều khiển xe qua điện thoại. Ứng dụng tr&ecirc;n điện thoại sẽ gi&uacute;p khởi động v&agrave; tắt m&aacute;y, bật v&agrave; tắt t&iacute;nh năng chống trộm v&agrave; mở cốp từ xa.</p>

<p><img alt="" height="601" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-8.png" width="800" /></p>

<p>C&aacute;c n&uacute;t bấm tr&ecirc;n tay l&aacute;i. Xe c&oacute; hai chế độ chạy Eco v&agrave; Sport, trong đ&oacute; Eco bị giới hạn ở 50 km/h, v&agrave; tốc độ tối đa 90 kmh chỉ đạt được nếu chạy Sport.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-2.jpg" width="800" /></p>

<p>Phanh đĩa cho cả hai b&aacute;nh. Kẹp phanh Nissin, phanh ABS Continental. Phuộc giảm x&oacute;c ống lồng, giảm chấn thuỷ lực của Showa ở ph&iacute;a trước v&agrave; l&ograve; xo giảm chấn thuỷ lực ph&iacute;a sau.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-3.jpg" width="800" /></p>

<p>Động cơ điện đặt giữa xe, c&oacute; c&ocirc;ng suất tối đa 7.100 W (9,5 m&atilde; lực), tuy vậy c&ocirc;ng suất danh định chỉ l&agrave; 3.500W (4,7 m&atilde; lực). Trong điều kiện chạy th&ocirc;ng thường, c&ocirc;ng suất sẽ chỉ ở mức 4,7 m&atilde; lực, khi l&ecirc;n tốc độ tối đa, vượt dốc xe sẽ d&ugrave;ng tới c&ocirc;ng suất tối đa.</p>

<p>Động cơ đặt giữa gi&uacute;p xe c&oacute; khả năng ph&acirc;n bổ trọng lượng c&acirc;n bằng hơn, điều vốn l&agrave; điểm yếu của những mẫu xe điện c&oacute; động cơ đặt ở trục b&aacute;nh xe ph&iacute;a sau.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-4.jpg" width="800" /></p>

<p>Truyền tải sức mạnh tới b&aacute;nh sau l&agrave; x&iacute;ch chứ kh&ocirc;ng phải d&acirc;y curoa như thường thấy tr&ecirc;n c&aacute;c mẫu xe ga chay xăng. X&iacute;ch bền hơn, &iacute;t nhạy cảm với điều kiện thời tiết, m&ocirc;i trường hơn so với curoa. Đồng thời, x&iacute;ch ồn hơn, cho cảm gi&aacute;c quen thuộc khi vận h&agrave;nh.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-5.jpg" width="800" /></p>

<p>Cung cấp năng lượng cho động cơ l&agrave; hai khối pin lithium dung lượng 49,6 Ah, tổng trọng lượng 19 kg, sạc đầy trong khoảng 5,5-6 giờ. Nếu vận h&agrave;nh đều đặn ở 30 km/h, qu&atilde;ng đường đi được l&agrave; 101 km.</p>

<p>Người d&ugrave;ng c&oacute; thể cắm sạc trực tiếp v&agrave;o cổng sạc trong cốp xe hoặc th&aacute;o rời hai pin để sạc. Xe chỉ hoạt động khi cắm đồng thời hai pin, mức ch&ecirc;nh lệch điện giữa hai pin kh&ocirc;ng qu&aacute; 15%.</p>

<p>V&igrave; chứa pin n&ecirc;n dung t&iacute;ch cốp c&ograve;n lại 17 l&iacute;t.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-6.jpg" width="800" /></p>

<p>Nh&agrave; sản xuất cho biết cả động cơ v&agrave; pin đều c&oacute; khả năng chống nước IP67, c&oacute; thể di chuyển li&ecirc;n tục ở nước s&acirc;u nửa m&eacute;t trong 30 ph&uacute;t.</p>

<p><img alt="" height="532" src="https://xedienbaonam.com/data/media/1550/images/xe-may-dien-vinfast-theon-7.jpg" width="800" /></p>

<p>Xe c&oacute; trọng lượng 146 kg khi lắp cả hai pin. Trải nghiệm thực tế cho thấy, cả ở Eco v&agrave; Sport, Theon đều tỏ ra ưu điểm tăng tốc nhanh của một mẫu xe điện. Tuy vậy, Eco giới hạn 50 km/h. Muốn l&ecirc;n tốc độ tối đa cần chuyển sang Sport.</p>

<p>V&igrave; truyền động bằng x&iacute;ch, n&ecirc;n ở ga đầu, xe kh&ocirc;ng bắn đi ngay m&agrave; c&oacute; khoảng hai nhịp bắt tốc, l&agrave;m quen v&agrave; lấy trớn x&iacute;ch. C&aacute;ch vận h&agrave;nh n&agrave;y cho cảm gi&aacute;c quen thuộc giống với xe xăng, thay v&igrave; kiểu kh&oacute; kiểm so&aacute;t của xe điện th&ocirc;ng thường.</p>
', N'146       ', N'24        ', N'200 x 80 x 125                ', N'1 lần sạc                     ', N'92%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (6, N'Vento', N'/Content/images/xe/Vento.jpg', 25000, 1, 5, 0, N'<p>Mang kiểu d&aacute;ng hướng tới kh&aacute;ch h&agrave;ng nữ, VinFast Vento c&oacute; gi&aacute; 56,35 triệu đồng&nbsp;nhưng d&ugrave;ng động cơ&nbsp;<a href="https://thanhnien.vn/cong-nghe/" rel="noopener noreferrer" target="_blank" title="công nghệ mới">c&ocirc;ng nghệ mới</a>, c&oacute; thể đạt tốc độ 80 km/giờ, di chuyển qu&atilde;ng đường 110 km sau mỗi lần sạc đầy pin.</p>

<p>Mẫu xe m&aacute;y điện thứ 8 được h&atilde;ng xe Việt tung ra thị trường, VinFast Vento hướng tới đối tượng kh&aacute;ch h&agrave;ng cao cấp n&ecirc;n c&aacute;c chi tiết tr&ecirc;n xe đều thiết kế chỉn chu, tỉ mỉ v&agrave; c&oacute; chất lượng.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Chi tiết xe máy điện VinFast Vento giá 56,35 triệu đồng - ảnh 1" width="920px" src="https://image.thanhnien.vn/w2048/Uploaded/2022/kpqkcwvo/2022_02_21/vinfast-vento-3-1232.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>VinFast Vento c&oacute; gi&aacute; hơn 56 triệu đồng tại Việt Nam</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Sau mẫu xe&nbsp;<a href="https://thanhnien.vn/vinfast-theon-co-toc-do-toi-da-90-km-gio-canh-tranh-honda-sh-post1272962.html" title="VinFast Theon có tốc độ tối đa 90 km/giờ, cạnh tranh Honda SH">Theon</a>&nbsp;c&oacute; kiểu d&aacute;ng nam t&iacute;nh, VinFast Vento l&agrave; chiếc xe điện cao cấp tiếp theo hướng tới kh&aacute;ch h&agrave;ng nữ. Kiểu d&aacute;ng thiết kế n&agrave;y được nhiều người cho rằng giống c&aacute;c d&ograve;ng xe Vespa, đi k&egrave;m với c&aacute;c m&agrave;u sơn tương đối điệu đ&agrave;.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Chi tiết xe máy điện VinFast Vento giá 56,35 triệu đồng - ảnh 2" src="https://image.thanhnien.vn/w2048/Uploaded/2022/kpqkcwvo/2022_02_21/vinfast-vento-4-2808.jpg" width="920px" /></td>
		</tr>
		<tr>
			<td>
			<p>Hệ thống chống b&oacute; cứng phanh ABS của Continental tr&ecirc;n VinFast Vento</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Ph&iacute;a trước đầu xe c&oacute; phần yếm xe rộng đặc trưng giống c&aacute;c d&ograve;ng xe tay ga d&agrave;nh cho nữ giới. Đ&egrave;n xi-nhan LED hiện đại, trong khi đ&egrave;n pha cũng l&agrave; dạng LED c&oacute; projector cao cấp.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Chi tiết xe máy điện VinFast Vento giá 56,35 triệu đồng - ảnh 3" src="https://image.thanhnien.vn/w2048/Uploaded/2022/kpqkcwvo/2022_02_21/vinfast-vento-6-5354.jpg" width="920px"/></td>
		</tr>
		<tr>
			<td>
			<p>VinFast Vento thiết kế hướng tới kh&aacute;ch h&agrave;ng nữ, c&oacute; kiểu d&aacute;ng điệu đ&agrave;</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Phần đu&ocirc;i xe sử dụng to&agrave;n bộ đ&egrave;n LED với đ&egrave;n xi-nhan đặt tr&ecirc;n cao, c&ograve;n phần đ&egrave;n hiển thị th&ocirc;ng thường bố tr&iacute; đặt dọc, nổi bật v&agrave;o ban đ&ecirc;m. Ngo&agrave;i ra, tay nắm ph&iacute;a sau thiết kế t&aacute;ch rời lạ mắt.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Chi tiết xe máy điện VinFast Vento giá 56,35 triệu đồng - ảnh 4" src="https://image.thanhnien.vn/w2048/Uploaded/2022/kpqkcwvo/2022_02_21/vinfast-vento-11-8910.jpg" width="920px"/></td>
		</tr>
		<tr>
			<td>
			<p>Phần tay nắm ph&iacute;a sau xe c&oacute; thiết kế tr&ocirc;ng lạ mắt</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Kh&aacute;c với c&aacute;c d&ograve;ng xe m&aacute;y điện phổ th&ocirc;ng, VinFast Vento l&agrave; mẫu xe đầu ti&ecirc;n của h&atilde;ng xe Việt sử dụng động cơ đặt b&ecirc;n (Side Motor) thế hệ mới. Ưu điểm của động cơ đặt b&ecirc;n l&agrave; m&ocirc;-men xoắn kh&ocirc;ng bị t&aacute;c động trực tiếp l&ecirc;n b&aacute;nh xe, tăng tối đa khả năng vận h&agrave;nh. Chi ph&iacute; sản xuất cho loại động cơ n&agrave;y cũng cao hơn so với động cơ đặt ở b&aacute;nh xe (Hub Motor) th&ocirc;ng thường.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Chi tiết xe máy điện VinFast Vento giá 56,35 triệu đồng - ảnh 5" src="https://image.thanhnien.vn/w2048/Uploaded/2022/kpqkcwvo/2022_02_21/vinfast-vento-5-8792.jpg" width="920px"/></td>
		</tr>
		<tr>
			<td>
			<p>To&agrave;n bộ đ&egrave;n tr&ecirc;n VinFast Vento đều l&agrave; dạng LED</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Nhờ động cơ c&ocirc;ng nghệ mới, VinFast Vento sở hữu khả năng vận h&agrave;nh mạnh mẽ với c&ocirc;ng suất tối đa 4.000 watt (4kW) v&agrave; tốc độ di chuyển cao nhất đạt 80 km/giờ. Hệ thống pin chạy song song Lithium - Ion thế hệ mới giống Theon, đảm bảo cho xe c&oacute; thể di chuyển qu&atilde;ng đường 110 km sau mỗi lần sạc đầy pin ở điều kiện ti&ecirc;u chuẩn. Mức n&agrave;y tương đương với d&ograve;ng xe tay ga chạy xăng khi đổ đầy b&igrave;nh nhi&ecirc;n liệu.</p>
', N'117       ', N'17        ', N'186 x 70 x 110                ', N'0.6 lần sạc                   ', N'95%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (7, N'Feliz', N'/Content/images/xe/Feliz.jpg', 30000, 1, 5, 0, N'<h3>Thiết kế xe m&aacute;y điện VinFast Feliz</h3>

<ul>
	<li>K&iacute;ch thước</li>
</ul>

<p><a href="https://shop.vinfastauto.com/vn_vi/bike-feliz.html" onclick="gtag_custom_link(this);">Xe m&aacute;y điện VinFast Feliz</a>&nbsp;ph&ugrave; hợp với v&oacute;c d&aacute;ng người Việt Nam v&igrave; c&oacute; k&iacute;ch thước tầm trung. Chiều d&agrave;i xe đạt 1.912 mm, rộng 693 mm v&agrave; cao 1.128 mm. Đường trục cơ sở l&agrave; 1.320 mm, y&ecirc;n xe cao 770 mm v&agrave; khoảng s&aacute;ng gầm đạt độ cao 145mm. Với c&aacute;c trang bị k&iacute;ch thước thiết kế n&agrave;y, VinFast Feliz tạo cảm gi&aacute;c l&aacute;i thoải m&aacute;i, vững chắc, đặc biệt khi di chuyển tr&ecirc;n c&aacute;c con đường nhiều ổ g&agrave;.</p>

<ul>
	<li>Kiểu d&aacute;ng</li>
</ul>

<p>Tổng thể kiểu d&aacute;ng xe VinFast Feliz kh&aacute; đơn giản v&agrave; h&agrave;i h&ograve;a, gợi cảm gi&aacute;c gần gũi với c&aacute;c mẫu xe ga truyền thống. Thiết kế thanh lịch, đường n&eacute;t mềm mại đ&atilde; gi&uacute;p VinFast Feliz dễ d&agrave;ng ghi điểm với ph&aacute;i nữ.</p>

<p><img alt="Thiết kế xe máy điện VinFast Feliz đơn giản" src="https://storage.googleapis.com/vinfast-data-01/kham-pha-thong-so-ky-thuat-xe-vinfast-feliz-chi-tiet-2_1.jpg" /></p>

<p>&nbsp;</p>

<p>Tổng thể kiểu d&aacute;ng xe VinFast Feliz kh&aacute; đơn giản v&agrave; h&agrave;i h&ograve;a&nbsp;</p>

<ul>
	<li>M&agrave;u sắc</li>
</ul>

<p>Xe m&aacute;y điện Feliz đem đến 4 t&ugrave;y chọn m&agrave;u sắc đa dạng, tinh tế bao gồm: xanh r&ecirc;u, đỏ, trắng v&agrave; đen, ph&ugrave; hợp cho cả kh&aacute;ch h&agrave;ng nam v&agrave; nữ.&nbsp;</p>

<ul>
	<li>Hệ thống đ&egrave;n</li>
</ul>

<p>VinFast đ&atilde; rất đầu tư trang bị hệ thống đ&egrave;n chiếu s&aacute;ng Full LED v&agrave; đ&egrave;n t&iacute;n hiệu cao cấp, đạt ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u ECE cho d&ograve;ng xe Feliz. Theo đ&oacute;, phần đầu xe l&agrave; hệ thống đ&egrave;n pha LED projector 3 b&oacute;ng tạo điểm nhấn sang trọng. Ph&iacute;a sau l&agrave; đ&egrave;n hậu v&agrave; xi-nhan loại LED cho khả năng chiếu s&aacute;ng v&agrave; th&ocirc;ng b&aacute;o ổn định.</p>

<ul>
	<li>Cốp xe</li>
</ul>

<p>Với đặc điểm l&agrave; mẫu thiết kế ưu ti&ecirc;n d&agrave;nh cho nữ giới n&ecirc;n VinFast Feliz sở hữu cốp sau cực rộng, đạt thể t&iacute;ch 20 lit. K&iacute;ch thước n&agrave;y đủ để chứa 2 chiếc mũ bảo hiểm nửa đầu v&agrave; chứa nhiều đồ d&ugrave;ng, thuận tiện khi di chuyển tr&ecirc;n mọi h&agrave;nh tr&igrave;nh. Ph&iacute;a trước đầu xe c&ograve;n c&oacute; một phần cốp nhỏ c&oacute; thể để một số vật dụng nhỏ như điện thoại, ch&igrave;a kh&oacute;a hay bao tay.</p>

<p><img alt="Các thông số kỹ thuật cốp xe máy điện VinFast Feliz" src="https://storage.googleapis.com/vinfast-data-01/kham-pha-thong-so-ky-thuat-xe-vinfast-feliz-chi-tiet-3_1.jpg" /></p>

<p>&nbsp;</p>

<p>VinFast Feliz sở hữu cốp sau cực rộng, đạt thể t&iacute;ch 20 lit</p>

<h3>2.2. Đ&aacute;nh gi&aacute; th&ocirc;ng số động cơ VinFast Feliz</h3>

<ul>
	<li>Loại động cơ</li>
</ul>

<p>Để đảm bảo sức mạnh hoạt động cho động cơ, th&ocirc;ng số kỹ thuật xe VinFast Feliz c&oacute; hệ thống động cơ c&ocirc;ng suất trung b&igrave;nh 1200W v&agrave; c&ocirc;ng suất cao đạt 2.250W. Đ&acirc;y l&agrave; loại động cơ một chiều kh&ocirc;ng chổi than (BLDC), cho ph&eacute;p tối ưu vận tốc tối đa l&ecirc;n tới 60km/giờ.&nbsp;</p>

<p>Đi k&egrave;m sức mạnh động cơ l&agrave; chuẩn chống nước IP67, đảm bảo hoạt động xe trong điều kiện trời mưa, hoặc đường ngập nước 0.5m trong khoảng thời gian 30 ph&uacute;t. VinFast Feliz l&agrave; một trong những mẫu xe m&aacute;y điện VinFast bền đẹp, chống nước ưu việt.</p>

<p>Hệ thống động cơ BLDC tr&ecirc;n xe Feliz được t&iacute;ch hợp tr&ecirc;n v&agrave;nh b&aacute;nh sau, kh&ocirc;ng cần sử dụng hệ thống truyền động. Thiết kế n&agrave;y sẽ gi&uacute;p tối ưu k&iacute;ch thước v&agrave; tăng hiệu suất hoạt động&nbsp;cho to&agrave;n xe, kh&ocirc;ng g&acirc;y tiếng ồn, hoạt động an to&agrave;n v&agrave; bền bỉ.</p>

<p><img alt="Review xe máy điện VinFast Feliz có hệ thống động cơ BLDC" src="https://storage.googleapis.com/vinfast-data-01/kham-pha-thong-so-ky-thuat-xe-vinfast-feliz-chi-tiet-4.jpg" /></p>

<p>&nbsp;</p>

<p>VinFast Feliz được t&iacute;ch hợp hệ thống động cơ BLDC tr&ecirc;n v&agrave;nh b&aacute;nh sau</p>

<ul>
	<li>Pin v&agrave; ắc quy</li>
</ul>

<p>Hệ thống ắc quy được sử dụng tr&ecirc;n xe m&aacute;y điện VinFast Feliz l&agrave; loại&nbsp;<a href="https://vinfastauto.com/vn_vi/tim-hieu-ac-quy-chi-axit-cau-tao-cach-hoat-dong-va-su-dung-hieu-qua" onclick="gtag_custom_link(this);" target="_blank">ắc quy ch&igrave;</a>, đạt dung lượng 20 - 22Ah, tổng trọng lượng trung b&igrave;nh đạt 41kg (6 b&igrave;nh nối tiếp, mỗi b&igrave;nh 6,85kg/b&igrave;nh). Với dung lượng tr&ecirc;n, cần 12 giờ để sạc đầy pin từ 0% - 100%. Vậy Vinfast Feliz đi được bao nhi&ecirc;u km? Bạn c&oacute; thể y&ecirc;n t&acirc;m di chuyển qu&atilde;ng đường l&ecirc;n đến 90 km chỉ với 1 lần sạc khi đi với tốc độ 30km/h.</p>

<ul>
	<li>Vận tốc</li>
</ul>

<p>Với trang bị động cơ c&ocirc;ng suất tối đa 2.250 W (3 m&atilde; lực) v&agrave; c&ocirc;ng suất danh định 1.200W (1,6 m&atilde; lực) cho ph&eacute;p xe đạt tốc độ tối đa l&ecirc;n đến 60 km/h.&nbsp;</p>

<h3>2.3. Th&ocirc;ng số kỹ thuật VinFast Feliz: trang bị an to&agrave;n</h3>

<ul>
	<li>Chế độ l&aacute;i&nbsp;</li>
</ul>

<p>Xe m&aacute;y điện VinFast Feliz c&oacute; 2 chế độ&nbsp;<a href="https://vinfastauto.com/vn_vi/che-do-eco-tren-xe-may-dien-vinfast-gia-toc-muot-ma-tiet-kiem-dien" onclick="gtag_custom_link(this);" target="_blank">l&aacute;i th&ocirc;ng minh l&agrave; Eco</a>&nbsp;v&agrave;&nbsp;<a href="https://vinfastauto.com/vn_vi/huong-dan-su-dung-che-do-sport-tren-xe-may-dien-vinfast" onclick="gtag_custom_link(this);" target="_blank">l&aacute;i th&ocirc;ng minh Sport</a>, dễ d&agrave;ng điều chỉnh linh hoạt tr&ecirc;n mọi địa h&igrave;nh với vận tốc cao&nbsp;c&oacute; thể đạt 60km/h.</p>

<ul>
	<li>Giảm x&oacute;c</li>
</ul>

<p>Giảm x&oacute;c trước của xe c&oacute; dạng ống lồng, giảm chấn thủy lực. Ph&iacute;a sau l&agrave; giảm x&oacute;c l&ograve; xo trụ đơn. Hệ thống giảm x&oacute;c Kaifa n&agrave;y cho ph&eacute;p xe di chuyển &ecirc;m &aacute;i tr&ecirc;n nhiều dạng địa h&igrave;nh.&nbsp;</p>

<ul>
	<li>Hệ thống phanh</li>
</ul>

<p>VinFast Feliz được trang bị hệ thống phanh Hengtong với phanh đĩa b&aacute;nh trước v&agrave; phanh tang trống ph&iacute;a sau. Đi k&egrave;m c&ograve;n c&oacute; cặp v&agrave;nh k&iacute;ch thước 14 inch v&agrave; lốp xe trước 90/90, lốp xe sau 120/70, đảm bảo an to&agrave;n.</p>

<ul>
	<li>Ổ kh&oacute;a</li>
</ul>

<p>Xe sử dụng ổ kh&oacute;a cơ th&ocirc;ng minh c&oacute; chức năng t&igrave;m xe nhanh từ xa trong b&atilde;i để xe, v&ocirc; c&ugrave;ng thuận tiện v&agrave; dễ d&agrave;ng</p>

<p><img alt="xe máy điện VinFast Feliz đảm bảo an toàn" src="https://storage.googleapis.com/vinfast-data-01/kham-pha-thong-so-ky-thuat-xe-vinfast-feliz-chi-tiet-2_2.jpg" /></p>

<p>&nbsp;</p>

<p>Hệ thống phanh Hengtong với phanh đĩa b&aacute;nh trước v&agrave; phanh tang trống ph&iacute;a sau&nbsp;</p>
', N'126       ', N'25        ', N'191 x 70 x 113                ', N'0.5 lần sạc                   ', N'93%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (8, N'Raider', N'/Content/images/xe/raider.png', 20000, 1, 3, 0, N'<p>Suzuki Raider R150, mẫu xe hyper-underbone quen thuộc tại Việt Nam, được bổ sung th&ecirc;m 3 phi&ecirc;n bản m&agrave;u sắc mới với t&ecirc;n gọi Raider 2021. Suzuki Việt Nam vốn trung th&agrave;nh với phong c&aacute;ch thiết kế đơn giản, tuy nhi&ecirc;n Raider R150 2021 lại c&oacute; bộ tem kh&aacute; nổi bật, trẻ trung. Đại diện Suzuki Việt Nam cho biết thay đổi n&agrave;y gi&uacute;p xe ph&ugrave; hợp hơn với thị hiếu của kh&aacute;ch h&agrave;ng.&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/9_Raider2021_zing(1).jpg" width="800" /></p>

<p>Phần tem b&ecirc;n h&ocirc;ng Raider R150 2021 tr&ocirc;ng ấn tượng hơn nhiều so với c&aacute;c phi&ecirc;n bản hiện tại, d&ograve;ng chữ Suzuki chạy dọc th&acirc;n xe được thay đổi bằng chữ Raider viết ph&aacute; c&aacute;ch.&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/1_Raider2021_zing.jpg" width="800" /></p>

<p>Phi&ecirc;n bản xanh/đen/cam c&oacute; phần đầu nổi bật với tấm nhựa ốp được sơn m&agrave;u xanh dương, 2 b&ecirc;n c&oacute; th&ecirc;m d&atilde;y decal xanh/đỏ tr&ocirc;ng kh&aacute; thể thao. Xe vẫn c&oacute; đ&egrave;n chiếu s&aacute;ng ch&iacute;nh dạng LED 2 tầng, đ&egrave;n b&aacute;o rẽ đặt nh&ocirc; ra v&agrave; d&ugrave;ng b&oacute;ng halogen.&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/2_Raider2021_zing.jpg" width="800" /></p>

<p>Thiết kế y&ecirc;n của Raider R150 được người d&ugrave;ng đ&aacute;nh gi&aacute; cho cảm gi&aacute;c ngồi kh&ocirc;ng bị trượt, tuy nhi&ecirc;n c&oacute; đ&ocirc;i ch&uacute;t kh&oacute; chịu nếu phải ngồi l&acirc;u. L&agrave; một mẫu xe hyper-underbone n&ecirc;n y&ecirc;n xe c&oacute; chiều cao kh&aacute; thấp, đạt mức 765 mm.&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/4_Raider2021_zing.jpg" width="800" /></p>

<p>So với mẫu xe Suzuki Satria được nhập khẩu tư nh&acirc;n, Raider R150 c&oacute; phần thua thiệt về vị tr&iacute; đặt đ&egrave;n b&aacute;o rẽ nh&ocirc; ra b&ecirc;n ngo&agrave;i. Đại diện Suzuki Việt Nam cho biết thiết kế n&agrave;y l&agrave; quy định bắt buộc khi đăng kiểm xe tại Việt Nam.&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/5_Raider2021_zing.jpg" width="800" /></p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/6_Raider2021_zing.jpg" width="800" /></p>

<p>K&iacute;ch thước lốp của Raider R150 vẫn được giữ nguy&ecirc;n v&agrave; đi k&egrave;m với bộ m&acirc;m 17 inch. Lốp trước c&oacute; k&iacute;ch thước 70/90, lốp sau l&agrave; 80/90. K&iacute;ch thước lốp nhỏ gi&uacute;p xe tăng tốc nhanh khi chạy tr&ecirc;n đường thẳng, tuy nhi&ecirc;n độ b&aacute;m đường khi v&agrave;o cua kh&aacute; thấp.&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/7_Raider2021_zing.jpg" width="800" /></p>

<p>Raider R150 2021 được trang bị động cơ DOHC, dung t&iacute;ch 147,3 cc, l&agrave;m m&aacute;t bằng dung dịch. Khối động cơ n&agrave;y sản sinh c&ocirc;ng suất 18,2 m&atilde; lực tại 10.000 v&ograve;ng/ph&uacute;t, m&ocirc;-men xoắn cực đại 13,8 Nm tại 8.500 v&ograve;ng/ph&uacute;t. T&iacute;nh đến thời điểm hiện tại, Raider R150 l&agrave; mẫu xe c&ocirc;n tay 150 cc cho khả năng tăng tốc tốt nhất nhờ tỉ số c&ocirc;ng suất/khối lượng cao hơn những đối thủ như Honda Winner X, Yamaha Exciter 150...&nbsp;</p>

<p><img alt="" height="534" src="https://xebaonam.com/data/media/1155/images/11_Raider2021_zing.jpg" width="800" /></p>
', N'109       ', N'4         ', N'196 x 68 x 98                 ', N'2.4l                          ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (9, N'GSX150 Bandit', N'/Content/images/xe/bandit.png', 25000, 1, 3, 1, N'<h2><strong>Ngoại thất</strong></h2>

<p><em>Suzuki GSX-150 Bandit</em>&nbsp;sở hữu ngoại h&igrave;nh nhỏ gọn, c&acirc;n đối với k&iacute;ch thước tổng thể l&agrave; 2.000 x 745 x 1.035 mm, với&nbsp; chiều cao y&ecirc;n l&agrave; 790mm v&agrave; trọng lượng kh&ocirc; ở mức 135kg. Theo nhiều nhận định của c&aacute;c tạp ch&iacute; nước ngo&agrave;i, v&oacute;c d&aacute;ng của xe hơi nhỏ. Tuy nhi&ecirc;n, với h&igrave;nh thể của người Việt Nam, đ&acirc;y thực sự l&agrave; sự lựa chọn l&yacute; tưởng cho đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng.&nbsp;</p>

<p><img alt="ngoai-that-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn" height="878" sizes="(max-width: 800px) 100vw, 800px" src="https://muaxegiatot.vn/wp-content/uploads/2019/06/ngoai-that-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn.jpg" title="Suzuki GSX-150 Bandit 2022: thông số, giá khuyến mãi, trả góp" width="800" /></p>

<hr />
<p><strong>K&Eacute;O XUỐNG ĐỂ XEM TIẾP NỘI DUNG</strong></p>

<p>Khi lướt qua mặt trước, hẳn nhiều người sẽ lầm tưởng rằng đ&acirc;y l&agrave; chiếc Suzuki Raider khi c&oacute; qu&aacute; nhiều điểm tương đồng. Tuy nhi&ecirc;n, nếu quan s&aacute;t kỹ ch&uacute;ng ta sẽ dễ d&agrave;ng nhận ra một số điểm kh&aacute;c biệt như phần ốp nhựa của Bandit d&agrave;y dặn hơn nhiều, to&aacute;t l&ecirc;n vẻ Naked-bike r&otilde; r&agrave;ng, trong khi chi tiết n&agrave;y ở Raider th&igrave; gọn g&agrave;ng v&agrave; năng động hơn.&nbsp;</p>

<p>Ngo&agrave;i ra, Bandit sở hữu ghi đ&ocirc;ng cao, độ rộng vừa phải mang tới g&oacute;c l&aacute;i cực kỳ rộng. Qua đ&oacute;, xe c&oacute; thể vận h&agrave;nh một c&aacute;ch đặc biệt v&agrave; hiệu quả tại những đ&ocirc; thị lớn như H&agrave; Nội hay TP Hồ Ch&iacute; Minh.&nbsp;</p>

<p><img alt="than-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn" height="600" sizes="(max-width: 800px) 100vw, 800px" src="https://muaxegiatot.vn/wp-content/uploads/2019/06/than-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn.jpg" title="Suzuki GSX-150 Bandit 2022: thông số, giá khuyến mãi, trả góp" width="800" /></p>

<p>Nh&igrave;n ngang, chiếc Naked Bike của Suzuki rất h&uacute;t mắt nhờ lối thiết kế cấu tr&uacute;c kim cương c&ugrave;ng điểm nổi bật l&agrave; phần yếm hai b&ecirc;n (vai b&igrave;nh xăng) tr&ocirc;ng v&ocirc; c&ugrave;ng khỏe khoắn. Ph&iacute;a dưới l&agrave; bộ m&acirc;m thể thao đi k&egrave;m bộ lốp c&oacute; th&ocirc;ng số 90/80-17 ở ph&iacute;a trước v&agrave; 130/70-17 ở ph&iacute;a sau.&nbsp;</p>

<p>Th&acirc;n xe &amp; đu&ocirc;i xe c&oacute; những đặc điểm cho thấy sự kh&aacute;c biệt r&otilde; r&agrave;ng nhất giữa GSX150 Bandit v&agrave; GSX-S150. Ở chi tiết n&agrave;y, Suzuki GSX-150 Bandit thể hiện sự ưu việt hơn kh&aacute; nhiều khi so s&aacute;nh với mẫu xe anh em của m&igrave;nh.&nbsp;</p>

<p><img alt="duoi-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn" height="694" sizes="(max-width: 800px) 100vw, 800px" src="https://muaxegiatot.vn/wp-content/uploads/2019/06/duoi-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn.jpg" title="Suzuki GSX-150 Bandit 2022: thông số, giá khuyến mãi, trả góp" width="800" /></p>

<p>Cụ thể, phần y&ecirc;n của xe được thiết kế nối liền với nhau thay v&igrave; t&aacute;ch biệt như người anh em của m&igrave;nh. Qua đ&oacute;, Bandit c&oacute; thể mang tới sự thoải m&aacute;i cho người ngồi cả ph&iacute;a trước lẫn ph&iacute;a sau. Sự tinh chỉnh n&agrave;y cho thấy hiệu quả rất cao, nhất l&agrave; trong những chuyến đi chơi xa, h&agrave;nh tr&igrave;nh d&agrave;i.&nbsp;</p>

<h2><strong>Vận h&agrave;nh</strong></h2>

<p><strong>Suzuki GSX-150 Bandit</strong>&nbsp;trang bị khối động cơ 147cc, xy-lanh đơn, nạp xả v&agrave; hai trục cam (m&aacute;y DOHC), phun xăng điện tử v&agrave; l&agrave;m m&aacute;t bằng dung dịch, cho c&ocirc;ng suất tối đa 18,9 m&atilde; lực tại v&ograve;ng tua m&aacute;y 10.500 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc;-men xoắn cực đại 14Nm tại v&ograve;ng tua 9.000 v&ograve;ng/ph&uacute;t. Kết hợp với truyền động c&ocirc;n tay 6 cấp số thiết kế với dải rộng.&nbsp;</p>

<p><img alt="gia-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn" height="783" sizes="(max-width: 800px) 100vw, 800px" src="https://muaxegiatot.vn/wp-content/uploads/2019/06/gia-xe-suzuki-gsx-150-bandit-2019-muaxegiatot-vn.jpg" title="Suzuki GSX-150 Bandit 2022: thông số, giá khuyến mãi, trả góp" width="800" /></p>

<p>Sở dĩ Suzuki kh&ocirc;ng cần phải thay đổi qu&aacute; nhiều bởi đ&acirc;y đ&atilde; l&agrave; động cơ mạnh mẽ bậc nhất ph&acirc;n kh&uacute;c hiện nay, những đối thủ đến từ c&aacute;c thương hiệu &ldquo;sừng sỏ &rdquo; như&nbsp;<a href="https://muaxegiatot.vn/gia-xe-may-honda.html" rel="noopener noreferrer" target="_blank" title="giá xe máy honda">Honda</a>&nbsp;hay&nbsp;<a href="https://muaxegiatot.vn/gia-xe-may-yamaha.html" rel="noopener noreferrer" target="_blank" title="giá xe máy yamaha">Yamaha</a>&nbsp;cũng kh&oacute; l&ograve;ng theo kịp.&nbsp;</p>

<p>Hầu hết c&aacute;c kh&aacute;ch h&agrave;ng trải nghiệm qua chiếc c&ocirc;n tay n&agrave;y đều đ&aacute;nh gi&aacute; GSX-150 Bandit mang tới cho họ sự ưng &yacute; rất cao. Xe vận h&agrave;nh mạnh mẽ, linh hoạt v&agrave; c&oacute; độ bốc ấn tượng. Những hiện tượng gắt hay sốc ho&agrave;n to&agrave;n kh&ocirc;ng xảy ra.&nbsp;</p>
', N'135       ', N'5         ', N'200 x 75 x 103                ', N'2.5l                          ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (10, N'Satria', N'/Content/images/xe/satria.png', 30000, 1, 3, 1, N'<p><strong><a href="https://motomaluc.com/suzuki-satria-f150-nhap-khau-p81.html">Suzuki Satria</a></strong>&nbsp;được M&atilde; Lực nhập khẩu trực tiếp từ Indo với gi&aacute; cả rất ưu đ&atilde;i. Satria F150 2019 l&agrave; mẫu&nbsp;underbone hiệu năng cao được giới trẻ rất y&ecirc;u th&iacute;ch, do sở hữu trong m&igrave;nh trọng lượng nhẹ c&ugrave;ng khối động cơ mạnh cho gia tốc vượt trội. Ở phi&ecirc;n bản 2019, Suzuki tập trung chủ yếu v&agrave;o phần ngoại h&igrave;nh của chiếc xe, cập nhật th&ecirc;m m&agrave;u sắc v&agrave; tem mới c&ograve;n về động cơ, c&aacute;c th&ocirc;ng số vẫn giữ nguy&ecirc;n.</p>

<p>&nbsp;</p>

<p><img alt="satria-2018-fitur" src="https://motomaluc.com/vnt_upload/product/07_2019/satria-2018-fitur.jpg" width="920px"/></p>

<p><strong><a href="https://motomaluc.com/suzuki-satria-f150-nhap-khau-p81.html">Suzuki Satria F150</a></strong>&nbsp;sở hữu khối động cơ DOHC, 1 xy lanh, dung t&iacute;ch 147,3 cc, 4 van, l&agrave;m m&aacute;t bằng dung dịch. Khối động cơ n&agrave;y cho c&ocirc;ng suất tối đa 18,23 m&atilde; lực ở v&ograve;ng tua 10.000 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc; men xoắn cực đại đạt 13,8 Nm ở v&ograve;ng tua 8.500 v&ograve;ng/ph&uacute;t. Như vậy với c&ocirc;ng suất n&agrave;y của Satria F150 FI c&oacute; thể n&oacute;i l&agrave; mức cao nhất trong ph&acirc;n kh&uacute;c underbone 150cc hiện nay, cao hơn cả Yamaha Exciter 150, Honda Sonic 150R hay Winner 150. XE sử dụng hộp số ly hợp ướt c&ocirc;n tay 6 cấp độ, dẫn động trực tiếp bằng d&acirc;y x&iacute;ch, đạt vận tốc từ 0-100 km/h trong 6.9 gi&acirc;y trước khi đạt tốc độ tối đa 142 km/h.&nbsp;</p>

<p><img alt="suzuki-satria-f150" src="https://motomaluc.com/vnt_upload/product/07_2019/suzuki-satria-f150.png" /></p>

<p>&nbsp;</p>

<p>Suzuki&nbsp;<strong><a href="https://motomaluc.com/suzuki-satria-f150-nhap-khau-p81.html">Satria F150</a></strong>&nbsp;sở hữu k&iacute;ch thước tổng thể d&agrave;i 1.960 x rộng 675 x cao 980 mm, chiều d&agrave;i giữa hai trục 1.280 mm. B&ecirc;n cạnh đ&oacute; chiều cao y&ecirc;n đạt ở mức 765 mm, chiều cao gầm 150 mm, trọng lượng bản th&acirc;n 109 kg. Dung t&iacute;ch b&igrave;nh xăng 4L v&agrave; dung t&iacute;ch nhớt 1,3L. Th&ocirc;ng v&agrave;nh v&agrave; lớp lần lượt l&agrave;&nbsp;: V&agrave;nh 17&quot;, lốp trước 70/90 &ndash; 38P, sau 80/90 &ndash; 50P<br />
&nbsp;</p>

<p><img alt="Suzuki Satria F150 2019" src="https://motomaluc.com/stories/images/xe%202018/suzuki-satria-f150/suzuki%20satria%20f150%20(1).jpg" width="920px"/></p>

<p>Suzuki Satria&nbsp;<strong><a href="https://motomaluc.com/suzuki-satria-f150-nhap-khau-p81.html">F150 FI 2019</a></strong>&nbsp;nổi bật với cụm đ&egrave;n pha LED, d&agrave;n nhựa trước, ống xả gọn g&agrave;ng. Xe c&oacute; th&ecirc;m một hộc chứa đồ nhỏ ở giữa yếm. K&eacute;t nước l&agrave;m m&aacute;t mới, c&oacute; k&iacute;ch thước lớn nhất trong những mẫu xe c&ocirc;n tay cỡ nhỏ c&ugrave;ng ph&acirc;n kh&uacute;c.&nbsp;</p>

<p><img alt="Suzuki Satria F150 2018" src="https://motomaluc.com/stories/images/xe%202018/suzuki-satria-f150/suzuki%20satria%20f150%20(2).jpg" width="920px"/></p>

<p>Satria F150 Fi 2017 vẫn sử dụng phuộc trước dạng ống lồng v&agrave; monoshock cho giảm x&oacute;c sau. Hệ thống phanh đĩa trang bị tr&ecirc;n cả b&aacute;nh trước/sau.</p>

<p><img alt="Suzuki Satria F150 2019" src="https://motomaluc.com/stories/images/xe%202018/suzuki-satria-f150/suzuki%20satria%20f150%20(3).jpg" width="920px" width="920px"/></p>

<p>&nbsp;</p>

', N'109       ', N'4.1       ', N'196 x 68 x 98                 ', N'3l                            ', N'91%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (11, N'Sirius', N'/Content/images/xe/Sirius.png', 15000, 1, 6, 1, N'<h2 dir="ltr"><strong>1. Đ&aacute;nh gi&aacute; chi tiết xe m&aacute;y Sirius 2022</strong></h2>

<p dir="ltr">Trước khi đi t&igrave;m hiểu gi&aacute; của chiếc&nbsp;<strong>xe m&aacute;y Sirius</strong>&nbsp;mới nhất năm 2022&nbsp;th&igrave; ch&uacute;ng t&ocirc;i muốn bạn biết r&otilde; hơn về d&ograve;ng xe m&aacute;y n&agrave;y. Nếu như bạn chưa biết th&igrave; Sirius ch&iacute;nh l&agrave; một trong những d&ograve;ng xe m&aacute;y đầu ti&ecirc;n đ&atilde; tạo n&ecirc;n t&ecirc;n tuổi của thương hiệu Yamaha tr&ecirc;n thị trường Việt Nam.</p>

<p dir="ltr">Mặc d&ugrave; nổi tiếng như vậy nhưng nhiều người vẫn tỏ ra băn khoăn, lo lắng kh&ocirc;ng biết xe Sirius c&oacute; thực sự tốt hay kh&ocirc;ng. Cũng như c&oacute; đ&aacute;ng tiền để mua về trải nghiệm hay kh&ocirc;ng.</p>

<p dir="ltr"><img alt="Xe máy Sirius có thực sự tốt hay không vẫn còn là một ẩn số lớn" src="https://bucket.nhanh.vn/store3/91034/artCT/99575/xe_may_sirius_co_thuc_su_tot_hay_khong_van_con_la_mot_an_so_lon.jpg" /></p>

<p dir="ltr"><em>Xe m&aacute;y Sirius c&oacute; thực sự tốt hay kh&ocirc;ng vẫn c&ograve;n l&agrave; một ẩn số lớn</em></p>

<p dir="ltr">Ch&iacute;nh v&igrave; thế m&agrave; ch&uacute;ng t&ocirc;i sẽ đ&aacute;nh gi&aacute; chi tiết v&agrave; cụ thể về d&ograve;ng xe m&aacute;y n&agrave;y. Để gi&uacute;p bạn c&oacute; được nhận định ch&iacute;nh x&aacute;c nhất trước khi đưa ra quyết định mua cuối c&ugrave;ng.&nbsp;</p>

<h3 dir="ltr"><strong>1.1. Đ&ocirc;i n&eacute;t về d&ograve;ng xe m&aacute;y Yamaha Sirius</strong></h3>

<p dir="ltr">Như ch&uacute;ng t&ocirc;i cũng đ&atilde; chia sẻ ở tr&ecirc;n rồi th&igrave; Yamaha Sirius l&agrave; một trong những d&ograve;ng xe kh&aacute; l&acirc;u năm tr&ecirc;n thị trường Việt Nam. Ngay từ khi mới ra mắt th&igrave; sản phẩm n&agrave;y đ&atilde; được sự y&ecirc;u th&iacute;ch đ&ocirc;ng đảo từ ph&iacute;a người d&ugrave;ng. Bởi thiết kế nhỏ gọn, trẻ trung, năng động v&agrave; đặc biệt c&oacute; m&agrave;u sắc nh&atilde; nhặn ph&ugrave; hợp với mọi đối tượng.&nbsp;</p>

<p dir="ltr"><img alt="Thông tin cơ bản về dòng xe máy Yamaha Sirius" src="https://bucket.nhanh.vn/store3/91034/artCT/99575/thong_tin_co_ban_ve_dong_xe_may_yamaha_sirius.jpg" /></p>

<p dir="ltr"><em>Th&ocirc;ng tin cơ bản về d&ograve;ng xe m&aacute;y Yamaha Sirius</em></p>

<p dir="ltr">Chưa dừng lại ở đ&oacute; m&agrave; nhờ sự cải tiến vượt trội trong những năm qua th&igrave;&nbsp;<strong>xe m&aacute;y Sirius</strong>&nbsp;2022&nbsp;đ&atilde; trở lại mang một l&agrave;n s&oacute;ng mới, đem đến cho người d&ugrave;ng sự trải nghiệm ấn tượng v&agrave; mới mẻ.</p>

<p dir="ltr">C&oacute; thể n&oacute;i rằng với c&aacute;c t&iacute;n đồ đam m&ecirc; xe c&ocirc;n tay th&igrave; xe m&aacute;y Yamaha Sirius l&agrave; sự lựa chọn th&iacute;ch hợp nhất. Do đ&oacute; bạn kh&ocirc;ng thể n&agrave;o bỏ qua được mẫu xe chất lượng mang phong c&aacute;ch thể thao đồng thời sở hữu nhiều t&iacute;nh năng nổi bật như thế rồi.</p>

<h3 dir="ltr"><strong>1.2. Thiết kế xe ấn tượng, trẻ trung</strong></h3>

<p dir="ltr">Khi đi mua xe m&aacute;y th&igrave; vẻ đẹp b&ecirc;n ngo&agrave;i lu&ocirc;n l&agrave; yếu tố quan trọng m&agrave; hầu hết người d&ugrave;ng n&agrave;o cũng để &yacute; v&agrave; quan t&acirc;m. Bởi sẽ gi&uacute;p cho bạn đ&aacute;nh gi&aacute; xem xe m&aacute;y Yamaha Sirius c&oacute; thực sự chất lượng v&agrave; tốt hay kh&ocirc;ng. Nhưng bạn cứ y&ecirc;n t&acirc;m đi bởi đ&acirc;y l&agrave; d&ograve;ng xe l&acirc;u năm v&agrave; c&oacute; t&ecirc;n tuổi tr&ecirc;n thị trường rồi.</p>

<p dir="ltr"><img alt="Sirius phiên bản năm 2021 có thiết kế trẻ trung toát lên sự khỏe khoắn" src="https://bucket.nhanh.vn/store3/91034/artCT/99575/sirius_phien_ban_nam_2021_co_thiet_ke_tre_trung_toat_len_su_khoe_khoan.jpg" /></p>

<p dir="ltr"><em>Sirius phi&ecirc;n bản năm 2022&nbsp;c&oacute; thiết kế trẻ trung to&aacute;t l&ecirc;n sự khỏe khoắn</em></p>

<p dir="ltr">Th&ocirc;ng thường c&aacute;c mẫu xe Sirius đều được h&atilde;ng sản xuất với kiểu d&aacute;ng đơn giản, kh&ocirc;ng qu&aacute; th&ocirc; kệch, cồng kềnh nhưng vẫn to&aacute;t l&ecirc;n sự hiện đại, trẻ trung. Hơn nữa xe c&ograve;n mang mang đậm phong c&aacute;ch thể thao tạo cho người d&ugrave;ng một cảm gi&aacute;c mạnh mẽ, khỏe khoắn.</p>

<p dir="ltr">Cũng ch&iacute;nh v&igrave; l&yacute; do đ&oacute; m&agrave;&nbsp;<strong>xe m&aacute;y Sirius</strong>&nbsp;2022&nbsp;được người d&ugrave;ng y&ecirc;u th&iacute;ch v&agrave; mong muốn sở hữu. V&igrave; ch&uacute;ng đ&aacute;p ứng được nhu cầu nhỏ nhặt nhất từ sở th&iacute;ch cho đến đam m&ecirc; của c&aacute;c kh&aacute;ch h&agrave;ng kh&aacute;c nhau.&nbsp;</p>

<h3 dir="ltr"><strong>1.3. K&iacute;ch thước của xe m&aacute;y</strong></h3>

<p dir="ltr">K&iacute;ch thước của&nbsp;<strong>xe m&aacute;y Sirius</strong>&nbsp;cũng l&agrave; vấn đề m&agrave; rất nhiều người quan t&acirc;m. Bởi nếu ph&ugrave; hợp th&igrave; người d&ugrave;ng cũng sẽ cảm thấy thoải m&aacute;i, dễ chịu chứ kh&ocirc;ng c&oacute; cảm gi&aacute;c bị g&ograve; b&oacute;.</p>

<p dir="ltr">Nếu x&eacute;t về tổng thể th&igrave; th&ocirc;ng số kỹ thuật của xe m&aacute;y Yamaha Sirius sẽ bao gồm chiều d&agrave;i x chiều rộng x chiều cao như sau: 1940 mm x 715 mm x 1075 mm.</p>

<p dir="ltr">Ngo&agrave;i ra th&igrave; độ cao y&ecirc;n của xe l&agrave; 775mm - kh&aacute; l&yacute; tưởng ph&ugrave; hợp với chiều cao trung b&igrave;nh của người Việt. V&agrave; khối lượng của chiếc xe Sirius sẽ trong khoảng tầm 100kg.&nbsp;</p>

<h3 dir="ltr"><strong>1.4. Động cơ của xe m&aacute;y&nbsp;</strong></h3>

<p dir="ltr">Phi&ecirc;n bản&nbsp;<strong>xe m&aacute;y Sirius</strong>&nbsp;2022&nbsp;chắc chắn sẽ c&oacute; nhiều bước cải tiến hơn nhằm đem đến sự trải nghiệm ấn tượng cho người d&ugrave;ng. Với phi&ecirc;n bản mới nhất n&agrave;y th&igrave; đều đ&atilde; &aacute;p dụng động cơ xi lanh đơn 4 th&igrave; c&oacute; dung t&iacute;ch l&ecirc;n đến 110cc v&agrave; l&agrave;m m&aacute;t bằng kh&ocirc;ng kh&iacute;. Ch&iacute;nh v&igrave; thế m&agrave; ph&ugrave; hợp với điều kiện giao th&ocirc;ng kh&aacute; phức tạp của Việt Nam.&nbsp;</p>

<p dir="ltr">Hơn nữa với c&ocirc;ng suất tối đa 8,8 m&atilde; lực tại tua m&aacute;y 8000 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc;-men xoắn cực đại đạt 9,0 Nm tại 5.500 v&ograve;ng/ph&uacute;t. Loại động cơ n&agrave;y được người người c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n về xe đ&aacute;nh gi&aacute; l&agrave; kh&aacute; bền bỉ đồng thời c&ograve;n đem đến cảm gi&aacute;c vận h&agrave;nh &ecirc;m &aacute;i chứ kh&ocirc;ng ph&aacute;t ra tiếng động lớn đ&acirc;u.&nbsp;</p>

<p dir="ltr"><img alt="Động cơ của xe Sirius 2021 có sự cải tiến vượt trội" src="https://bucket.nhanh.vn/store3/91034/artCT/99575/dong_co_cua_xe_sirius_2021_co_su_cai_tien_vuot_troi.jpg" /></p>

<p dir="ltr"><em>Động cơ của xe Sirius 2022&nbsp;c&oacute; sự cải tiến vượt trội</em></p>

<p dir="ltr">Chưa hết xe m&aacute;y Yamaha Sirius c&ograve;n sở hữu hệ thống phun xăng điện tử F1 hoặc chế h&ograve;a kh&iacute; m&agrave; c&aacute;c d&ograve;ng xe kh&aacute;c tr&ecirc;n thị trường kh&ocirc;ng c&oacute;. Điều n&agrave;y sẽ gi&uacute;p bạn tiết kiệm được tiền xăng xe hơn đấy.&nbsp;</p>

<h3 dir="ltr"><strong>1.5. C&aacute;c tiện &iacute;ch kh&aacute;c</strong></h3>

<p dir="ltr">B&ecirc;n cạnh việc n&acirc;ng cấp ngoại h&igrave;nh, thiết kế th&igrave;&nbsp;<strong>xe m&aacute;y Sirius</strong>&nbsp;2022&nbsp;c&ograve;n được nh&agrave; sản xuất trang bị th&ecirc;m c&aacute;c t&iacute;nh năng hiện đại, th&ocirc;ng minh m&agrave; kh&ocirc;ng phải d&ograve;ng xe n&agrave;o cũng c&oacute;. Đầu ti&ecirc;n phải kể đến m&acirc;m xe 17 inch được chế tạo từ hợp kim nh&ocirc;m đ&uacute;c nguy&ecirc;n khối. Với chất liệu n&agrave;y đ&atilde; mang đến gi&aacute; trị thẩm mỹ cao v&agrave; đặc biệt độ bền tốt tạo cho người d&ugrave;ng sự an to&agrave;n v&agrave; chắc chắn.&nbsp;</p>

<p dir="ltr">Ở ph&iacute;a đầu xe được trang bị b&oacute;ng Halogen H1 kết hợp th&ecirc;m với đ&egrave;n xi nhan được thiết kế một c&aacute;ch tỉ mỉ, kỹ lưỡng tạo n&ecirc;n sự ấn tượng độc đ&aacute;o. C&ograve;n ph&iacute;a đằng sau l&agrave; sự kết hợp giữa đ&egrave;n chiếu hậu theo kiểu dạng bức xạ s&aacute;ng tối v&agrave; đ&egrave;n xi nhan phản quang đa điện.</p>

<p dir="ltr">Cũng nhờ c&oacute; hệ thống đ&egrave;n như thế m&agrave; người d&ugrave;ng mới y&ecirc;n t&acirc;m trong qu&aacute; tr&igrave;nh di chuyển được. Bởi &aacute;nh s&aacute;ng mạnh mẽ gi&uacute;p chinh phục tất cả những địa h&igrave;nh hiểm trở, kh&oacute; khăn cả ng&agrave;y lẫn đ&ecirc;m.&nbsp;</p>
', N'96        ', N'3.8       ', N'194 x 72 x108                 ', N'1.8l                          ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (12, N'Grande', N'/Content/images/xe/grande.jpg', 25000, 1, 6, 0, N'<h2>T&iacute;nh năng xe&nbsp;Yamaha Grande Blue Core Hybrid đặc biệt</h2>

<p>Grande hybrid thế hệ mới c&oacute; k&iacute;ch thước 1.820 mm x 685 mm x 1.150 mm, chiều cao y&ecirc;n vẫn ở mức 790 mm, cao hơn 30 mm. Phi&ecirc;n bản ti&ecirc;u chuẩn nặng 100 kg, bản ABS nặng 101 kg, trong khi đ&oacute; mẫu xe cũ c&oacute; khối lượng 99 kg. Mẫu xe n&agrave;y vẫn thừa hưởng những đường n&eacute;t mềm mại từ thế hệ tiền nhiệm. Th&acirc;n xe bo tr&ograve;n, ph&ugrave; hợp với ph&aacute;i nữ.</p>

<p>Ngo&agrave;i ra tr&ecirc;n mẫu xe tay ga Yamaha Grande 2018 mới n&agrave;y, n&oacute; c&ograve;n được trang bị th&ecirc;m hệ thống ngắt động cơ tạm thời Stop &amp; Start System (SSS) cho khả năng tiết kiệm nhi&ecirc;n liệu tối đa v&agrave; t&iacute;nh năng khởi động với một n&uacute;t bấm (One-Push Start) &ecirc;m &aacute;i cho người d&ugrave;ng.</p>

<p><img height="300" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/01/6S6A9369-3-1.jpg" width="200" /></p>

<p><a name="he-thong-den-led"></a></p>

<h3>Hệ thống đ&egrave;n LED</h3>

<p>Đ&aacute;ng ch&uacute; &yacute; l&agrave; phần đầu Yamaha Grande Hybrid 2018 đ&atilde; thon gọn hơn so với đời cũ. Chưa hết, đ&egrave;n pha tr&ecirc;n mẫu xe ga mới n&agrave;y c&ograve;n được Yamaha thiết kế 2 tầng c&aacute; t&iacute;nh v&agrave; sử dụng b&oacute;ng Full LED tăng khả năng chiếu s&aacute;ng. Ngo&agrave;i ra, cặp gương theo xe với 3 m&agrave;u l&agrave; cr&ocirc;m, bạc v&agrave; đen.</p>

<p>Đ&egrave;n pha v&agrave; đ&egrave;n hậu đều được sử dụng c&ocirc;ng nghệ LED hiện đại gi&uacute;p chiếu s&aacute;ng tối ưu trong m&ocirc;i trường đ&ocirc; thị. Đ&egrave;n pha thiết kế hai tầng c&ugrave;ng cho&aacute; đ&egrave;n phản quang tốt đảm bảo độ s&aacute;ng cả khi chiếu xa lẫn chiếu gần.</p>

<p><img height="250" src="https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/detail-feature4.png.webp" width="300" /></p>

<p><a name="phanh-abs"></a></p>

<h3>Phanh ABS</h3>

<p>Ph&iacute;a đu&ocirc;i xe, đ&egrave;n hậu được n&acirc;ng cao hơn với dải đ&egrave;n h&igrave;nh chữ V cho vẻ đẹp sắc sảo tinh tế, c&ugrave;ng với đ&oacute; l&agrave; đ&egrave;n xi&ndash;nhan c&oacute; khả năng nhấp nh&aacute;y khi ấn n&uacute;t t&igrave;m xe tr&ecirc;n ch&igrave;a kh&oacute;a. Hệ thống treo của xe bao gồm phuộc ống lồng ph&iacute;a trước v&agrave; giảm chấn dầu l&ograve; xo ở ph&iacute;a sau.&nbsp;<a href="https://thongsokythuat.vn/phanh-truoc/tich-hop-abs/">Hệ thống chống b&oacute; cứng phanh ABS</a>&nbsp;chỉ c&oacute; tr&ecirc;n phi&ecirc;n bản đặc biệt. C&oacute; khả năng điều chỉnh lực phanh khi phanh gấp hoặc đường trơn ướt, gi&uacute;p hạn chế hiện tượng trượt b&aacute;nh nguy hiểm để tăng độ an to&agrave;n cho người l&aacute;i khi điều khiển xe.</p>

<p><img height="250" src="https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/detail-feature6.png.webp" width="300" /></p>

<p><a name="khoa-thong-minh"></a></p>

<h3>Kh&oacute;a th&ocirc;ng minh</h3>

<p>Hệ thống kho&aacute; th&ocirc;ng minh chỉ k&iacute;ch hoạt khi người giữ kho&aacute; đang ở trong phạm vi cho ph&eacute;p, với n&uacute;m xoay c&oacute; thể thực hiện nhiều chức năng.</p>

<p><img height="250" src="https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/detail-feature7.png.webp" width="300" /></p>

<p><a name="dong-ho-xe-yamaha-grande-blue-core-hybrid-phien-ban-dac-biet"></a></p>

<h3>Đồng hồ xe Yamaha Grande Blue Core Hybrid phi&ecirc;n bản đặc biệt</h3>

<p>Đồng hồ tr&ecirc;n Yamaha Grande đời cũ đ&atilde; qu&aacute; lạc hậu so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n kh&uacute;c, ch&iacute;nh điều n&agrave;y đ&atilde; khiến h&atilde;ng xe m&aacute;y Yamaha mang đến cho Grande bản n&acirc;ng cấp m&agrave;n h&igrave;nh TFT cho khả năng hiển thị m&agrave;u tốt hơn với nhiều th&ocirc;ng tin hữu &iacute;ch cho người sử dụng. Với thiết kế trang nh&atilde; hiện đạ, mặt đồng hồ sử dụng c&ocirc;ng nghệ mới TFT cho khả năng hiển thị m&agrave;u tốt hơn với nhiều th&ocirc;ng tin hữu &iacute;ch.</p>

<p>Bảng đồng hồ n&agrave;y được t&iacute;ch hợp th&ecirc;m một m&agrave;n h&igrave;nh LCD nhỏ thể hiện m&agrave;n &ldquo;ch&agrave;o s&acirc;n&rdquo; v&agrave; tạm biệt khi bật/tắt ch&igrave;a kho&aacute;. Ngo&agrave;i ra, m&agrave;n h&igrave;nh n&agrave;y c&ograve;n thể hiện giờ, lượng xăng c&ograve;n lại, qu&atilde;ng đường đi.</p>

<p><img height="250" src="https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/detail-feature1.png.webp" width="300" /></p>

<p><a name="nap-binh-xang"></a></p>

<h3>Nắp b&igrave;nh xăng</h3>

<p>Đ&aacute;ng ch&uacute; &yacute; l&agrave; tr&ecirc;n bản đặc biệt sẽ c&oacute; ổ kho&aacute; th&ocirc;ng minh Smart Key giống như &ldquo;người anh em&rdquo; NVX đang b&aacute;n tr&ecirc;n thị trường. Vị tr&iacute; đặt nắp b&igrave;nh xăng ở ph&iacute;a trước đầu xe, ngay ph&iacute;a tr&ecirc;n chỗ để ch&acirc;n, mở ra dễ d&agrave;ng chỉ với một n&uacute;t nhấn tr&ecirc;n ổ kho&aacute; ở ph&iacute;a đối diện, rất thuận tiện v&agrave; an to&agrave;n cho người đổ xăng.</p>

<p><img height="250" src="https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/detail-feature5.png.webp" width="300" /></p>

<p><a name="cop-xe-yamaha-grande-blue-core-hybrid-dac-biet"></a></p>

<h3>Cốp xe Yamaha Grande Blue Core Hybrid đặc biệt</h3>

<p>D&agrave;nh cho ph&aacute;i đẹp, n&ecirc;n cốp xe của Yamaha Grande bản n&acirc;ng cấp cũng thuộc loại rộng r&atilde;i với thể t&iacute;ch chứa l&ecirc;n đến 27 l&iacute;t. Cốp n&agrave;y c&oacute; thể chứa được 2 mũ bảo hiểm c&ugrave;ng nhiều vật dụng kh&aacute;c. Ngo&agrave;i ra, Yamaha Grande bản n&acirc;ng cấp cũng được trang bị đ&egrave;n LED trong cốp gi&uacute;p chiếu s&aacute;ng v&agrave; thuận tiện trong việc t&igrave;m đồ. Cốp xe 27 l&iacute;t c&oacute; thể để được 2 mũ bảo hiểm c&ugrave;ng nhiều vật dụng kh&aacute;c, được trang bị đ&egrave;n LED chiếu s&aacute;ng gi&uacute;p t&igrave;m đồ dễ d&agrave;ng.</p>

<p><img height="250" src="https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/detail-feature2.png.webp" width="300" /></p>
', N'101       ', N'4.2       ', N'182 x 69 x 115                ', N'1.69l                         ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (13, N'Beverly', N'/Content/images/xe/Beverly.jpg', 20000, 1, 2, 0, N'<p>Được Piaggio giới thiệu tới thị trường v&agrave;o th&aacute;ng 12/2010 nhưng Beverly phi&ecirc;n bản ho&agrave;n to&agrave;n mới với những trang thiết bị hiện đại v&agrave; vẻ đẹp h&agrave;i h&ograve;a vẫn chưa hẳn lấy l&ograve;ng người ti&ecirc;u d&ugrave;ng Việt Nam sau gần một năm. Ngay từ khi ra mắt Beverly, Piaggio Việt Nam đ&atilde; kỳ vọng cạnh tranh trong ph&acirc;n kh&uacute;c xe tay ga cao cấp vốn từ l&acirc;u nằm dưới sự thống trị của Honda với những sản phẩm quen thuộc như Dylan, @, PS v&agrave; SH.</p>

<p>&nbsp;</p>

<p>Mang tr&ecirc;n m&igrave;nh thiết kế năng động, dứt kho&aacute;t v&agrave; ph&ugrave; hợp với cả nam lẫn nữ, Honda SH đ&atilde; trở th&agrave;nh lựa chọn số 1 của những người muốn mua xe tay ga cao cấp. Th&ecirc;m v&agrave;o&nbsp;đ&oacute;, SH c&ograve;n&nbsp;được trang bị&nbsp;động cơ&nbsp;&ecirc;m&nbsp;&aacute;i v&agrave; lu&ocirc;n giữ gi&aacute; nếu bạn c&oacute; nhu cầu b&aacute;n hoặc&nbsp;đổi xe.</p>

<p>Đ&oacute; l&agrave; nguy&ecirc;n nh&acirc;n khiến&nbsp;Piaggio Beverly gặp phải kh&ocirc;ng &iacute;t những trở ngại v&agrave; kh&oacute; khăn tr&ecirc;n con đường chinh phục người ti&ecirc;u d&ugrave;ng Việt Nam. H&atilde;y cũng&nbsp;AutoPro&nbsp;kh&aacute;m ph&aacute; những ưu v&agrave; nhược điểm của Beverly để c&oacute; c&aacute;i nh&igrave;n r&otilde; hơn nữa về mẫu xe tay ga cao cấp nh&agrave; Piaggio.</p>

<p>&nbsp;</p>

<p>X&eacute;t về ngoại h&igrave;nh tổng thể, c&oacute; thể thấy Beverly kh&aacute; &quot;to con&quot; với chiều d&agrave;i tổng thể 2.150 mm, chiều rộng 780 mm v&agrave; chiều cao 1.535 mm. Những đường cong uốn lượn mềm mại, đan xen v&agrave;o đ&oacute; l&agrave; hai t&ocirc;ng m&agrave;u t&aacute;ch biệt tạo th&agrave;nh hai h&igrave;nh khối khiến Beverly tr&ocirc;ng c&agrave;ng&nbsp;mập mạp v&agrave; đồ sộ. Tuy nhi&ecirc;n, Piaggio biết c&aacute;ch phối những mảng m&agrave;u s&aacute;ng tối, gi&uacute;p Beverly to&aacute;t l&ecirc;n vẻ sang trọng v&agrave;&nbsp;h&agrave;i h&ograve;a giữa c&aacute;c bộ phận của xe. Chỉ c&oacute; điều, ch&iacute;nh thiết kế tr&ecirc;n&nbsp;lại khiến nhiều người nghĩ Beverly l&agrave; mẫu xe tay ga ph&ugrave; hợp với nữ giới hơn c&aacute;nh m&agrave;y r&acirc;u.&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="http://autopro8.mediacdn.vn/kkBBtYAj9E3OhV9Ioct7jf6WGlF36/Image/2011/10/PG-Beverly/PiaggioBeverly25_e93af.jpg" width="480" /></p>

<p>&nbsp;</p>

<p>Phần đầu xe được thiết kế bắt mắt nhờ cụm đ&egrave;n pha halogen cỡ lớn t&aacute;ch biệt l&agrave;m hai tầng với cốt v&agrave; pha gi&uacute;p tăng cường &aacute;nh s&aacute;ng về đ&ecirc;m k&egrave;m theo khả năng chiếu s&aacute;ng xa, r&otilde; r&agrave;ng, gi&uacute;p người điều khiển quan s&aacute;t tốt hơn. B&ecirc;n cạnh đ&oacute;, c&aacute;ch bố tr&iacute; ốp mạ chrome ngay ch&iacute;nh giữa mặt nạ xe kết hợp với dải đ&egrave;n LED được đặt c&acirc;n xứng hai b&ecirc;n mang đến vẻ hiện đại, khỏe khoắn cho Beverly.</p>

<p>&nbsp;</p>

<p><img alt="" src="http://autopro8.mediacdn.vn/kkBBtYAj9E3OhV9Ioct7jf6WGlF36/Image/2011/10/PG-Beverly/PiaggioBeverly21_47cea.jpg" width="650" /></p>

<p>Vẻ hiện đại cũng như thể thao c&ograve;n được thể hiện ở bề mặt bảng t&aacute;p-l&ocirc; với 3 đồng hồ kết hợp với nhau, đi k&egrave;m t&ocirc;ng m&agrave;u xanh da trời hiện đại. Ph&iacute;a b&ecirc;n tr&aacute;i l&agrave; đồng hồ b&aacute;o xăng, b&ecirc;n phải l&agrave; đồng hồ đo nhiệt độ động cơ v&agrave; ch&iacute;nh giữa l&agrave; đồng hồ đo tốc độ với hai đơn vị kh&aacute;c nhau. Dải số b&ecirc;n ngo&agrave;i cho ta biết đơn vị đo tốc độ km/h c&ograve;n b&ecirc;n trong l&agrave; đơn vị dặm/h được d&ugrave;ng chủ yếu tại thị trường Mỹ. Ngay ph&iacute;a b&ecirc;n dưới đồng hồ đo tốc độ l&agrave; m&agrave;n h&igrave;nh LCD gi&uacute;p hiển thị qu&atilde;ng đường đi, th&ocirc;ng số điện nạp v&agrave;o b&igrave;nh ắc-quy hay nhiệt độ ngo&agrave;i trời&hellip;&nbsp;</p>

<p>&nbsp;</p>

<p>Cụm tay l&aacute;i b&ecirc;n tr&aacute;i/phải đều được bố tr&iacute; những c&ocirc;ng tắc dễ d&ugrave;ng v&agrave; bấm nhẹ nh&agrave;ng. Cụm c&ocirc;ng tắc b&ecirc;n tr&aacute;i c&oacute; th&ecirc;m một n&uacute;t tr&ograve;n b&ecirc;n dưới để mở cốp. Trong khi đ&oacute;, cụm c&ocirc;ng tắc b&ecirc;n phải c&ograve;n được trang bị th&ecirc;m một c&ocirc;ng tắc điện gi&uacute;p xe chỉ c&oacute; thể bật điện m&agrave; kh&ocirc;ng thể nổ m&aacute;y nếu kh&ocirc;ng bật. Đ&acirc;y l&agrave; loại c&ocirc;ng tắc thường xuất hiện tr&ecirc;n những chiếc m&ocirc;t&ocirc; ph&acirc;n khối lớn. Thiết nghĩ,&nbsp;với một chiếc xe ga như Beverly, mỗi khi bạn cần khởi động đều phải gạt ch&acirc;n chống điện v&agrave; b&oacute;p phanh rồi động cơ mới cho ph&eacute;p nổ m&aacute;y th&igrave; c&ocirc;ng tắc điện liệu c&oacute; c&ograve;n t&aacute;c dụng hay chỉ đơn giản để tắt m&aacute;y nhanh hơn. Một ph&iacute;m tr&ograve;n bố tr&iacute; ph&iacute;a dưới cụm c&ocirc;ng tắc b&ecirc;n phải c&oacute; c&ocirc;ng dụng điều chỉnh Mode tr&ecirc;n m&agrave;n h&igrave;nh LCD.</p>

<p>&nbsp;</p>

<p><img alt="" src="http://autopro8.mediacdn.vn/kkBBtYAj9E3OhV9Ioct7jf6WGlF36/Image/2011/10/PG-Beverly/PiaggioBeverly23_9b9d1.jpg" width="650" /></p>

<p>Ổ kh&oacute;a từ cũng l&agrave; trang thiết bị kh&ocirc;ng thể thiếu tr&ecirc;n một chiếc xe tay ga cao cấp. Với hệ thống kh&oacute;a từ, mỗi ch&igrave;a kh&oacute;a đi k&egrave;m xe đều được cấy một con chip v&agrave; một m&atilde; chip. M&atilde; chip sẽ được giải m&atilde; ngay tại ổ kh&oacute;a, nếu đ&uacute;ng l&agrave; m&atilde; chip d&agrave;nh ri&ecirc;ng cho chiếc xe của bạn th&igrave;&nbsp;ổ kh&oacute;a sẽ&nbsp;k&iacute;ch hoạt cho ph&eacute;p hệ thống điện v&agrave; động cơ hoạt động. Đ&acirc;y cũng l&agrave; trang thiết bị gi&uacute;p l&agrave;m giảm tối đa nguy cơ xe bị mất cắp bởi ổ c&oacute; thể bị ph&aacute; nhưng nếu kh&ocirc;ng c&oacute; m&atilde; chip th&igrave; xe sẽ kh&ocirc;ng bao giờ khởi động.</p>

<p>&nbsp;</p>

<p>Cốp trước được bố tr&iacute; một kh&ocirc;ng gian khi&ecirc;m tốn, cho ph&eacute;p người sử dụng&nbsp;đựng những vật dụng nhỏ như găng tay, k&iacute;nh mắt, v&iacute; tiền hay&nbsp;điện thoại di động. Một ưu điểm của Beverly m&agrave; chắc hẳn nhiều người Việt Nam cũng sẽ rất th&iacute;ch ch&iacute;nh l&agrave; nắp b&igrave;nh xăng c&oacute; dung t&iacute;ch 12 l&iacute;t&nbsp;thay v&igrave; 7,5 l&iacute;t&nbsp;như SH được bố tr&iacute; ngay ph&iacute;a dưới, nằm giữa hai ch&acirc;n. Từ đ&oacute;, người sử dụng&nbsp;c&oacute; thể&nbsp;tiết kiệm thời gian khi đổ xăng m&agrave; kh&ocirc;ng phải mở cốp. Đ&acirc;y l&agrave; ưu điểm&nbsp;m&agrave; Honda SH kh&ocirc;ng c&oacute;.</p>

<p>&nbsp;</p>

<p><img alt="" src="http://autopro8.mediacdn.vn/kkBBtYAj9E3OhV9Ioct7jf6WGlF36/Image/2011/10/PG-Beverly/PiaggioBeverly9_71568.jpg" width="650" /></p>

<p>Đu&ocirc;i xe thể hiện sự hiện đại v&agrave; đơn giản khi được vuốt gọn lại với cụm đ&egrave;n hậu được chia l&agrave;m hai. Nằm b&ecirc;n dưới y&ecirc;n l&agrave; cốp xe khiến ai cũng bất ngờ v&igrave; qu&aacute; rộng. Nếu như cốp xe Honda SH đựng được một chiếc mũ &frac34; k&egrave;m theo một số vật dụng nhỏ th&igrave; cốp xe Beverly c&oacute; khả năng chứa được hai chiếc mũ bảo hiểm &frac34; k&egrave;m theo một chiếc mũ bảo hiểm nửa đầu v&agrave; một số vật dụng c&aacute; nh&acirc;n nếu bạn biết c&aacute;ch sắp xếp hợp l&yacute;.&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="http://autopro8.mediacdn.vn/kkBBtYAj9E3OhV9Ioct7jf6WGlF36/Image/2011/10/PG-Beverly/PiaggioBeverly15_d0446.jpg" width="650" /></p>

<p>Để tăng vẻ đẹp thẩm mỹ cũng như t&iacute;nh thể thao cho Beverly,&nbsp;Piaggio đ&atilde; trang bị cho xe cặp v&agrave;nh hợp kim nh&ocirc;m 20 chấu c&oacute; k&iacute;ch thước 16 inch c&ugrave;ng lốp kh&ocirc;ng săm 110/70-16 cho b&aacute;nh trước v&agrave; v&agrave;nh 14 inch với lốp 140/70-14 cho b&aacute;nh sau.</p>

<p>&nbsp;</p>

<p><img alt="" src="http://autopro8.mediacdn.vn/kkBBtYAj9E3OhV9Ioct7jf6WGlF36/Image/2011/10/PG-Beverly/PiaggioBeverly16_e2055.jpg" width="650" /></p>

<p>Để tăng khả năng vận h&agrave;nh ch&iacute;nh x&aacute;c v&agrave; an to&agrave;n tối đa, Beverly được trang bị giảm x&oacute;c trước thủy lực với đường k&iacute;nh 35 mm kết hợp với đĩa phanh cỡ lớn c&oacute; đường k&iacute;nh 300 mm v&agrave;&nbsp;m&aacute; phanh piston đ&ocirc;i với bơm thủy lực 12 mm.Trong khi đ&oacute;, giảm x&oacute;c sau thủy lực c&oacute; thể điều chỉnh với 4 vị tr&iacute; kh&aacute;c nhau. Đi k&egrave;m&nbsp; với giảm x&oacute;c sau l&agrave; đĩa phanh c&oacute; đường k&iacute;nh 240 mm v&agrave;&nbsp;piston đ&ocirc;i, bơm thủy lực 12 mm.</p>

<p>&nbsp;</p>

<p>R&otilde; r&agrave;ng, c&aacute;c kỹ sư của Piaggio đ&atilde; biết c&aacute;ch thổi hồn v&agrave;o Beverly, biến n&oacute; th&agrave;nh một sản phẩm mang đậm chất &Yacute; những những đường n&eacute;t v&agrave; c&aacute;c bộ phận đều được trau chuốt một c&aacute;ch kỹ lưỡng, ho&agrave;n hảo.</p>

<p>&nbsp;</p>

<p>Piaggio Beverly sở hữu bộ khung chắc chắn bằng th&eacute;p nối kếp hợp với th&eacute;p dập cường độ cao v&agrave; khối động c&oacute; dung t&iacute;ch 125cc, trục cam đơn SOHC c&oacute; tỷ số n&eacute;n 12,5:1. Với tỷ số n&eacute;n cao như vậy, nh&agrave; sản xuất khuyến c&aacute;o kh&aacute;ch h&agrave;ng n&ecirc;n sử dụng loại xăng RON95. Động cơ t&iacute;ch hợp c&ocirc;ng nghệ phun xăng điện tử v&agrave; l&agrave;m m&aacute;t bằng dung dịch cho c&ocirc;ng suất cực đại 15 m&atilde; lực tại 9.250 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc; men xoắn lớn nhấcực đại&nbsp;12 Nm tại 7.250 v&ograve;ng/ph&uacute;t. Theo nh&agrave; sản xuất, với động cơ cải tiến, Piaggio Beverly sẽ tiết kiệm 20% nhi&ecirc;n liệu cũng như ti&ecirc;u thụ 3,5 l&iacute;t/100 km trong điều kiện l&yacute; tưởng. Tất nhi&ecirc;n, tại Việt Nam, con số n&agrave;y l&agrave; điều kh&ocirc;ng thể xảy ra.</p>

<p>&nbsp;</p>

<p>Piaggio Beverly sở hữu trọng lượng 162 kg, nặng hơn 22 kg so với Honda SH. B&ecirc;n cạnh&nbsp;đ&oacute; l&agrave;&nbsp;y&ecirc;n xe cao 790 mm, nhỉnh hơn Honda SH&nbsp;40 mm. Đ&acirc;y ch&iacute;nh l&agrave; l&yacute; do khiến nhiều người ti&ecirc;u d&ugrave;ng ngần ngại khi mua Beverly. Nếu cao dưới 1m7, bạn sẽ phải kiễng khi chống ch&acirc;n v&igrave; y&ecirc;n xe kh&ocirc;ng chỉ cao m&agrave; c&ograve;n b&egrave; ngang. Với phụ nữ Ch&acirc;u &Aacute;, đ&acirc;y ho&agrave;n to&agrave;n l&agrave; điều kh&oacute; khăn, nhất l&agrave; khi phải dắt một chiếc xe nặng tới 162 kg.&nbsp;Tuy nhi&ecirc;n, khi bạn đ&atilde; t&igrave;m được một vị tr&iacute; ngồi th&iacute;ch hợp cũng như quen xe th&igrave; cảm gi&aacute;c lại ho&agrave;n to&agrave;n kh&aacute;c. Tay l&aacute;i cao v&agrave; chỗ để ch&acirc;n rộng r&atilde;i gi&uacute;p người điều khiển cảm thấy thoải m&aacute;i hơn Honda SH.</p>
', N'162       ', N'4.1       ', N'215 x 78 x 153                ', N'3.7l                          ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (14, N'STAR SR 125 EFI', N'/Content/images/xe/star.jpg', 20000, 1, 4, 1, N'<h2><strong>Xe m&aacute;y SYM Star SR 125 EFI c&ocirc;n tay đen x&aacute;m &ndash; d&ograve;ng xe của người Việt</strong></h2>

<p>Xe m&aacute;y SYM Star SR 125 EFI tay c&ocirc;n l&agrave; d&ograve;ng&nbsp;<strong><a href="https://xedienvietthanh.com/xe-may-50cc/">xe m&aacute;y</a></strong>&nbsp;đạt ti&ecirc;u chuẩn của người d&ugrave;ng Việt. Với c&ocirc;ng nghệ hiện đại, kiểu d&aacute;ng nổi bật, tiện &iacute;ch ưu việt v&agrave; an to&agrave;n tối đa. Mẫu xe m&aacute;y n&agrave;y t&iacute;ch hợp c&ocirc;n tay gi&uacute;p người d&ugrave;ng kh&ocirc;ng cần phải thao t&aacute;c b&oacute;p c&ocirc;n. Từ đ&oacute; thao t&aacute;c điều khiển sẽ đơn giản hơn, th&iacute;ch hợp với những người mới điều khiển xe.</p>

<p><img alt="xe-may-SYM-Star-SR-125-EFI-con-tay-den-xam-1" height="600" src="https://xedienvietthanh.com/wp-content/uploads/2018/12/sym-star-sr-125-efi-con-tay-dam-chat-dan-choi.jpg" width="600" /></p>

<p>Đ&egrave;n xi nhan trước, sau đều ứng dụng c&ocirc;ng nghệ Led với độ chiếu s&aacute;ng ho&agrave;n hảo. Người d&ugrave;ng an to&agrave;n hơn khi vận h&agrave;nh c&ugrave;ng xe m&aacute;y SYM Star SR. Cụm đ&egrave;n đu&ocirc;i xe được trang bị nhiều b&oacute;ng đ&egrave;n Led với độ s&aacute;ng mạnh. Gi&uacute;p bạn an to&agrave;n khi đồng h&agrave;nh c&ugrave;ng xe đồng thời tăng n&eacute;t thẩm mỹ cho xe.</p>

<p>Mặt đồng hồ thể thao gi&uacute;p đo tốc độ dạng analog, t&iacute;ch hợp m&agrave;n h&igrave;nh LCD hiển thị đầy đủ, r&otilde; r&agrave;ng th&ocirc;ng tin xe ở mọi điều kiện thời tiết.</p>

<p>Th&acirc;n xe m&aacute;y SYM Star SR thiết kế dạng lưới tổ ong bo g&oacute;c tạo kiểu d&aacute;ng underbone thể thao. Đu&ocirc;i xe vuốt nhọn tạo cảm gi&aacute;c mạnh mẽ v&agrave; bứt ph&aacute;.</p>

<p><img alt="xe-may-SYM-Star-SR-125-EFI-con-tay-den-xam-2" height="805" src="https://xedienvietthanh.com/wp-content/uploads/2021/05/xe-may-SYM-Star-SR-125-1.png" width="895" /></p>

<p>Cốp chứa đồ dưới y&ecirc;n của mẫu&nbsp;<strong><a href="https://xedienvietthanh.com/sym/">xe m&aacute;y SYM</a></strong>&nbsp;n&agrave;y kh&aacute; rộng. Bạn c&oacute; thể để vừa một chiếc mũ bảo hiểm nửa đầu đi k&egrave;m những vật dụng kh&aacute;c tạo thiện cảm với người d&ugrave;ng. N&uacute;t mở y&ecirc;n xe tiện lợi hơn với n&uacute;t bấm Seat Open được t&iacute;ch hợp tr&ecirc;n tay ga. Chỉ với một thao t&aacute;c bấm, ổ kh&oacute;a xe sẽ tự động, tăng hiệu quả chống trộm.</p>

<h2><strong>Vận h&agrave;nh &ecirc;m &aacute;i, nhẹ nh&agrave;ng v&agrave; ch&iacute;nh x&aacute;c</strong></h2>

<p><strong>Xe m&aacute;y SYM</strong>&nbsp;Star SR 125 được thiết kế phuộc trước thủy lực. Phuộc sau l&ograve; xo trụ đ&ocirc;i gi&uacute;p xe vận h&agrave;nh &ecirc;m &aacute;i hơn tr&ecirc;n mọi h&agrave;nh tr&igrave;nh. Hệ thống phanh đĩa trước, phanh đ&ugrave;m sau cho lực phanh nhẹ nh&agrave;ng, ch&iacute;nh x&aacute;c.</p>

<p><img alt="xe-may-SYM-Star-SR-125-EFI-con-tay-den-xam-3" height="600" src="https://xedienvietthanh.com/wp-content/uploads/2018/12/sym-star-sr-125-efi-con-tay-chat-choi.jpg" width="600" /></p>

<p>Bộ v&agrave;nh m&acirc;m đ&uacute;c 5 chấu k&eacute;p sơn đen, thiết kế b&aacute;nh sau đường k&iacute;nh lớn 120/90-17. Gi&uacute;p xe m&aacute;y SYM Star SR 125 EFI b&aacute;m đường cực tốt v&agrave; &ocirc;m cua an to&agrave;n hơn rất nhiều.</p>

<p>C&oacute; thể dễ d&agrave;ng nhận ra rằng&nbsp;<strong><a href="https://xedienvietthanh.com/sym-star-sr/">xe m&aacute;y Star SR 125 c&ocirc;n tay đen x&aacute;m</a></strong>&nbsp;l&agrave; mẫu xe gần như ho&agrave;n hảo. Bởi quan s&aacute;t ở g&oacute;c độ n&agrave;o cũng nhận thấy được nhiều chi tiết tinh tế. Ống p&ocirc; thể thao chếch cao k&egrave;m nắp chụp v&aacute;t ch&eacute;o xi bạc g&oacute;c cạnh kết hợp với miếng ốp th&acirc;n p&ocirc; m&agrave;u đen đ&aacute;p ứng đủ ti&ecirc;u chuẩn kh&iacute; thải hiện nay.</p>

<h2><strong>Động cơ ECOTECH ưu việt</strong></h2>

<p>Điểm đ&aacute;ng ch&uacute; &yacute; nhất ở mẫu xe m&aacute;y Star SR 125 EFI c&ocirc;n tay đen x&aacute;m l&agrave; được t&iacute;ch hợp động cơ ECOTECH 125cc, l&agrave;m m&aacute;t bằng dung dịch n&ecirc;n mang lại hiệu suất ưu việt hơn m&agrave; lại bảo vệ m&ocirc;i trường. Động cơ ECOTECH c&oacute; 4 van, xy lanh bằng hợp kim nh&ocirc;m cho độ bền cao v&agrave; giải nhiệt tốt hơn. C&aacute;c chi tiết kỹ thuật đều được thiết kế theo ti&ecirc;u chuẩn mới.</p>

<p><img alt="xe-may-SYM-Star-SR-125-EFI-con-tay-den-xam-4" height="380" src="https://xedienvietthanh.com/wp-content/uploads/2018/12/sym-star-auto-con-chi-tiet-3.jpg" width="700" /></p>

<p>Hệ thống phun xăng điện tử EFI mới nhất với m&atilde; lực mạnh, tiết kiệm xăng. Xe m&aacute;y SYM Star SR c&ocirc;n tay ti&ecirc;u hao khoảng 1,4l xăng cho 100km ở vận tốc 45km/h. Đ&acirc;y l&agrave; mức ti&ecirc;u hao nhi&ecirc;n liệu l&yacute; tưởng cho d&ograve;ng xe số 125 ph&acirc;n khối tại nước ta.</p>
', N'111       ', N'3.5       ', N'196 x 72 x 113                ', N'1.4l                          ', N'95%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (15, N'Passing', N'/Content/images/xe/passing.jpg', 15000, 1, 4, 0, N'<p>SYM l&agrave; thương hiệu sản xuất xe m&aacute;y chuy&ecirc;n ph&acirc;n kh&uacute;c sản phẩm mức gi&aacute; tầm trung. H&atilde;ng c&oacute; th&acirc;m ni&ecirc;n v&agrave; uy t&iacute;n l&acirc;u năm tr&ecirc;n thị trường quốc tế v&agrave; Việt Nam. Đ&aacute;p ứng nhu cầu sử dụng xe m&aacute;y của đại bộ phận học sinh, sinh vi&ecirc;n. Ngo&agrave;i c&aacute;c sản phẩm quen thuộc như Elite, Galaxy. Năm 2020 h&atilde;ng cho ra mắt sản phẩm xe ga SYM Passing 50cc &ndash; kh&ocirc;ng cần bằng l&aacute;i.</p>

<h2><strong>Ngoại quan thiết kế thể thao, c&aacute; t&iacute;nh ph&ugrave; hợp cho cả nam v&agrave; nữ</strong></h2>

<p><img alt="xe ga SYM Passing" src="https://xemayhungcle.vn/images/ckeditor/images/c7da60943f03518d0da95eb8948bac20.jpg" /></p>

<p>Xe ga Sym Passing 50cc nh&igrave;n chung c&oacute; thiết kế theo phong c&aacute;ch thể thao, mạnh mẽ. Nếu như c&aacute;c mẫu xe tay ga quen thuộc của SYM như Elite, hay Attila lu&ocirc;n theo phong c&aacute;ch nữ t&iacute;nh. C&aacute;c đường n&eacute;t chi tiết đều nhằm t&ocirc;n l&ecirc;n n&eacute;t đẹp nhẹ nh&agrave;ng của con g&aacute;i. Th&igrave; tạo h&igrave;nh của Passing đối lập với c&aacute;c mẫu xe tay trước kia như Elite, Attila.</p>

<p>Đầu đ&egrave;n của xe v&agrave; phần yếm trước thiết kế &ldquo;xoẹt t&ocirc;ng&rdquo; cả về phối m&agrave;u v&agrave; h&igrave;nh dạng. C&aacute;ch tạo khối nhựa khối hộp d&agrave;y nhiều xẻ r&atilde;nh s&acirc;u, nh&ocirc; cao hướng về ph&iacute;a trước đầy mạnh mẽ. Tổ hợp đ&egrave;n pha v&agrave; xi nhan trước kh&aacute; lớn v&agrave; kh&ocirc;ng thiết kế dạng khối tr&ograve;n truyền thống. Phần đ&egrave;n pha chia cắt th&agrave;nh nh&aacute;nh chữ V, tạo h&igrave;nh g&oacute;c cạnh như mắt diều h&acirc;u. Đ&egrave;n Halogen cho &aacute;nh s&aacute;ng v&agrave;ng ch&acirc;n thật, gi&uacute;p đảm bảo tầm nh&igrave;n cho người d&ugrave;ng trong điều kiện thời tiết xấu.</p>

<p><img alt="" src="https://xemayhungcle.vn/images/ckeditor/images/83e33cfa0cdc3c76f26e07ba63109473.jpg" /></p>

<p>Phần đu&ocirc;i của xe ga Passing 50cc được thiết kế kiểu vuốt thu&ocirc;n gọn. Tạo n&ecirc;n c&aacute;i nh&igrave;n tổng thể của xe giống như h&igrave;nh mũi t&ecirc;n hướng về ph&iacute;a trước. Thiết kế n&agrave;y c&oacute; thể hay gặp được ở những mẫu xe thể thao cao cấp c&oacute; ph&acirc;n khối lớn.</p>

<h2><strong>Xe ga Sym Passing 50cc c&oacute; được trang bị đầy đủ như xe ga 125cc kh&ocirc;ng?</strong></h2>

<p>L&agrave; một mẫu xe tay ga với thiết kế dung t&iacute;ch xi-lanh chỉ 49,5 cm3. Mẫu xe đặc biệt ph&ugrave; hợp cho kh&aacute;ch h&agrave;ng kh&ocirc;ng c&oacute; bằng l&aacute;i xe m&aacute;y. Hay n&oacute;i c&aacute;ch dễ hiểu hơn đ&oacute; ch&iacute;nh l&agrave; c&aacute;c bạn học sinh, sinh vi&ecirc;n chưa đủ tuổi c&oacute; bằng l&aacute;i. Nhưng kh&ocirc;ng v&igrave; thế m&agrave; mẫu xe ga Passing 50 cc kh&ocirc;ng được trang bị đầy đủ linh kiện hiện đại.</p>

<p><strong>Xe tay ga Sym</strong>&nbsp;pasing 50 ph&acirc;n khối trang bị hệ thống phanh rất chắc chắn v&agrave; an to&agrave;n. Cả hai b&aacute;nh đều được trang bị phanh tang trống, kiểu phanh đ&ugrave;m truyền thống. Ưu điểm cho kiểu phanh n&agrave;y l&agrave; khả năng giảm tốc dần đều, &ecirc;m mượt. V&igrave; vậy trong qu&aacute; tr&igrave;nh sử dụng, người d&ugrave;ng n&ecirc;n khởi động đồng thời cả 2 loại phanh để đạt được trạng th&aacute;i giảm tốc an to&agrave;n v&agrave; hợp l&iacute; nhất.</p>

<p><img alt="" src="https://xemayhungcle.vn/images/ckeditor/images/b3cbe41a59ff4001e4b4db358e81adf2.jpg" /></p>

<p>Nếu c&oacute; cơ hội trải nghiệm, nhất định c&aacute;c bạn n&ecirc;n ch&uacute; &yacute; tới hệ thống giảm x&oacute;c của mẫu xe ga Passing 50cc. C&agrave;ng trước được trang bị giảm x&oacute;c kiểu thụt dầu v&agrave; b&aacute;nh sau l&agrave; giảm chấn l&ograve; xo đ&ocirc;i cao cấp. Khỏe mạnh v&agrave; &ecirc;m &aacute;i những những từ được mi&ecirc;u tả về bộ giảm chấn n&agrave;y mỗi khi ph&aacute;t huy t&aacute;c dụng ở những cung đường phức tạp</p>
', N'97        ', N'3         ', N'188 x 69 x 108                ', N'2.03l                         ', N'90%       ')
INSERT [dbo].[bike] ([id_bike], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [mass], [volumn], [size], [consume], [status]) VALUES (16, N'New Attila', N'/Content/images/xe/attila.jpg', 30000, 1, 4, 0, N'<h2><strong>Ngoại h&igrave;nh tinh tế d&agrave;nh cho ph&aacute;i nữ</strong></h2>

<p>Kiểu d&aacute;ng thiết kế trong phi&ecirc;n bản mới nhất của SYM Attila 125 vẫn mang đậm n&eacute;t điệu đ&agrave;, nữ t&iacute;nh trong từng chi tiết.&nbsp;</p>

<p>H&igrave;nh dạng tr&ograve;n của đ&egrave;n pha trước mang lại cảm gi&aacute;c cổ điển, qu&yacute; ph&aacute;i cho chiếc xe. B&ecirc;n trong đ&egrave;n xe được c&aacute;ch điệu bằng logo SYM ch&igrave;m tạo dấu ấn thương hiệu rất ri&ecirc;ng. SYM Attila 125 phi&ecirc;n bản mới cũng đ&atilde; bắt kịp xu thế khi sử dụng đ&egrave;n pha trước dạng 2 tầng để cải thiện tầm nh&igrave;n của người l&aacute;i xe.</p>

<p><img alt="sym attila 125 2" height="934" src="https://muaxegiatot.vn/wp-content/uploads/2020/07/sym-attila-125-2.jpg" title="SYM New Attila 125 2020 - sự trở lại với nhiều thay đổi" width="900" /></p>

<p>&nbsp;</p>

<p>Đ&egrave;n pha tr&ograve;n với logo SYM</p>

<hr />
<p><strong>K&Eacute;O XUỐNG ĐỂ XEM TIẾP NỘI DUNG</strong></p>

<p>Đ&egrave;n định vị mang kiểu d&aacute;ng lạ mắt, được bố tr&iacute; dọc mặt nạ, kết hợp với miếng da c&aacute;ch điệu gi&uacute;p cho tổng thể xe th&ecirc;m phần thời trang.</p>

<p>Kiểu d&aacute;ng của cụm đ&egrave;n hậu cũng l&agrave; một trong những điểm nhấn quan trọng trong thiết kế của SYM Attila 125 phi&ecirc;n bản mới. Đ&egrave;n hậu của chiếc xe tay ga ph&aacute;i nữ n&agrave;y c&oacute; khả năng chiều s&acirc;u chiếu s&aacute;ng tốt. Kiểu sắp xếp nhiều tầng 3D kh&ocirc;ng chỉ hỗ trợ chiếu s&aacute;ng m&agrave; c&ograve;n tăng tối đa thẩm mỹ cho xe.</p>

<p><img alt="sym attila 125 1" height="934" src="https://muaxegiatot.vn/wp-content/uploads/2020/07/sym-attila-125-1.jpg" title="SYM New Attila 125 2020 - sự trở lại với nhiều thay đổi" width="900" /></p>

<p>&nbsp;</p>

<p>Đ&egrave;n hậu 3D</p>

<p>To&agrave;n bộ hệ thống đ&egrave;n của xe đều được ứng dụng c&ocirc;ng nghệ LED hiện đại, đem lại hiệu suất chiếu s&aacute;ng ấn tượng m&agrave; kh&ocirc;ng ti&ecirc;u hao qu&aacute; nhiều nhi&ecirc;n liệu.</p>

<p>Y&ecirc;n xe m&agrave;u đỏ đ&ocirc;, rộng r&atilde;i v&agrave; &ecirc;m &aacute;i với những đường chỉ tinh tế c&aacute;ch điệu gi&uacute;p cho thiết kế y&ecirc;n kh&ocirc;ng bị nh&agrave;m ch&aacute;n.</p>

<p>Ngo&agrave;i ra, với phi&ecirc;n bản n&agrave;y, h&atilde;ng xe SYM đ&atilde; tạo n&ecirc;n bộ nh&acirc;n diện mới với sự thay đổi của logo Attila. Logo c&oacute; h&igrave;nh vương miện chữ A, xung quanh c&aacute;ch điệu bằng c&aacute;c chấm s&aacute;ng lấp l&aacute;nh.</p>

<h2><strong>Đ&aacute;nh gi&aacute; về trang bị, tiện &iacute;ch của SYM New Attila 125 2020</strong></h2>

<p>Attila 125 được trang bị tay nắm sau bằng kim loại, bo tr&ograve;n &ocirc;m s&aacute;t to&agrave;n bộ đu&ocirc;i xe. Trang bị n&agrave;y vừa c&oacute; t&iacute;nh tiện dụng cao, vừa n&acirc;ng tầm đẳng cấp cho xe.</p>

<p>Xe sử dụng cụm đồng hồ dạng kỹ thuật số hiện đại. Th&ocirc;ng qua m&agrave;n h&igrave;nh LCD trực quan, c&aacute;c th&ocirc;ng số vận h&agrave;nh như h&agrave;nh tr&igrave;nh, tốc độ, lượng xăng được hiển thị đầy đủ đến người đọc với bố cục khoa học v&agrave; r&otilde; r&agrave;ng.</p>

<p><img alt="sym attila 125 7" height="934" src="https://muaxegiatot.vn/wp-content/uploads/2020/07/sym-attila-125-7.jpg" title="SYM New Attila 125 2020 - sự trở lại với nhiều thay đổi" width="900" /></p>

<p>M&agrave;n h&igrave;nh điện tử của xe SYM Attila 125</p>

<p>Sở hữu cổng sạc tiện lợi l&agrave; một điểm cộng to lớn tiếp theo cho chiếc Attila 125. Cổng sạc được bố tr&iacute; ph&iacute;a tr&ecirc;n tay l&aacute;i, k&egrave;m theo đ&oacute; l&agrave; nắp chụp ngo&agrave;i c&oacute; t&aacute;c dụng chống nước. Đ&acirc;y l&agrave; vị tr&iacute; rất thuận tiện để vừa thực hiện sạc thiết bị vừa di chuyển xe ngo&agrave;i đường.</p>

<p><img alt="sym attila 125 5" height="934" src="https://muaxegiatot.vn/wp-content/uploads/2020/07/sym-attila-125-5.jpg" title="SYM New Attila 125 2020 - sự trở lại với nhiều thay đổi" width="900" /></p>

<p>Cổng sạc tiện lợi của xe</p>

<p>Hơn hẳn những d&ograve;ng xe đang đặt nắp b&igrave;nh xăng ở dưới y&ecirc;n, phần nắp của Attila 125 được &ldquo;giấu&rdquo; k&iacute;n đ&aacute;o trong yếm trước. Khi muốn muốn mở b&igrave;nh để nạp nhi&ecirc;n liệu, người d&ugrave;ng chỉ cần l&agrave;m một thao t&aacute;c nhẹ nh&agrave;ng, nhanh gọn l&agrave; xoay ch&igrave;a kh&oacute;a sang phải. Khi ấy, cơ chế tự bung của nắp b&igrave;nh xăng sẽ được k&iacute;ch hoạt.</p>

<p>B&ecirc;n cạnh chăm ch&uacute;t cho vẻ bề ngo&agrave;i, New Attila 125 2020 c&ograve;n tập trung v&agrave;o t&iacute;nh tiện dụng. Điều n&agrave;y được thể hiện rất r&otilde; ở khoang chứa đồ dưới y&ecirc;n. Một chiếc xe tay ga ph&aacute;i nữ sẽ mất đi lợi thế cạnh tranh tr&ecirc;n thị trường nếu thiếu đi phần cốp hoặc cốp c&oacute; dung t&iacute;ch nhỏ. Rất may mắn, SYM Attila phi&ecirc;n bản mới đ&atilde; kh&ocirc;ng vướng phải thiếu s&oacute;t n&agrave;y.</p>

<p>Hộc đồ ph&iacute;a dưới y&ecirc;n của Attila 125 c&oacute; k&iacute;ch thước lớn: 27 l&iacute;t. Người sử dụng c&oacute; thể cất 2 chiếc mũ bảo hiểm &frac34; đầu c&ugrave;ng một số vật dụng c&aacute; nh&acirc;n kh&aacute;c m&agrave; kh&ocirc;ng lo gặp phải bất cứ cản trở g&igrave;.</p>

<p><img alt="sym attila 125 6" height="934" src="https://muaxegiatot.vn/wp-content/uploads/2020/07/sym-attila-125-6.jpg" title="SYM New Attila 125 2020 - sự trở lại với nhiều thay đổi" width="900" /></p>

<p>Cốp đựng đồ 27 l&iacute;t của SYM Attila 125</p>

<p>Đ&aacute;nh gi&aacute; về mặt trang bị, SYM Attila 125 kh&ocirc;ng c&oacute; qu&aacute; nhiều điểm nhấn. Hệ thống phanh bao gồm phanh đĩa trước 190mm, phanh sau vẫn l&agrave; phanh tang trống truyền thống. Trang bị n&agrave;y ph&ugrave; hợp để đ&aacute;p ứng nhu cầu di chuyển nhẹ nh&agrave;ng trong phố.</p>
', N'117       ', N'3.8       ', N'188 x 68 x 112                ', N'1.7l                          ', N'95%       ')
SET IDENTITY_INSERT [dbo].[bike] OFF
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id_bill], [id_rent], [money_hour], [date_start], [date_end], [status]) VALUES (2, 12, 60000, CAST(N'2022-12-27T19:19:47.550' AS DateTime), CAST(N'2022-12-27T22:59:23.770' AS DateTime), N'Hoàn thành')
INSERT [dbo].[bill] ([id_bill], [id_rent], [money_hour], [date_start], [date_end], [status]) VALUES (3, 15, 85000, CAST(N'2022-12-27T22:59:42.133' AS DateTime), CAST(N'2022-12-28T22:21:01.027' AS DateTime), N'Hoàn thành')
INSERT [dbo].[bill] ([id_bill], [id_rent], [money_hour], [date_start], [date_end], [status]) VALUES (4, 16, 90000, CAST(N'2022-12-28T23:33:53.187' AS DateTime), CAST(N'2023-01-01T12:54:47.893' AS DateTime), N'Hoàn thành')
INSERT [dbo].[bill] ([id_bill], [id_rent], [money_hour], [date_start], [date_end], [status]) VALUES (7, 17, 40000, CAST(N'2023-01-01T13:11:54.757' AS DateTime), NULL, NULL)
INSERT [dbo].[bill] ([id_bill], [id_rent], [money_hour], [date_start], [date_end], [status]) VALUES (8, 18, 15000, CAST(N'2023-01-01T13:13:13.337' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[blog] ON 

INSERT [dbo].[blog] ([id], [title], [image], [head], [content], [IsActive], [date]) VALUES (1, N'Honda Wave 125i 2023 nhập Thái đầu tiên về Việt Nam, giá 86 triệu đồng', N'/Content/images/blog/blog1.jpg', N'Sau một thời gian ngắn ra mắt tại Thái Lan, Honda Wave 125i đã được bán tại Việt Nam với mức giá lên tới 86 triệu đồng...', N'<p>Những chiếc Honda Wave 125i 2023 &quot;Made in Thailand&quot; đầu ti&ecirc;n vừa cập bến Việt Nam, hiện đang ho&agrave;n tất thủ tục th&ocirc;ng quan trước khi được đại l&yacute;&nbsp;<a href="https://thanhnien.vn/tai-chinh-kinh-doanh/" rel="noopener noreferrer" target="_blank" title="kinh doanh">kinh doanh</a>&nbsp;xe kh&ocirc;ng ch&iacute;nh h&atilde;ng tung ra thị trường với gi&aacute; 86 triệu đồng.</p>

<p>Sau khi được Honda tr&igrave;nh l&agrave;ng tại Th&aacute;i Lan v&agrave;o đầu th&aacute;ng 10.2022, mới đ&acirc;y l&ocirc; xe&nbsp;<a href="https://thanhnien.vn/honda-wave-125i-made-in-thailand-cai-tien-cho-ngay-ve-viet-nam-post1506658.html" title="Honda Wave 125i ‘Made in Thailand’ cải tiến, chờ ngày về Việt Nam">Honda Wave 125i 2023</a>&nbsp;&quot;Made in Thailand&quot; đầu ti&ecirc;n vừa gia nhập thị trường Việt Nam.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Honda Wave 125i 2023 ‘Made in Thailand’ đầu tiên về Việt Nam, giá 86 triệu  - ảnh 1" src="https://image.thanhnien.vn/w2048/Uploaded/2022/hgnatm/2022_11_09/honda-wave-125i3-8388.jpg" width="640px" /></td>
		</tr>
		<tr>
			<td>
			<p>Những chiếc Honda Wave 125i 2023 đầu ti&ecirc;n vừa về Việt Nam</p>

			<p>ML</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Theo th&ocirc;ng tin&nbsp;<em>Thanh Ni&ecirc;n</em>&nbsp;cập nhật, l&ocirc;&nbsp;<a href="https://thanhnien.vn/6-diem-moi-tren-honda-wave-125i-made-in-thailand-so-voi-doi-cu-post1507222.html" title="6 điểm mới trên Honda Wave 125i ‘Made in Thailand’ so với đời cũ">xe Wave 125i 2023</a>&nbsp;đầu ti&ecirc;n vừa về Việt Nam c&oacute; số lượng khoảng 20 xe, do một đại l&yacute; kh&ocirc;ng ch&iacute;nh h&atilde;ng chuy&ecirc;n kinh doanh xe nhập ph&acirc;n phối. Phần lớn trong số n&agrave;y l&agrave; phi&ecirc;n bản phối m&agrave;u trắng - đỏ được đại l&yacute; b&aacute;o gi&aacute; 86 triệu đồng, cao hơn gấp đ&ocirc;i gi&aacute; b&aacute;n mẫu xe song sinh&nbsp;<a href="https://thanhnien.vn/3-tinh-nang-cong-nghe-dang-dan-dai-tra-hoa-tren-xe-may-tai-viet-nam-post1449851.html" title="3 tính năng công nghệ đang dần ‘đại trà hóa’ trên xe máy tại Việt Nam">Honda Future</a>&nbsp;125i sản xuất tại Việt Nam.</p>

<p>So với mẫu xe cũ từng ph&acirc;n phối tại thị trường Việt Nam, Honda Wave 125i 2023 được l&agrave;m mới kh&aacute; to&agrave;n diện từ kiểu d&aacute;ng thiết kế cho đến&nbsp;<a href="https://thanhnien.vn/cong-nghe-game/" rel="noopener noreferrer" target="_blank" title="công nghệ">c&ocirc;ng nghệ</a>&nbsp;động cơ. Trong đ&oacute;, diện mạo xe cơ bản vẫn giữ nguy&ecirc;n n&eacute;t đặc trưng từ c&aacute;c thế hệ trước nhưng được Honda trau chuốt lại phần đầu xe với cụm đ&egrave;n pha LED mới. Đ&egrave;n định vị t&iacute;ch hợp với đ&egrave;n xi-nhan trước tạo h&igrave;nh chữ X t&iacute;ch hợp tr&ecirc;n yếm trước cũng được thiết kế mới. Đ&egrave;n hậu cũng sử dụng c&ocirc;ng nghệ đ&egrave;n LED được tạo d&aacute;ng theo h&igrave;nh chữ X, đồng điệu với cụm đ&egrave;n trước.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Honda Wave 125i 2023 ‘Made in Thailand’ đầu tiên về Việt Nam, giá 86 triệu  - ảnh 2" src="https://image.thanhnien.vn/w2048/Uploaded/2022/hgnatm/2022_11_09/honda-wave-125i1-1669.jpg" width="640px" /></td>
		</tr>
		<tr>
			<td>
			<p>Honda Wave 125i 2023 được l&agrave;m mới kh&aacute; to&agrave;n diện từ kiểu d&aacute;ng thiết kế cho đến c&ocirc;ng nghệ động cơ</p>

			<p>ML</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Theo Honda, khung sườn Wave 125i 2023 đ&atilde; được tinh chỉnh lại gi&uacute;p gia tăng độ cứng vững nhưng nhẹ hơn mẫu cũ. Hệ thống treo cũng được chỉnh lại gi&uacute;p xe đạt độ c&acirc;n bằng tốt hơn. Hộc chứa đồ ch&iacute;nh bố tr&iacute; dưới y&ecirc;n xe thiết kế theo kiểu U-Box với dung t&iacute;ch l&ecirc;n tới 17 l&iacute;t, c&oacute; thể chứa được một mũ bảo hiểm cỡ lớn. B&ecirc;n cạnh đ&oacute;, b&igrave;nh xăng cũng tăng l&ecirc;n mức 5,4 l&iacute;t.</p>

<p>Đ&aacute;ng ch&uacute; &yacute;, đồng hồ hiển thị được thiết kế lại, ph&acirc;n chia từng khu vực chức năng c&ugrave;ng th&ocirc;ng tin hiển thị sắc n&eacute;t đồng thời tạo cảm gi&aacute;c hiện đại, thời trang hơn. Wave 125i 2023 vẫn được trang bị ch&igrave;a kh&oacute;a cơ nhưng t&iacute;ch hợp nhiều chế độ như khởi động m&aacute;y, mở y&ecirc;n xe...</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Honda Wave 125i 2023 ‘Made in Thailand’ đầu tiên về Việt Nam, giá 86 triệu  - ảnh 3" src="https://image.thanhnien.vn/w2048/Uploaded/2022/hgnatm/2022_11_09/honda-wave-125i4-9690.jpg" width="640px" /></td>
		</tr>
		<tr>
			<td>
			<p>Động cơ tr&ecirc;n Honda Wave 125i 2023 ứng dụng c&ocirc;ng nghệ Smart Engine</p>

			<p>ML</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Vẫn d&ugrave;ng động cơ xăng dung t&iacute;ch 125 ph&acirc;n khối, nhưng kh&aacute;c với mẫu cũ từng ph&acirc;n phối tại Việt Nam, động cơ tr&ecirc;n Honda Wave 125i 2023 ứng dụng c&ocirc;ng nghệ Smart Engine, bổ sung hệ thống Piston Oil Jet gi&uacute;p giảm nhiệt, giảm m&agrave;i m&ograve;n, bền bỉ, k&eacute;o d&agrave;i thời gian sử dụng. Theo th&ocirc;ng số nh&agrave; sản xuất c&ocirc;ng bố, động cơ tr&ecirc;n Honda Wave 125i 2023 cho mức ti&ecirc;u hao nhi&ecirc;n liệu chỉ 1,4 l&iacute;t/100 km.</p>

<p>Trước đ&oacute;, Honda Wave 125i 2023 ph&acirc;n phối ch&iacute;nh h&atilde;ng tại thị trường Th&aacute;i Lan 2 phi&ecirc;n bản đi k&egrave;m mức gi&aacute; 34,1 - 35,5 triệu đồng. Như vậy, gi&aacute; b&aacute;n Honda Wave 125i 2023 sau khi về Việt Nam cao hơn gấp đ&ocirc;i so với gi&aacute; xe tại Th&aacute;i Lan.</p>
', 1, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[blog] ([id], [title], [image], [head], [content], [IsActive], [date]) VALUES (2, N'Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 235 triệu đồng', N'/Content/images/blog/blog2.jpg', N'Bộ đôi Piaggio Beverly S 400 HPE và Piaggio MP3 400 HPE Sport được trang bị nhiều tính năng hiện đại, cùng mức giá lần lượt là 235 và 330 triệu đồng.', N'<p>Bộ đ&ocirc;i Piaggio Beverly S 400 HPE v&agrave; Piaggio MP3 400 HPE Sport được trang bị nhiều t&iacute;nh năng hiện đại, c&ugrave;ng mức gi&aacute; lần lượt l&agrave; 235 v&agrave; 330 triệu đồng.</p>

<table>
	<tbody>
		<tr>
			<td><a href="https://autobikes.vn/piaggio-ra-mat-phien-ban-dac-biet-liberty-mau-moi-ky-niem-25-nam-15699.html" title="Piaggio ra mắt phiên bản đặc biệt Liberty màu mới kỷ niệm 25 năm">Piaggio ra mắt phi&ecirc;n bản đặc biệt Liberty m&agrave;u mới kỷ niệm 25 năm</a><a href="https://autobikes.vn/aprilia-sr-gt-200-tai-viet-nam-gia-tu-97-trieu-dong-15244.html" title="Aprilia SR GT 200 tại Việt Nam giá từ 97 triệu đồng">Aprilia SR GT 200 tại Việt Nam gi&aacute; từ 97 triệu đồng</a><a href="https://autobikes.vn/piaggio-medley-s-150cc-phien-ban-dac-biet-ra-mat-tai-viet-nam-13104.html" title="Piaggio Medley S 150cc phiên bản đặc biệt ra mắt tại Việt Nam">Piaggio Medley S 150cc phi&ecirc;n bản đặc biệt ra mắt tại Việt Nam</a></td>
		</tr>
	</tbody>
</table>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/21/0239_Piaggio_Beverly_S_400_HPE__6.jpg?rt=20221122210729" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px"/></td>
		</tr>
	</tbody>
</table>

<p>Piaggio Việt Nam vừa cho ra mắt 2 mẫu xe tay ga ph&acirc;n khối lớn l&agrave; Beverly 400 v&agrave; MP3 400 HPE Sport với gi&aacute; b&aacute;n lần lượt 235 triệu v&agrave; 330 triệu đồng.</p>

<p>Tương tự thế hệ trước, Beverly như phi&ecirc;n bản ph&oacute;ng to của Medley khi c&aacute;c đường n&eacute;t được ph&aacute;t triển từ mẫu xe đ&agrave;n em. Cụm đ&egrave;n ch&iacute;nh 2 tầng vu&ocirc;ng vức của Beverly được b&ecirc; nguy&ecirc;n từ Medley trong khi cụm đ&egrave;n b&aacute;o rẽ v&agrave; hốc gi&oacute; giữa được tinh chỉnh sắc sảo hơn.</p>

<p>Nửa th&acirc;n sau của Beverly được k&eacute;o d&agrave;i hơn trong khi thiết kế tay dắt v&agrave; đ&egrave;n hậu tương tự Medley. Điểm kh&aacute;c biệt l&agrave; phần chắn b&ugrave;n t&iacute;ch hợp nơi lắp biển số được t&aacute;ch khỏi cụm đ&egrave;n hậu, dời xuống ph&iacute;a dưới tương tự c&aacute;c mẫu m&ocirc; t&ocirc; ph&acirc;n khối lớn.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/21/0225_Piaggio_Beverly_S_400_HPE__3.jpg?rt=20221122210740" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px"/></td>
		</tr>
	</tbody>
</table>

<p>D&agrave;n trang bị tr&ecirc;n Beverly 400 kh&aacute; hiện đại với đồng hồ kỹ thuật số 5,5 inch kết nối điện thoại, giảm x&oacute;c Showa trước/sau, đ&egrave;n full-LED, phanh ABS 2 k&ecirc;nh, hệ thống kiểm so&aacute;t chống trượt ASR. Beverly l&agrave; mẫu xe hiếm hoi của gia đ&igrave;nh Piaggio được trang bị kh&oacute;a th&ocirc;ng minh.</p>

<p>Piaggio Beverly S 400 HPE được trang bị động cơ hiệu suất cao 400cc, xi-lanh đơn bốn kỳ, 4 van, l&agrave;m m&aacute;t bằng chất lỏng, phun xăng điện tử kết hợp ống xả k&eacute;p gi&uacute;p giảm tiếng ồn v&agrave; mức ti&ecirc;u thụ nhi&ecirc;n liệu, đ&aacute;p ứng ti&ecirc;u chuẩn kh&iacute; th&agrave;i Euro 5.</p>

<p>Khối động cơ n&agrave;y cho c&ocirc;ng suất tối đa 26 kW tại 7.500 v&ograve;ng/ph&uacute;t v&agrave; Momen xoắn cực đại 37.7 Nm ở 5.500 v&ograve;ng/ph&uacute;t. Đi k&egrave;m khối động cơ n&agrave;y l&agrave; hộp số truyền biến thi&ecirc;n v&ocirc; cấp tự động (CVT).</p>

<p>Piaggio Beverly 400 tại Việt Nam c&oacute; duy nhất phi&ecirc;n bản S đi k&egrave;m gi&aacute; b&aacute;n 225 triệu đồng. Mức gi&aacute; của Beverly 400 cao hơn Yamaha XMAX, Honda SH 350i nhưng dễ chịu hơn BMW C 400.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Ngo&agrave;i Beverly 400, Piaggio c&ograve;n mang đến phi&ecirc;n bản MP3 400 HPE Sport c&oacute; thiết kế 3 b&aacute;nh đầu ti&ecirc;n tr&ecirc;n thế giới, t&iacute;ch hợp c&ugrave;ng c&aacute;c c&ocirc;ng nghệ vận h&agrave;nh v&agrave; kết nối ti&ecirc;n tiến nhất.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/20/5208_Piaggio_MP3_400_HPE_Sport__7.jpg?rt=20221122210835" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px"/></td>
		</tr>
	</tbody>
</table>

<p>Piaggio MP3 Sport mang vẻ đẹp đậm chất thể thao với thiết kế 2 b&aacute;nh trước hầm hố vững ch&atilde;i, chấu xe sơn đen, kết hợp c&ugrave;ng hệ thống đ&egrave;n trước k&iacute;ch thước lớn ấn tượng.</p>

<p>Sức mạnh của Piaggio MP3 400 HPE Sport l&agrave; khối động cơ 399 cc, xi lanh đơn, 4 k&igrave;, 4 van, l&agrave;m m&aacute;t bằng chất lỏng v&agrave; phun xăng điện tử, gi&uacute;p giảm tiếng ồn, đ&aacute;p ứng ti&ecirc;u chuẩn Euro 5. Khối động cơ n&agrave;y cho c&ocirc;ng suất cực đại 26 kW (35.3 HP) ở 7.000 v&ograve;ng/ph&uacute;t v&agrave; Momen xoắn tối đa 37.7 Nm ở 5.500 v&ograve;ng/ph&uacute;t.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/20/5202_Piaggio_MP3_400_HPE_Sport__3.jpg?rt=20221122210851" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px"/></td>
		</tr>
	</tbody>
</table>

<p>Điểm đặc biệt của MP3 l&agrave; kết cấu 3 b&aacute;nh với 2 b&aacute;nh trước v&agrave; 1 b&aacute;nh sau. Hiện tại, MP3 l&agrave; mẫu xe 3 b&aacute;nh ph&acirc;n khối lớn duy nhất được ph&acirc;n phối ch&iacute;nh h&atilde;ng. Kh&aacute;c với những Can Am hay Yamaha Niken đ&atilde; c&oacute; mặt tại Việt Nam, Piaggio MP3 c&oacute; trục b&aacute;nh trước nhỏ hơn, ph&ugrave; hợp đi phố.</p>

<p>Do kết cấu 3 b&aacute;nh phức tạp, hệ thống giảm x&oacute;c trước l&agrave; loạt h&igrave;nh tứ gi&aacute;c, h&agrave;nh tr&igrave;nh 85 mm. Để xe c&oacute; thể đứng thẳng khi dừng, Piaggio trang bị cụm kh&oacute;a hệ trống treo điện tử thủy lực. Hệ thống n&agrave;y điều khiển qua n&uacute;t bấm tr&ecirc;n ghi-đ&ocirc;ng.</p>

<p>Piaggio MP3 Sport được trang bị hệ thống chống b&oacute; cứng phanh ABS, kiểm so&aacute;t chống trượt ASR v&agrave; t&iacute;ch hợp phanh ch&acirc;n mang đến cho mẫu xe khả năng b&aacute;m đường v&agrave; hiệu suất tốt nhất. B&ecirc;n cạnh đ&oacute;, xe được trang bị hệ thống giữ xe tự động thăng bằng khi dừng kể cả khi người l&aacute;i kh&ocirc;ng chống ch&acirc;n.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>C&aacute;c t&iacute;nh năng nổi bật kh&aacute;c như đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y, m&agrave;n h&igrave;nh kỹ thuật số LCD, Analog kết nối với hệ thống Mia v&agrave; hệ thống n&uacute;t điều khiển c&ocirc;ng th&aacute;i học gi&uacute;p người sử dụng dễ d&agrave;ng kiểm so&aacute;t chiếc xe.</p>

<p>Ngo&agrave;i ra, hộc đựng đồ phụ ph&iacute;a tr&ecirc;n bảng điều khiển thiết bị trang bị cổng USB gi&uacute;p người l&aacute;i c&oacute; thể sạc thiết bị của m&igrave;nh khi đang di chuyển&hellip;.</p>

<p>Piaggio ph&acirc;n phối MP3 400 với gi&aacute; 330 triệu đồng - kh&aacute; đắt đỏ cho mẫu tay ga ph&acirc;n khối lớn. Tuy nhi&ecirc;n, ngay cả khi c&oacute; tiền, bạn cũng kh&aacute; kh&oacute; khăn để sử dụng MP3. Do kết cấu 3 b&aacute;nh, người l&aacute;i MP3 phải c&oacute; bằng l&aacute;i A3 khi lưu th&ocirc;ng mẫu xe n&agrave;y.</p>
', 1, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[blog] ([id], [title], [image], [head], [content], [IsActive], [date]) VALUES (3, N'Cận cảnh Honda Winner X bản Thể thao mới tại đại lý', N'/Content/images/blog/blog3.jpg', N'Honda Winner X bản Thể thao mới đã có mặt tại các đại lý trên toàn quốc và được mở bán chính thức từ hôm nay (25/11).', N'<p>Honda Winner X bản Thể thao mới đ&atilde; c&oacute; mặt tại c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc v&agrave; được mở b&aacute;n ch&iacute;nh thức từ h&ocirc;m nay (25/11).</p>

<table>
	<tbody>
		<tr>
			<td><a href="https://autobikes.vn/honda-winner-x-2022-them-phien-ban-moi-gia-tu-51-trieu-dong-16042.html" title="Honda Winner X 2022 thêm phiên bản mới, giá từ 51 triệu đồng">Honda Winner X 2022 th&ecirc;m phi&ecirc;n bản mới, gi&aacute; từ 51 triệu đồng</a><a href="https://autobikes.vn/honda-winner-x-dai-ha-gia-xuong-gan-30-trieu-dong-12895.html" title="Honda Winner X đại hạ giá xuống gần 30 triệu đồng">Honda Winner X đại hạ gi&aacute; xuống gần 30 triệu đồng</a><a href="https://autobikes.vn/honda-winner-suc-manh-tu-lien-minh-12755.html" title="Honda Winner – Sức mạnh từ liên minh">Honda Winner &ndash; Sức mạnh từ li&ecirc;n minh</a></td>
		</tr>
	</tbody>
</table>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Honda Winer X 2022" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/25/15/1824_Honda_Winner_X.png?rt=20221125151848" title="Honda Winer X 2022" /></td>
		</tr>
		<tr>
		</tr>
	</tbody>
</table>

<p>Ng&agrave;y 11/11 vừa qua, Honda Winner X bản Thể thao mới đ&atilde; ch&iacute;nh thức ra mắt với m&agrave;u sắc v&agrave; tem mới trẻ trung v&agrave; bắt mắt hơn.</p>

<p>Đến nay, Winner X bản Thể thao mới đ&atilde; c&oacute; mặt tại c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc v&agrave; được mở b&aacute;n ch&iacute;nh thức từ ng&agrave;y 25/11 với mức gi&aacute; đề xuất b&aacute;n lẻ l&agrave; 50,56 triệu đồng.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Honda Winer X 2022" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/25/15/1822_Honda_Winner_X_3.jpg?rt=20221125151900" title="Honda Winer X 2022" width="640px"/></td>
		</tr>
		<tr>
		</tr>
	</tbody>
</table>

<p>Phi&ecirc;n bản thể thao Winner X vẫn được trang bị động cơ 150cc DOHC l&agrave;m m&aacute;t bằng dung dịch sản sinh c&ocirc;ng suất tối đa 15,4 m&atilde; lực tại 9.000 v&ograve;ng/ph&uacute;t, momen xoắn cực đại 13,5Nm tại 6.500 v&ograve;ng/ph&uacute;t.</p>

<p>Thiết kế duy tr&igrave; sự liền mạch, c&ugrave;ng những đường cắt sắc n&eacute;t tạo h&igrave;nh chữ V với phối m&agrave;u đặc sắc. Yếm xe được thiết kế với những khe gi&oacute; kh&iacute; động học tương tự như tr&ecirc;n mẫu xe m&ocirc; t&ocirc; thể thao. Đu&ocirc;i xe được thiết kế thon gọn đem lại h&igrave;nh ảnh trẻ trung v&agrave; tốc độ.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Honda Winer X 2022" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/25/15/1820_Honda_Winner_X_2.jpg?rt=20221125151912" title="Honda Winer X 2022" width="640px"/></td>
		</tr>
		<tr>
		</tr>
	</tbody>
</table>

<p dir="ltr">C&aacute;c trang bị tiện nghi vẫn được duy tr&igrave; đầy đủ gồm: hệ thống kho&aacute; th&ocirc;ng minh Smartkey, phanh ABS, cổng sạc USB-A. X&iacute;ch c&oacute; v&ograve;ng phớt O-Ring gi&uacute;p tăng độ bền v&agrave; tiết kiệm thời gian bảo dưỡng xe. Mặt đồng hồ kỹ thuật số dạng &acirc;m bản hiện đại nhỏ gọn.</p>
', 1, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[blog] ([id], [title], [image], [head], [content], [IsActive], [date]) VALUES (4, N'Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 235 triệu đồng', N'/Content/images/blog/blog2.jpg', N'Bộ đôi Piaggio Beverly S 400 HPE và Piaggio MP3 400 HPE Sport được trang bị nhiều tính năng hiện đại, cùng mức giá lần lượt là 235 và 330 triệu đồng.', N'<p>Bộ đ&ocirc;i Piaggio Beverly S 400 HPE v&agrave; Piaggio MP3 400 HPE Sport được trang bị nhiều t&iacute;nh năng hiện đại, c&ugrave;ng mức gi&aacute; lần lượt l&agrave; 235 v&agrave; 330 triệu đồng.</p>

<table>
	<tbody>
		<tr>
			<td><a href="https://autobikes.vn/piaggio-ra-mat-phien-ban-dac-biet-liberty-mau-moi-ky-niem-25-nam-15699.html" title="Piaggio ra mắt phiên bản đặc biệt Liberty màu mới kỷ niệm 25 năm">Piaggio ra mắt phi&ecirc;n bản đặc biệt Liberty m&agrave;u mới kỷ niệm 25 năm</a><a href="https://autobikes.vn/aprilia-sr-gt-200-tai-viet-nam-gia-tu-97-trieu-dong-15244.html" title="Aprilia SR GT 200 tại Việt Nam giá từ 97 triệu đồng">Aprilia SR GT 200 tại Việt Nam gi&aacute; từ 97 triệu đồng</a><a href="https://autobikes.vn/piaggio-medley-s-150cc-phien-ban-dac-biet-ra-mat-tai-viet-nam-13104.html" title="Piaggio Medley S 150cc phiên bản đặc biệt ra mắt tại Việt Nam">Piaggio Medley S 150cc phi&ecirc;n bản đặc biệt ra mắt tại Việt Nam</a></td>
		</tr>
	</tbody>
</table>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/21/0239_Piaggio_Beverly_S_400_HPE__6.jpg?rt=20221122210729" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px" /></td>
		</tr>
	</tbody>
</table>

<p>Piaggio Việt Nam vừa cho ra mắt 2 mẫu xe tay ga ph&acirc;n khối lớn l&agrave; Beverly 400 v&agrave; MP3 400 HPE Sport với gi&aacute; b&aacute;n lần lượt 235 triệu v&agrave; 330 triệu đồng.</p>

<p>Tương tự thế hệ trước, Beverly như phi&ecirc;n bản ph&oacute;ng to của Medley khi c&aacute;c đường n&eacute;t được ph&aacute;t triển từ mẫu xe đ&agrave;n em. Cụm đ&egrave;n ch&iacute;nh 2 tầng vu&ocirc;ng vức của Beverly được b&ecirc; nguy&ecirc;n từ Medley trong khi cụm đ&egrave;n b&aacute;o rẽ v&agrave; hốc gi&oacute; giữa được tinh chỉnh sắc sảo hơn.</p>

<p>Nửa th&acirc;n sau của Beverly được k&eacute;o d&agrave;i hơn trong khi thiết kế tay dắt v&agrave; đ&egrave;n hậu tương tự Medley. Điểm kh&aacute;c biệt l&agrave; phần chắn b&ugrave;n t&iacute;ch hợp nơi lắp biển số được t&aacute;ch khỏi cụm đ&egrave;n hậu, dời xuống ph&iacute;a dưới tương tự c&aacute;c mẫu m&ocirc; t&ocirc; ph&acirc;n khối lớn.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/21/0225_Piaggio_Beverly_S_400_HPE__3.jpg?rt=20221122210740" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px" /></td>
		</tr>
	</tbody>
</table>

<p>D&agrave;n trang bị tr&ecirc;n Beverly 400 kh&aacute; hiện đại với đồng hồ kỹ thuật số 5,5 inch kết nối điện thoại, giảm x&oacute;c Showa trước/sau, đ&egrave;n full-LED, phanh ABS 2 k&ecirc;nh, hệ thống kiểm so&aacute;t chống trượt ASR. Beverly l&agrave; mẫu xe hiếm hoi của gia đ&igrave;nh Piaggio được trang bị kh&oacute;a th&ocirc;ng minh.</p>

<p>Piaggio Beverly S 400 HPE được trang bị động cơ hiệu suất cao 400cc, xi-lanh đơn bốn kỳ, 4 van, l&agrave;m m&aacute;t bằng chất lỏng, phun xăng điện tử kết hợp ống xả k&eacute;p gi&uacute;p giảm tiếng ồn v&agrave; mức ti&ecirc;u thụ nhi&ecirc;n liệu, đ&aacute;p ứng ti&ecirc;u chuẩn kh&iacute; th&agrave;i Euro 5.</p>

<p>Khối động cơ n&agrave;y cho c&ocirc;ng suất tối đa 26 kW tại 7.500 v&ograve;ng/ph&uacute;t v&agrave; Momen xoắn cực đại 37.7 Nm ở 5.500 v&ograve;ng/ph&uacute;t. Đi k&egrave;m khối động cơ n&agrave;y l&agrave; hộp số truyền biến thi&ecirc;n v&ocirc; cấp tự động (CVT).</p>

<p>Piaggio Beverly 400 tại Việt Nam c&oacute; duy nhất phi&ecirc;n bản S đi k&egrave;m gi&aacute; b&aacute;n 225 triệu đồng. Mức gi&aacute; của Beverly 400 cao hơn Yamaha XMAX, Honda SH 350i nhưng dễ chịu hơn BMW C 400.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Ngo&agrave;i Beverly 400, Piaggio c&ograve;n mang đến phi&ecirc;n bản MP3 400 HPE Sport c&oacute; thiết kế 3 b&aacute;nh đầu ti&ecirc;n tr&ecirc;n thế giới, t&iacute;ch hợp c&ugrave;ng c&aacute;c c&ocirc;ng nghệ vận h&agrave;nh v&agrave; kết nối ti&ecirc;n tiến nhất.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/20/5208_Piaggio_MP3_400_HPE_Sport__7.jpg?rt=20221122210835" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px" /></td>
		</tr>
	</tbody>
</table>

<p>Piaggio MP3 Sport mang vẻ đẹp đậm chất thể thao với thiết kế 2 b&aacute;nh trước hầm hố vững ch&atilde;i, chấu xe sơn đen, kết hợp c&ugrave;ng hệ thống đ&egrave;n trước k&iacute;ch thước lớn ấn tượng.</p>

<p>Sức mạnh của Piaggio MP3 400 HPE Sport l&agrave; khối động cơ 399 cc, xi lanh đơn, 4 k&igrave;, 4 van, l&agrave;m m&aacute;t bằng chất lỏng v&agrave; phun xăng điện tử, gi&uacute;p giảm tiếng ồn, đ&aacute;p ứng ti&ecirc;u chuẩn Euro 5. Khối động cơ n&agrave;y cho c&ocirc;ng suất cực đại 26 kW (35.3 HP) ở 7.000 v&ograve;ng/ph&uacute;t v&agrave; Momen xoắn tối đa 37.7 Nm ở 5.500 v&ograve;ng/ph&uacute;t.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" src="https://autobikes.vn/stores/news_dataimages/nguyenthuy/112022/22/20/5202_Piaggio_MP3_400_HPE_Sport__3.jpg?rt=20221122210851" title="Piaggio ra mắt 2 mẫu xe tay ga mới, giá từ 225 triệu đồng" width="640px" /></td>
		</tr>
	</tbody>
</table>

<p>Điểm đặc biệt của MP3 l&agrave; kết cấu 3 b&aacute;nh với 2 b&aacute;nh trước v&agrave; 1 b&aacute;nh sau. Hiện tại, MP3 l&agrave; mẫu xe 3 b&aacute;nh ph&acirc;n khối lớn duy nhất được ph&acirc;n phối ch&iacute;nh h&atilde;ng. Kh&aacute;c với những Can Am hay Yamaha Niken đ&atilde; c&oacute; mặt tại Việt Nam, Piaggio MP3 c&oacute; trục b&aacute;nh trước nhỏ hơn, ph&ugrave; hợp đi phố.</p>

<p>Do kết cấu 3 b&aacute;nh phức tạp, hệ thống giảm x&oacute;c trước l&agrave; loạt h&igrave;nh tứ gi&aacute;c, h&agrave;nh tr&igrave;nh 85 mm. Để xe c&oacute; thể đứng thẳng khi dừng, Piaggio trang bị cụm kh&oacute;a hệ trống treo điện tử thủy lực. Hệ thống n&agrave;y điều khiển qua n&uacute;t bấm tr&ecirc;n ghi-đ&ocirc;ng.</p>

<p>Piaggio MP3 Sport được trang bị hệ thống chống b&oacute; cứng phanh ABS, kiểm so&aacute;t chống trượt ASR v&agrave; t&iacute;ch hợp phanh ch&acirc;n mang đến cho mẫu xe khả năng b&aacute;m đường v&agrave; hiệu suất tốt nhất. B&ecirc;n cạnh đ&oacute;, xe được trang bị hệ thống giữ xe tự động thăng bằng khi dừng kể cả khi người l&aacute;i kh&ocirc;ng chống ch&acirc;n.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>C&aacute;c t&iacute;nh năng nổi bật kh&aacute;c như đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y, m&agrave;n h&igrave;nh kỹ thuật số LCD, Analog kết nối với hệ thống Mia v&agrave; hệ thống n&uacute;t điều khiển c&ocirc;ng th&aacute;i học gi&uacute;p người sử dụng dễ d&agrave;ng kiểm so&aacute;t chiếc xe.</p>

<p>Ngo&agrave;i ra, hộc đựng đồ phụ ph&iacute;a tr&ecirc;n bảng điều khiển thiết bị trang bị cổng USB gi&uacute;p người l&aacute;i c&oacute; thể sạc thiết bị của m&igrave;nh khi đang di chuyển&hellip;.</p>

<p>Piaggio ph&acirc;n phối MP3 400 với gi&aacute; 330 triệu đồng - kh&aacute; đắt đỏ cho mẫu tay ga ph&acirc;n khối lớn. Tuy nhi&ecirc;n, ngay cả khi c&oacute; tiền, bạn cũng kh&aacute; kh&oacute; khăn để sử dụng MP3. Do kết cấu 3 b&aacute;nh, người l&aacute;i MP3 phải c&oacute; bằng l&aacute;i A3 khi lưu th&ocirc;ng mẫu xe n&agrave;y.</p>
', 1, CAST(N'2022-12-15' AS Date))
SET IDENTITY_INSERT [dbo].[blog] OFF
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id_cmt], [id], [name], [content], [date]) VALUES (4, 1, N'Trần Đức Tài ', N'!!!!!', CAST(N'2022-12-10' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [content], [date]) VALUES (5, 1, N'Trần Đức Tài ', N'!!!!', CAST(N'2022-12-10' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [content], [date]) VALUES (16, 1, N'Trần Đức Tài ', N'ok', CAST(N'2022-12-14' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [content], [date]) VALUES (19, 3, N'324', N'dfdsfsdf', CAST(N'2022-12-14' AS Date))
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([id], [address], [phone], [email], [facebook_link]) VALUES (1, N'525A Điện Biên Phủ', N'0989275330', N'Thuexemaythanhtrung@gmail.com', N'https://www.facebook.com/')
SET IDENTITY_INSERT [dbo].[contact] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id_employee], [account], [pass], [name], [fulControl]) VALUES (9, N'admin', N'123456', N'Admin', 1)
INSERT [dbo].[employee] ([id_employee], [account], [pass], [name], [fulControl]) VALUES (10, N'testter', N'123456', N'Test!!!', 0)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[mail] ON 

INSERT [dbo].[mail] ([ContactId], [Name], [Phone], [Email], [Message], [IsRead], [CreatedDate]) VALUES (7, N'Tran Duc Tai', N'0582325013', N'ductaifvr@gmail.com', N'This card uses Bootstrap''s default styling with no utility classes added. Global styles are the only things modifying the look and feel of this default card example.This card uses Bootstrap''s default styling with no utility classes added. Global styles are the only things modifying the look and feel of this default card example.This card uses Bootstrap''s default styling with no utility classes added. Global styles are the only things modifying the look and feel of this default card example.', 1, CAST(N'2022-12-10T15:36:41.343' AS DateTime))
INSERT [dbo].[mail] ([ContactId], [Name], [Phone], [Email], [Message], [IsRead], [CreatedDate]) VALUES (9, N'Phan Van Linh', N'0371234567', N'dbdsdos671@ondania.com', N'Test!!!', 1, CAST(N'2022-12-13T22:47:22.207' AS DateTime))
INSERT [dbo].[mail] ([ContactId], [Name], [Phone], [Email], [Message], [IsRead], [CreatedDate]) VALUES (10, N'Tran Duc Tai', N'03712345674', N'dbdsdos671@ondania.com', N'Lôi "con" bật khóc khi chú Tiến báo về Nghệ An. Bé Lôi tưởng chú về Nghệ An luôn, nên khóc nức nở 😊Lôi "con" bật khóc khi chú Tiến báo về Nghệ An. Bé Lôi tưởng chú về Nghệ An luôn, nên khóc nức nở 😊Lôi "con" bật khóc khi chú Tiến báo về Nghệ An. Bé Lôi tưởng chú về Nghệ An luôn, nên khóc nức nở 😊Lôi "con" bật khóc khi chú Tiến báo về Nghệ An. Bé Lôi tưởng chú về Nghệ An luôn, nên khóc nức nở 😊', 1, CAST(N'2022-12-17T21:30:01.220' AS DateTime))
INSERT [dbo].[mail] ([ContactId], [Name], [Phone], [Email], [Message], [IsRead], [CreatedDate]) VALUES (24, N'Tran Duc Tai', N'03712345677', N'0582325013', N'ĐỒ ÁN CƠ SỞ 
NGÀNH CÔNG NGHỆ THÔNG TIN
', 1, CAST(N'2023-01-01T13:16:27.973' AS DateTime))
SET IDENTITY_INSERT [dbo].[mail] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [order]) VALUES (1, N'TRANG CHỦ', N'../Home', 1, 1)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [order]) VALUES (2, N'GIỚI THIỆU', N'../About', 1, 2)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [order]) VALUES (3, N'XE', N'../Cars', 1, 3)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [order]) VALUES (4, N'GIÁ CẢ', N'../Pricing', 1, 4)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [order]) VALUES (5, N'BÀI VIẾT ', N'../Blog', 1, 5)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [order]) VALUES (6, N'LIÊN HỆ', N'../Contact', 1, 6)
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[rate] ON 

INSERT [dbo].[rate] ([id], [name], [job], [content], [IsActive], [image]) VALUES (1, N'Đinh Nhật Thông', N'Công nhân', N'Nhân viên rất thân thiện và chuyên nghiệp, tư vấn rất kỹ về những dịch vụ mà họ cung cấp, giá thành rất hợp lý và cái quan trọng rằng họ bán đúng như những gì mà đã giới thiệu trước đó, tôi đã đặt trọn gói cho dv vé vinpearl land, xe máy và tour , xin cảm ơn.', 1, N'/Content/images/rate/nx3.jpg')
INSERT [dbo].[rate] ([id], [name], [job], [content], [IsActive], [image]) VALUES (2, N'Nguyễn Thị Hà', N'Giáo viên', N'Công ty chúng tôi đã sử dụng dịch vụ ở đây để giúp khách hàng bên chúng tôi có được 1 chuyến du lịch Đà Nẵng trọn vẹn. Chúng tôi cảm thấy rất hài lòng về sự nhiệt tình, thân thiện, vui vẻ và hỗ trợ rất nhanh của bạn chủ cũng như nhân viên. Rất xứng đáng để được đánh giá 5* !.', 1, N'/Content/images/rate/nx1.jpg')
INSERT [dbo].[rate] ([id], [name], [job], [content], [IsActive], [image]) VALUES (3, N'Nguyễn Tú Thái', N'Nhân viên văn phòng', N'Nhờ các bạn giúp cho chúng tôi có một chuyến du lịch chọn vẹn! Các bạn rất thân thiện làm việc có trách nhiệm! Người dân ở Nghệ An cũng vậy, rất gần gủi … đúng là thành phố đáng sống.', 1, N'/Content/images/rate/nx2.jpg')
INSERT [dbo].[rate] ([id], [name], [job], [content], [IsActive], [image]) VALUES (4, N'Phùng Ngọc Minh Đoàn', N'Giảng Viên', N'k! Mình thuê 3 xe ab cho 3 ngay mà xe hoạt động rất tốt. Chị gái giao xe cũng rất vui tính dễ thương. Giá thuê cũng rất tốt.', 1, N'/Content/images/rate/nx5.jpg')
INSERT [dbo].[rate] ([id], [name], [job], [content], [IsActive], [image]) VALUES (5, N'Trần Đức Tài', N'Kỹ Sư', N'Lần đầu trải nghiệm du lịch phượt ở Nghệ An, và cũng là lần đầu thuê xe máy. Mọi thứ rất hoàn hảo.Giá rẻ, giao xe nhanh và nhân viên cũng rất nhiệt tình.', 1, N'/Content/images/rate/nx4.jpg')
SET IDENTITY_INSERT [dbo].[rate] OFF
GO
SET IDENTITY_INSERT [dbo].[rent] ON 

INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (12, N'', N'Trần Đức Tài', N'0582325013', N'ductaifvr@gmail.com', CAST(N'2022-12-23T22:55:17.320' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (15, N'', N'Trần Đức Tài', N'0582325013', N'ductaifvr@gmail.com', CAST(N'2022-12-25T22:00:46.287' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (16, N'', N'Trần Đức Tài', N'0582325013', N'ductaifvr@gmail.com', CAST(N'2022-12-25T22:01:29.353' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (17, N'', N'Trần Đức Tài', N'0582325013', N'ductaifvr@gmail.com', CAST(N'2022-12-27T21:38:49.537' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (18, N'Không :v', N'Trần Đức Tài', N'0582325013', N'ductaifvr@gmail.com', CAST(N'2022-12-28T23:26:36.560' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (19, N'', N'Trần Đức Tài', N'0582325013', N'ductaifvr@gmail.com', CAST(N'2023-01-01T12:53:48.213' AS DateTime))
SET IDENTITY_INSERT [dbo].[rent] OFF
GO
SET IDENTITY_INSERT [dbo].[rentDetails] ON 

INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (13, 12, 16, 2)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (19, 15, 16, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (20, 15, 3, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (21, 15, 9, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (22, 16, 16, 3)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (23, 17, 1, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (24, 17, 2, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (25, 18, 2, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (26, 19, 3, 2)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_bike], [amount]) VALUES (27, 19, 1, 1)
SET IDENTITY_INSERT [dbo].[rentDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[type] ON 

INSERT [dbo].[type] ([id_type], [type], [price_hour], [price_day], [price_month], [image]) VALUES (1, N'HONDA', 10000, 200000, 3000000, N'/Content/images/honda.jpg')
INSERT [dbo].[type] ([id_type], [type], [price_hour], [price_day], [price_month], [image]) VALUES (2, N'PIAGGIO', 10000, 200000, 3000000, N'/Content/images/piaggio.jpg')
INSERT [dbo].[type] ([id_type], [type], [price_hour], [price_day], [price_month], [image]) VALUES (3, N'SUZUKI', 10000, 200000, 3000000, N'/Content/images/suzuki.jpg')
INSERT [dbo].[type] ([id_type], [type], [price_hour], [price_day], [price_month], [image]) VALUES (4, N'SYM', 10000, 200000, 3000000, N'/Content/images/sym.jpg')
INSERT [dbo].[type] ([id_type], [type], [price_hour], [price_day], [price_month], [image]) VALUES (5, N'VINFAST', 10000, 200000, 3000000, N'/Content/images/vinfast.jpg')
INSERT [dbo].[type] ([id_type], [type], [price_hour], [price_day], [price_month], [image]) VALUES (6, N'YAMAHA', 10000, 200000, 3000000, N'/Content/images/yamaha.jpg')
SET IDENTITY_INSERT [dbo].[type] OFF
GO
ALTER TABLE [dbo].[bike]  WITH NOCHECK ADD  CONSTRAINT [FK_bike_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[type] ([id_type])
GO
ALTER TABLE [dbo].[bike] NOCHECK CONSTRAINT [FK_bike_type]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_rent] FOREIGN KEY([id_rent])
REFERENCES [dbo].[rent] ([id_rent])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_rent]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_blog] FOREIGN KEY([id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_blog]
GO
ALTER TABLE [dbo].[rentDetails]  WITH CHECK ADD  CONSTRAINT [FK_rentDetails_bike] FOREIGN KEY([id_bike])
REFERENCES [dbo].[bike] ([id_bike])
GO
ALTER TABLE [dbo].[rentDetails] CHECK CONSTRAINT [FK_rentDetails_bike]
GO
ALTER TABLE [dbo].[rentDetails]  WITH CHECK ADD  CONSTRAINT [FK_rentDetails_rent] FOREIGN KEY([id_rent])
REFERENCES [dbo].[rent] ([id_rent])
GO
ALTER TABLE [dbo].[rentDetails] CHECK CONSTRAINT [FK_rentDetails_rent]
GO
