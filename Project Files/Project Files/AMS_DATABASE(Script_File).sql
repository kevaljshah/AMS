USE [AMS_DATABASE]
GO
/****** Object:  View [dbo].[RandomNewID]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RandomNewID]
AS
SELECT NEWID() AS [NewID]
GO
/****** Object:  Table [dbo].[profile_image]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profile_image](
	[img_id] [bigint] IDENTITY(1,1) NOT NULL,
	[std_id] [bigint] NULL,
	[fct_id] [bigint] NULL,
	[image_filename] [nvarchar](50) NOT NULL,
	[image_filebytes] [varbinary](max) NOT NULL,
	[set_profile_image] [bit] NOT NULL,
	[image_timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_profile_image] PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[page_image]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[page_image](
	[img_id] [int] IDENTITY(1,1) NOT NULL,
	[img_name] [nvarchar](50) NULL,
	[img_filename] [nvarchar](50) NULL,
	[img_filebytes] [varbinary](max) NULL,
	[tag_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_page_image] PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[page_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[page_detail](
	[page_id] [int] IDENTITY(1,1) NOT NULL,
	[page_name] [nvarchar](50) NULL,
	[page_title] [nvarchar](50) NULL,
	[page_visible] [bit] NULL,
	[menu_id] [int] NULL,
	[submenu_text] [nvarchar](50) NULL,
	[page_linked] [bit] NULL,
 CONSTRAINT [PK_page_1] PRIMARY KEY CLUSTERED 
(
	[page_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newsletter_success]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsletter_success](
	[nwt_success_id] [bigint] IDENTITY(1,1) NOT NULL,
	[nwt_std_id] [bigint] NULL,
	[nwt_id] [int] NULL,
	[nwt_success_timestamp] [datetime] NULL,
 CONSTRAINT [PK_newsletter_s] PRIMARY KEY CLUSTERED 
(
	[nwt_success_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newsletter_fail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsletter_fail](
	[nwt_fail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[nwt_std_id] [bigint] NULL,
	[nwt_id] [int] NULL,
	[nwt_success_timestamp] [datetime] NULL,
 CONSTRAINT [PK_newsletter_fail] PRIMARY KEY CLUSTERED 
(
	[nwt_fail_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newsletter_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsletter_detail](
	[nwt_id] [int] IDENTITY(1,1) NOT NULL,
	[nwt_fct_id] [bigint] NULL,
	[nwt_subject] [nvarchar](50) NULL,
	[nwt_body] [nvarchar](max) NULL,
	[nwt_timestamp] [datetime] NULL,
 CONSTRAINT [PK_nwt] PRIMARY KEY CLUSTERED 
(
	[nwt_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[message_detail](
	[msg_id] [bigint] IDENTITY(1,1) NOT NULL,
	[msg_from_std] [bigint] NULL,
	[msg_to_std] [bigint] NULL,
	[msg_from_fct] [bigint] NULL,
	[msg_to_fct] [bigint] NULL,
	[msg_text] [varbinary](max) NULL,
	[msg_timestamp] [datetime] NULL,
 CONSTRAINT [PK_message_detai] PRIMARY KEY CLUSTERED 
(
	[msg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[menu_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu_detail](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_name] [nvarchar](50) NULL,
	[menu_visible] [bit] NULL,
	[show_on_menu_bar] [bit] NULL,
	[menu_text] [nvarchar](50) NULL,
 CONSTRAINT [PK_folder_detail] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member_type]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_type](
	[mem_id] [int] IDENTITY(1,1) NOT NULL,
	[mem_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_member_type] PRIMARY KEY CLUSTERED 
(
	[mem_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[label_tag]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[label_tag](
	[lbl_tag_id] [int] IDENTITY(1,1) NOT NULL,
	[lbl_id] [nvarchar](50) NOT NULL,
	[lbl_text] [nvarchar](50) NOT NULL,
	[lbl_visible] [bit] NOT NULL,
	[lbl_default] [nvarchar](50) NOT NULL,
	[page_id] [int] NOT NULL,
 CONSTRAINT [PK_label_tag_1] PRIMARY KEY CLUSTERED 
(
	[lbl_tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forgot_username]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forgot_username](
	[forgot_username_id] [int] IDENTITY(1,1) NOT NULL,
	[new_username] [varbinary](128) NULL,
	[std_id] [bigint] NULL,
	[fct_id] [bigint] NULL,
	[active] [bit] NULL,
	[forgot_username_timestamp] [datetime] NULL,
 CONSTRAINT [PK_forgot_username] PRIMARY KEY CLUSTERED 
(
	[forgot_username_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[forgot_password]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forgot_password](
	[forgot_password_id] [int] IDENTITY(1,1) NOT NULL,
	[new_password] [varbinary](128) NULL,
	[std_id] [bigint] NULL,
	[fct_id] [bigint] NULL,
	[active] [bit] NULL,
	[forgot_password_timestamp] [datetime] NULL,
 CONSTRAINT [PK_forgot_password_1] PRIMARY KEY CLUSTERED 
(
	[forgot_password_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[faculty_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faculty_detail](
	[fct_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fct_sap_id] [nvarchar](50) NOT NULL,
	[fct_title] [int] NULL,
	[fct_first_name] [nvarchar](50) NOT NULL,
	[fct_middle_name] [nvarchar](50) NULL,
	[fct_last_name] [nvarchar](50) NOT NULL,
	[fct_department] [int] NULL,
	[fct_designation] [nvarchar](50) NULL,
	[fct_domain] [nvarchar](50) NULL,
	[fct_current_research] [nvarchar](50) NULL,
	[fct_email] [nvarchar](50) NULL,
	[fct_mobile] [nvarchar](50) NULL,
	[fct_username] [varbinary](128) NOT NULL,
	[fct_password] [varbinary](128) NOT NULL,
	[mem_id] [int] NOT NULL,
	[fct_registered] [int] NULL,
	[fct_gender] [int] NULL,
 CONSTRAINT [PK_fct] PRIMARY KEY CLUSTERED 
(
	[fct_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[excel_sheet]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[excel_sheet](
	[excel_id] [int] IDENTITY(1,1) NOT NULL,
	[excel_name] [nvarchar](50) NULL,
	[excel_file] [varbinary](max) NULL,
	[timestamp] [datetime] NULL,
	[count_success] [int] NULL,
	[count_failed] [int] NULL,
 CONSTRAINT [PK_excel_sheet] PRIMARY KEY CLUSTERED 
(
	[excel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[event_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event_detail](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[event_name] [nvarchar](50) NULL,
	[event_committee_name] [nvarchar](50) NULL,
	[event_description] [nvarchar](max) NULL,
	[event_from_date] [nvarchar](50) NULL,
	[event_to_date] [nvarchar](50) NULL,
	[coordinator1_name] [nvarchar](50) NULL,
	[coordinator1_mobile] [nvarchar](50) NULL,
	[coordinator1_email] [nvarchar](50) NULL,
	[coordinator2_name] [nvarchar](50) NULL,
	[coordinator2_mobile] [nvarchar](50) NULL,
	[coordinator2_email] [nvarchar](50) NULL,
	[event_poster_bytes] [varbinary](max) NULL,
	[event_poster_filename] [nvarchar](50) NULL,
	[event_added_timestamp] [datetime] NULL,
	[event_from_time] [nvarchar](50) NULL,
	[event_to_time] [nvarchar](50) NULL,
 CONSTRAINT [PK_event_details] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dropdown_tag]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dropdown_tag](
	[ddl_tag_id] [int] IDENTITY(1,1) NOT NULL,
	[ddl_id] [nvarchar](50) NOT NULL,
	[ddl_text] [nvarchar](50) NOT NULL,
	[ddl_visible] [bit] NOT NULL,
	[ddl_order] [int] NOT NULL,
	[ddl_default] [nvarchar](50) NOT NULL,
	[reference_id] [int] NULL,
 CONSTRAINT [PK_dropdown] PRIMARY KEY CLUSTERED 
(
	[ddl_tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[button_tag]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[button_tag](
	[btn_tag_id] [int] IDENTITY(1,1) NOT NULL,
	[btn_id] [nvarchar](50) NOT NULL,
	[btn_text] [nvarchar](50) NOT NULL,
	[btn_default] [nvarchar](50) NOT NULL,
	[btn_visible] [bit] NOT NULL,
	[btn_causesvalidation] [bit] NOT NULL,
	[page_id] [int] NOT NULL,
 CONSTRAINT [PK_buton_tag_1] PRIMARY KEY CLUSTERED 
(
	[btn_tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assigned_role]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assigned_role](
	[assigned_role_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_id] [int] NULL,
	[page_id] [int] NULL,
	[default_page] [bit] NULL,
	[mem_id] [int] NULL,
	[page_visible] [bit] NULL,
	[login_default] [bit] NULL,
	[menu_order] [int] NULL,
	[submenu_order] [int] NULL,
 CONSTRAINT [PK_assigned_roll1] PRIMARY KEY CLUSTERED 
(
	[assigned_role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[album_images]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[album_images](
	[alb_img_id] [bigint] IDENTITY(1,1) NOT NULL,
	[alb_id] [bigint] NULL,
	[ald_img_filebytes] [varbinary](max) NULL,
	[ald_img_filename] [nvarchar](max) NULL,
	[ald_img_timestamp] [datetime] NULL,
	[ald_img_visible] [bit] NULL,
 CONSTRAINT [PK_album_images] PRIMARY KEY CLUSTERED 
(
	[alb_img_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[album_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[album_detail](
	[alb_id] [bigint] IDENTITY(1,1) NOT NULL,
	[alb_name] [nvarchar](50) NULL,
	[alb_visible] [bit] NULL,
	[alb_timestamp] [datetime] NULL,
 CONSTRAINT [PK_album_detail_1] PRIMARY KEY CLUSTERED 
(
	[alb_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_detail](
	[tag_id] [int] IDENTITY(1,1) NOT NULL,
	[tag_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tag_detail_1] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_detail]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_detail](
	[std_id] [bigint] IDENTITY(1,1) NOT NULL,
	[std_gr_no] [nvarchar](50) NOT NULL,
	[std_roll_no] [nvarchar](50) NOT NULL,
	[std_first_name] [nvarchar](50) NOT NULL,
	[std_middle_name] [nvarchar](50) NULL,
	[std_last_name] [nvarchar](50) NOT NULL,
	[std_gender] [int] NULL,
	[std_division] [int] NULL,
	[std_program] [int] NULL,
	[std_stream] [int] NULL,
	[std_campus] [int] NULL,
	[std_passing_year] [int] NULL,
	[std_dob] [nvarchar](50) NULL,
	[std_relationship_status] [nvarchar](50) NULL,
	[std_company_name] [nvarchar](50) NULL,
	[std_designaton] [nvarchar](50) NULL,
	[std_email] [nvarchar](50) NULL,
	[std_mobile_no] [nvarchar](50) NULL,
	[std_landline] [nvarchar](50) NULL,
	[std_country] [int] NULL,
	[std_address_line1] [nvarchar](50) NULL,
	[std_address_line2] [nvarchar](50) NULL,
	[std_city] [nvarchar](50) NULL,
	[std_state] [nvarchar](50) NULL,
	[std_pincode] [nvarchar](50) NULL,
	[std_username] [varbinary](128) NOT NULL,
	[std_password] [varbinary](128) NOT NULL,
	[mem_id] [int] NOT NULL,
	[std_registered] [int] NULL,
 CONSTRAINT [PK_std] PRIMARY KEY CLUSTERED 
(
	[std_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[watermark_tag]    Script Date: 04/23/2014 15:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[watermark_tag](
	[wm_tag_id] [int] IDENTITY(1,1) NOT NULL,
	[wm_id] [nvarchar](50) NOT NULL,
	[wm_text] [nvarchar](50) NOT NULL,
	[wm_default] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_watermark_tag] PRIMARY KEY CLUSTERED 
(
	[wm_tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_security_key]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_security_key]
@pass nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	--create master key encryption by password = 'p@sswOrd'
	
	--create asymmetric key asymkey with algorithm = RSA_1024
	
	insert into pass2 values(ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@pass))
	
	--SELECT convert(nvarchar(MAX), DecryptByAsymKey(AsymKey_ID('AsymKey'), password1)) as password1 FROM pass2 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_edit_faculty_ace]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_edit_faculty_ace]
@prefixText nvarchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT fct_id,fct_sap_id,fct_first_name,fct_middle_name,fct_last_name FROM faculty_detail WHERE fct_first_name LIKE @prefixText+'%' 
	OR fct_middle_name LIKE @prefixText+'%' OR fct_last_name LIKE @prefixText+'%' OR fct_sap_id LIKE @prefixText+'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdown_detail_selected_value]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_dropdown_detail_selected_value]
@ddl_id nvarchar(50),
@selected_value nvarchar(50)

AS
BEGIN

	SELECT ddl_tag_id, ddl_text,ddl_visible FROM dropdown_tag WHERE ddl_id=@ddl_id AND reference_id=@selected_value ORDER BY ddl_order ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdown_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_dropdown_detail]
@ddl_id nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(ddl_tag_id) FROM dropdown_tag  WHERE ddl_id=@ddl_id)>0)
	BEGIN
		SELECT ddl_tag_id, ddl_text,ddl_visible FROM dropdown_tag 
		WHERE ddl_id=@ddl_id AND ddl_visible='true' AND reference_id IS NULL ORDER BY ddl_order ASC
	END
	
	ELSE IF((SELECT COUNT(ddl_tag_id) FROM dropdown_tag  WHERE ddl_id=@ddl_id)=0 AND (SELECT COUNT(menu_id) FROM menu_detail WHERE menu_id='1' AND menu_name='Select Menu')=1 AND @ddl_id='ddl_menu_name')
	BEGIN
		SELECT menu_id,menu_name,menu_visible FROM menu_detail where menu_visible='true'
	END
	
	ELSE IF((SELECT COUNT(ddl_tag_id) FROM dropdown_tag  WHERE ddl_id=@ddl_id)=0 AND (SELECT COUNT(mem_id) FROM member_type WHERE mem_id='1' AND mem_type='Select User')=1 AND @ddl_id='ddl_select_role')
	BEGIN
		SELECT mem_id,mem_type,CAST('1' AS BIT) AS ddl_visible FROM member_type 
	END
	
	ELSE IF((SELECT COUNT(ddl_tag_id) FROM dropdown_tag  WHERE ddl_id=@ddl_id)=0 AND @ddl_id='ddl_album_name')
	BEGIN
		CREATE TABLE #temp3 (ddl_tag_id bigint,ddl_text nvarchar(50),ddl_visible bit)
		INSERT INTO #temp3 VALUES(0,'SELECT ALBUM','TRUE')
		INSERT INTO #temp3 SELECT alb_id,alb_name,alb_visible FROM album_detail
		SELECT ddl_tag_id,ddl_text,ddl_visible FROM #temp3
	END
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_create_newsletter_success]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_create_newsletter_success]
@std_id bigint,
@nwt_id int
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	SET @timestamp=CURRENT_TIMESTAMP


	INSERT INTO newsletter_success VALUES(@std_id,@nwt_id,@timestamp)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_create_newsletter_individual]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_create_newsletter_individual]
@gr_no nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT std_email,std_gr_no,std_first_name,std_middle_name,std_last_name,std_id FROM student_detail WHERE std_gr_no = @gr_no
END
GO
/****** Object:  StoredProcedure [dbo].[sp_create_newsletter_group]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_create_newsletter_group]
@passing_year nvarchar(50),
@campus nvarchar(50),
@program nvarchar(50),
@stream nvarchar(50),
@division nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT std_email,std_gr_no,std_first_name,std_middle_name,std_last_name FROM student_detail WHERE std_passing_year LIKE '%'+@passing_year+'%' AND
		std_campus LIKE '%'+@campus+'%' AND std_program LIKE '%'+@program+'%'
		AND std_stream LIKE '%'+@stream+'%' AND std_division LIKE '%'+@division+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_create_newsletter_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_create_newsletter_detail]
@txt_subject nvarchar(50),
@txt_body nvarchar(MAX)
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	SET @timestamp=CURRENT_TIMESTAMP
	
	INSERT INTO newsletter_detail(nwt_subject,nwt_body,nwt_timestamp) VALUES(@txt_subject,@txt_body,@timestamp)
	
	SELECT nwt_id FROM newsletter_detail WHERE nwt_timestamp = @timestamp
END
GO
/****** Object:  StoredProcedure [dbo].[sp_create_newsletter_ace]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_create_newsletter_ace]
@prefixText nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT std_email, std_id, std_gr_no, std_first_name, std_middle_name,std_last_name FROM student_detail WHERE std_email IS NOT NULL AND std_first_name LIKE '%'+@prefixText+'%' 
	OR std_email IS NOT NULL AND std_middle_name LIKE '%'+@prefixText+'%' OR std_email IS NOT NULL AND std_last_name LIKE '%'+@prefixText+'%' OR std_email IS NOT NULL AND std_email LIKE '%'+@prefixText+'%' 
	OR std_email IS NOT NULL AND std_gr_no LIKE '%'+@prefixText+'%' ORDER BY std_first_name,std_middle_name,std_last_name
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_student_detail_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_student_detail_val]
@std_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT std_first_name,std_middle_name,std_last_name,std_email,std_mobile_no,std_landline,std_dob,std_country,std_address_line1,std_address_line2,std_city,std_state,
	std_pincode,std_company_name,std_designaton,std_gender,std_relationship_status,(CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), std_username)) COLLATE Latin1_General_CS_AS) as std_username FROM student_detail WHERE std_id=@std_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_role_ace_selected_text]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_role_ace_selected_text]
@hf_change_role_sap_id nvarchar(50) 
AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(std_id) FROM student_detail WHERE std_gr_no=@hf_change_role_sap_id)=1)
	BEGIN
		SELECT mem_id FROM student_detail WHERE std_gr_no=@hf_change_role_sap_id
	END
	
	ELSE 
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@hf_change_role_sap_id)=1)
	BEGIN
		SELECT mem_id FROM faculty_detail WHERE fct_sap_id=@hf_change_role_sap_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_role_ace]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_role_ace]
@prefixText nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT std_id AS id, std_gr_no AS sap_id, std_first_name AS first_name, std_middle_name AS middle_name,std_last_name AS last_name FROM student_detail WHERE std_first_name LIKE @prefixText+'%' 
	OR std_middle_name LIKE @prefixText+'%' OR std_last_name LIKE @prefixText+'%' OR std_gr_no LIKE @prefixText+'%' 
	UNION
	SELECT fct_id,fct_sap_id,fct_first_name,fct_middle_name,fct_last_name FROM faculty_detail WHERE fct_first_name LIKE @prefixText+'%' 
	OR fct_middle_name LIKE @prefixText+'%' OR fct_last_name LIKE @prefixText+'%'  OR fct_sap_id LIKE @prefixText+'%' 
	ORDER BY first_name,middle_name,last_name
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_role]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_role]
@hf_change_role_sap_id nvarchar(50),
@ddl_select_role nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(std_id) FROM student_detail WHERE std_gr_no=@hf_change_role_sap_id)=1)
	BEGIN
		UPDATE student_detail SET mem_id=@ddl_select_role WHERE std_gr_no=@hf_change_role_sap_id
		SELECT mem_id FROM student_detail WHERE std_gr_no=@hf_change_role_sap_id AND mem_id=@ddl_select_role
	END
	
	ELSE 
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@hf_change_role_sap_id)=1)
	BEGIN
		UPDATE faculty_detail SET mem_id=@ddl_select_role WHERE fct_sap_id=@hf_change_role_sap_id
		SELECT mem_id FROM faculty_detail WHERE fct_sap_id=@hf_change_role_sap_id AND mem_id=@ddl_select_role
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_profile_image_student_upload]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_profile_image_student_upload]
@std_id bigint,
@filename nvarchar(50),
@filebytes varbinary(MAX)
AS
BEGIN
DECLARE @timestamp as datetime

	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	IF((SELECT COUNT(img_id) FROM profile_image WHERE std_id=@std_id)=0)
	BEGIN
		INSERT INTO profile_image(std_id,image_filename,image_filebytes,set_profile_image,image_timestamp) 
		VALUES(@std_id,@filename,@filebytes,'True',@timestamp)
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND std_id=@std_id
	END
	
	ELSE IF((SELECT COUNT(img_id) FROM profile_image WHERE std_id=@std_id)>0)
	BEGIN
		UPDATE profile_image SET image_filename=@filename,image_filebytes=@filebytes, set_profile_image='True',image_timestamp=@timestamp WHERE std_id=@std_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND std_id=@std_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_profile_image_student_remove]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_profile_image_student_remove]
@std_id bigint
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	SELECT img_id FROM profile_image WHERE std_id=@std_id
	IF((SELECT COUNT(img_id) FROM profile_image WHERE std_id=@std_id AND set_profile_image='True')>0)
	BEGIN
		UPDATE profile_image SET set_profile_image='False',image_timestamp=@timestamp WHERE std_id=@std_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND std_id=@std_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_profile_image_faculty_upload]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_profile_image_faculty_upload]
@fct_id bigint,
@filename nvarchar(50),
@filebytes varbinary(MAX)
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	IF((SELECT COUNT(fct_id) FROM profile_image WHERE fct_id=@fct_id)=0)
	BEGIN
		INSERT INTO profile_image(fct_id,image_filename,image_filebytes,set_profile_image,image_timestamp)
		 VALUES(@fct_id,@filename,@filebytes,'True',@timestamp)
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND fct_id=@fct_id
	END
	
	ELSE IF ((SELECT COUNT(fct_id) FROM profile_image WHERE fct_id=@fct_id)>0)
	BEGIN
		UPDATE profile_image SET image_filename=@filename,image_filebytes=@filebytes, set_profile_image='True',image_timestamp=@timestamp WHERE fct_id=@fct_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND fct_id=@fct_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_change_profile_image_faculty_remove]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_change_profile_image_faculty_remove]
@fct_id bigint
AS
BEGIN
DECLARE @timestamp as datetime

	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	SELECT img_id FROM profile_image WHERE fct_id=@fct_id
	IF((SELECT COUNT(img_id) FROM profile_image WHERE fct_id=@fct_id AND set_profile_image='True')>0)
	BEGIN
		UPDATE profile_image SET set_profile_image='False',image_timestamp=@timestamp WHERE fct_id=@fct_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND fct_id=@fct_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_button_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_button_detail]
@page_id int,
@btn_id nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT btn_text,btn_visible,btn_causesvalidation FROM button_tag WHERE btn_id=@btn_id AND page_id=@page_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_assign_role]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_assign_role]
@tn_parent int,
@tn_child int,
@tn_child_visible bit,
@ddl_select_role int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role)=0)
	BEGIN
		INSERT INTO assigned_role(menu_id,page_id,page_visible,mem_id,default_page,login_default,menu_order,submenu_order) VALUES(@tn_parent,@tn_child,@tn_child_visible,@ddl_select_role,'FALSE','FALSE',@tn_parent,@tn_child)
		SELECT assigned_role_id FROM assigned_role WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role AND page_visible=@tn_child_visible
	END
	
	ELSE IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role)=1)
	BEGIN
		UPDATE assigned_role SET page_visible=@tn_child_visible WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role
		SELECT assigned_role_id FROM assigned_role WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role AND page_visible=@tn_child_visible
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_assign_default_page]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_assign_default_page]
@tn_parent int,
@tn_child int,
@ddl_select_role int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role)=1)
	BEGIN
		UPDATE assigned_role SET default_page='False' WHERE menu_id=@tn_parent AND mem_id=@ddl_select_role
		UPDATE assigned_role SET default_page='True' WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role
		
		SELECT assigned_role_id FROM assigned_role WHERE menu_id=@tn_parent AND page_id=@tn_child AND mem_id=@ddl_select_role AND default_page='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_page_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_page_detail]
@ddl_menu_name int,
@txt_page_name nvarchar(50),
@txt_page_title nvarchar(50),
@ddl_visibility nvarchar(50),
@txt_submenu_text nvarchar(50),
@ddl_page_linked nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(page_id) FROM page_detail WHERE page_name=@txt_page_name)=0 AND (SELECT COUNT(page_id) FROM page_detail WHERE page_title=@txt_page_title)=0)
	BEGIN
		INSERT INTO page_detail(page_name,page_title,page_visible,menu_id,submenu_text,page_linked) 
		VALUES(@txt_page_name,@txt_page_title,CAST(@ddl_visibility AS BIT),@ddl_menu_name,@txt_submenu_text,CAST(@ddl_page_linked AS BIT))
		
		SELECT page_id FROM page_detail WHERE page_name=@txt_page_name AND page_title=@txt_page_title
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_menu_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_menu_detail]
@txt_menu_name nvarchar(50),
@ddl_menu_visibility nvarchar(50),
@ddl_show_on_menu_bar nvarchar(50),
@txt_menu_text nvarchar(50)

AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(menu_name) FROM menu_detail WHERE menu_name=@txt_menu_name)=0)
	BEGIN
		INSERT INTO menu_detail(menu_name,menu_visible,show_on_menu_bar,menu_text) VALUES(@txt_menu_name,CAST(@ddl_menu_visibility as bit),CAST(@ddl_show_on_menu_bar as bit),@txt_menu_text)
		
		SELECT menu_id FROM menu_detail WHERE menu_name=@txt_menu_name 
	END
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_faculty_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_faculty_val]
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT fct_title,fct_gender,fct_department,fct_first_name,fct_middle_name,fct_last_name,fct_domain,fct_current_research,fct_email,fct_mobile,fct_designation FROM faculty_detail WHERE fct_id=@fct_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_faculty_profile_image]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_faculty_profile_image]
@fct_id bigint
AS
BEGIN

	SET NOCOUNT ON;
	
	if((SELECT COUNT(img_id) FROM profile_image WHERE fct_id=@fct_id AND set_profile_image='True')>0)
	BEGIN
		SELECT image_filebytes as img_filebytes,fct_id,image_filename FROM profile_image WHERE fct_id=@fct_id
	END
	
	ELSE IF((SELECT fct_gender FROM faculty_detail WHERE fct_id=@fct_id)='Male')
	BEGIN 
		SELECT img_filebytes,fct_id=@fct_id,img_filename FROM page_image WHERE img_name='Male Profile Image' AND tag_id='img_profile_image'
	END
	
	ELSE IF((SELECT fct_gender FROM faculty_detail WHERE fct_id=@fct_id)='Female')
	BEGIN 
		SELECT img_filebytes,fct_id=@fct_id,img_filename FROM page_image WHERE img_name='Female Profile Image' AND tag_id='img_profile_image'
	END
	
	ELSE
	BEGIN 
		SELECT img_filebytes,fct_id=@fct_id,img_filename FROM page_image WHERE img_name='Male Profile Image' AND tag_id='img_profile_image'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_faculty_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_faculty_detail]
@fct_id bigint
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT fct_sap_id,(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+' '+fct_first_name+' '+fct_middle_name+' '+fct_last_name as fct_name,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_department) AS fct_department,fct_designation,fct_domain,
	fct_current_research,fct_email,fct_mobile FROM faculty_detail WHERE fct_id=@fct_id
	
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_excel_upload]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_excel_upload]
@ddl_gr_no nvarchar(50),
@ddl_roll_no nvarchar(50),
@ddl_first_name nvarchar(50),
@ddl_middle_name nvarchar(50),
@ddl_last_name nvarchar(50),
@ddl_program nvarchar(50),
@ddl_stream nvarchar(50),
@ddl_division nvarchar(50),
@ddl_passing_year nvarchar(50),
@ddl_campus nvarchar(50)


AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT std_id FROM student_detail WHERE std_gr_no=@ddl_gr_no
	
	
	IF((SELECT count(std_id) FROM student_detail WHERE std_gr_no=@ddl_gr_no)>0)
	BEGIN
		PRINT 'USER ALREADY EXISTS'
	END
	
	ELSE
	BEGIN
	
		INSERT INTO student_detail(std_gr_no,std_roll_no,std_first_name,std_middle_name,std_last_name,std_program,std_stream,
		std_division,std_passing_year,std_campus,std_username,std_password,mem_id,std_registered,std_gender,std_relationship_status,std_country)
		VALUES(@ddl_gr_no,@ddl_roll_no,@ddl_first_name,@ddl_middle_name,@ddl_last_name,@ddl_program,@ddl_stream,@ddl_division,
		@ddl_passing_year,@ddl_campus,ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@ddl_gr_no),ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@ddl_gr_no),(SELECT mem_id FROM member_type WHERE mem_type='Student'),3,1,39,105)
	
		SELECT std_id,std_gr_no,std_roll_no,std_first_name,std_middle_name,std_last_name,
		(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_program) AS std_program,
		(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_stream) AS std_stream,
		(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_division) AS std_division,
		(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_passing_year) AS std_passing_year,
		(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_campus) AS std_campus FROM student_detail WHERE std_gr_no=@ddl_gr_no
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_event_poster]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_event_poster]
@event_id int
AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(event_poster_filename) FROM event_detail WHERE event_id=@event_id )>0)
	BEGIN
		SELECT event_poster_bytes,event_poster_filename,event_id FROM event_detail WHERE event_id=@event_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_event_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_event_detail]
@event_id nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT event_name,event_committee_name,	event_description,event_poster_filename,coordinator1_name,('(mobile:'+coordinator1_mobile+' email:'+coordinator1_email+')') as coordinator1_contact,coordinator2_name,
	('(mobile:'+coordinator2_mobile+' email:'+coordinator2_email+')') as coordinator2_contact FROM event_detail WHERE event_id=@event_id
	IF((SELECT event_to_date FROM event_detail WHERE event_id=@event_id)='')
	BEGIN
		SELECT CONVERT(VARCHAR(11),'2/28/2014',106) as event_date FROM event_detail WHERE event_id=@event_id 
	END
	ELSE
	BEGIN
		SELECT CONVERT(VARCHAR,'2/28/2014',106) as event_date FROM event_detail WHERE event_id=@event_id
	END
	
	IF((SELECT event_to_time FROM event_detail WHERE event_id=@event_id)='')
	BEGIN
		SELECT event_from_time as event_time FROM event_detail WHERE event_id=@event_id 
	END
	ELSE
	BEGIN
		SELECT (event_from_time+'-'+event_to_time) as event_time FROM event_detail WHERE event_id=@event_id
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_edit_member_page_student_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_edit_member_page_student_val]
@std_id bigint
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT std_gr_no,std_roll_no,std_first_name,std_middle_name,std_last_name,std_gender,std_division,std_program,std_stream,std_campus,std_passing_year,
	std_dob,std_relationship_status,std_company_name,std_designaton,std_email,std_mobile_no,std_landline,std_country,std_address_line1,
	std_address_line2,std_city,std_state,std_pincode,std_registered FROM student_detail WHERE std_id=@std_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_event_detail_without_poster]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_event_detail_without_poster]
@event_name nvarchar(50),
@event_committee_name nvarchar(50),
@event_description nvarchar(MAX),
@event_from_date nvarchar(50),
@event_to_date nvarchar(50),
@coordinator1_name nvarchar(50),
@coordinator2_name nvarchar(50),
@coordinator1_mobile nvarchar(50),
@coordinator2_mobile nvarchar(50),
@coordinator1_email nvarchar(50),
@coordinator2_email nvarchar(50),
@event_from_time nvarchar(50),
@event_to_time nvarchar(50)

AS
BEGIN
	DECLARE @time AS datetime
	SET NOCOUNT ON;
	SET @time = Current_timestamp
	
	INSERT INTO event_detail
	(event_name,event_committee_name,event_description,event_from_date,event_to_date,coordinator1_name,coordinator2_name,
	coordinator1_mobile,coordinator2_mobile,coordinator1_email,coordinator2_email,event_added_timestamp,event_from_time,event_to_time)
	VALUES(@event_name,@event_committee_name,@event_description,@event_from_date,@event_to_date,@coordinator1_name,@coordinator2_name,@coordinator1_mobile,
	@coordinator2_mobile,@coordinator1_email,@coordinator2_email,@time,@event_from_time,@event_to_time)
	
	SELECT event_id FROM event_detail WHERE event_added_timestamp=@time
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_event_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_event_detail]
@event_name nvarchar(50),
@event_committee_name nvarchar(50),
@event_description nvarchar(MAX),
@event_from_date nvarchar(50),
@event_to_date nvarchar(50),
@coordinator1_name nvarchar(50),
@coordinator2_name nvarchar(50),
@coordinator1_mobile nvarchar(50),
@coordinator2_mobile nvarchar(50),
@coordinator1_email nvarchar(50),
@coordinator2_email nvarchar(50),
@event_poster_bytes varbinary(MAX),
@event_poster_filename nvarchar(50),
@event_from_time nvarchar(50),
@event_to_time nvarchar(50)

AS
BEGIN
	DECLARE @time AS datetime
	SET NOCOUNT ON;
	SET @time = Current_timestamp
	
	INSERT INTO event_detail
	(event_name,event_committee_name,event_description,event_from_date,event_to_date,coordinator1_name,coordinator2_name,
	coordinator1_mobile,coordinator2_mobile,coordinator1_email,coordinator2_email,event_poster_bytes,event_poster_filename,event_added_timestamp,event_from_time,event_to_time)
	VALUES(@event_name,@event_committee_name,@event_description,@event_from_date,@event_to_date,@coordinator1_name,@coordinator2_name,@coordinator1_mobile,
	@coordinator2_mobile,@coordinator1_email,@coordinator2_email,@event_poster_bytes,@event_poster_filename,@time,@event_from_time,@event_to_time)
	
	SELECT event_id FROM event_detail WHERE event_added_timestamp=@time
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_default_selected_role_parent]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_default_selected_role_parent]
@ddl_select_role int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE mem_id=@ddl_select_role)>0)
	BEGIN
		SELECT DISTINCT menu_detail.menu_name,assigned_role.menu_id FROM menu_detail INNER JOIN assigned_role ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=@ddl_select_role AND assigned_role.page_visible='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_default_selected_role_child]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_default_selected_role_child]
@tn_parent int,
@ddl_select_role int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE mem_id=@ddl_select_role AND menu_id=@tn_parent)>0)
	BEGIN
		SELECT DISTINCT page_detail.page_name,assigned_role.page_id,assigned_role.default_page FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id and assigned_role.menu_id=@tn_parent AND assigned_role.mem_id=@ddl_select_role AND assigned_role.page_visible='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_album_images]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_album_images]
@album_id bigint,
@filename nvarchar(max),
@filebytes nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO album_images (alb_id,ald_img_filename,ald_img_filebytes,ald_img_timestamp,ald_img_visible) VALUES(@album_id,@filename,CONVERT(VARBINARY(MAX),@filebytes),CURRENT_TIMESTAMP,CAST('True' as bit))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_album]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_album]
@txt_album_name nvarchar(50),
@ddl_album_visibility nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(alb_id) FROM album_detail WHERE alb_name=@txt_album_name)=0)
	BEGIN
		INSERT INTO album_detail(alb_name,alb_visible,alb_timestamp) VALUES(@txt_album_name,CAST(@ddl_album_visibility as bit),CURRENT_TIMESTAMP)
		SELECT alb_id FROM album_detail WHERE alb_name=@txt_album_name
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_password_std_check]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_password_std_check]
@std_id bigint,
@new_password nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(forgot_password_id) FROM forgot_password WHERE std_id=@std_id and active='True' AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), new_password)) COLLATE Latin1_General_CS_AS)=@new_password)>0)
	BEGIN
		SELECT forgot_password_id FROM forgot_password WHERE std_id=@std_id and active='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_password_fct_check]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_password_fct_check]
@fct_id bigint,
@new_password nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(forgot_password_id) FROM forgot_password WHERE fct_id=@fct_id and active='True' AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), new_password)) COLLATE Latin1_General_CS_AS)=@new_password)>0)
	BEGIN
		SELECT forgot_password_id FROM forgot_password WHERE fct_id=@fct_id and active='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_label_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_label_detail]
@page_id int,
@lbl_id nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT lbl_text,lbl_visible FROM label_tag WHERE page_id=@page_id AND lbl_id = @lbl_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inbox_message_grid_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_inbox_message_grid_student]
@std_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	CREATE TABLE #temp_view(std_id bigint,fct_id bigint,msg_timestamp datetime)
	CREATE TABLE #temp_final(sap_id nvarchar(50),name nvarchar(max),msg_text nvarchar(max),msg_timestamp datetime)
	
	INSERT INTO #temp_view(std_id,msg_timestamp) SELECT msg_from_std AS msg_from,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_to_std=@std_id AND msg_from_std IS NOT NULL group by msg_from_std
	INSERT INTO #temp_view(fct_id,msg_timestamp) SELECT msg_from_fct AS msg_from,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_to_std=@std_id AND msg_from_fct IS NOT NULL group by msg_from_fct
		
	INSERT INTO #temp_final SELECT (SELECT std_gr_no FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT (std_first_name+' '+std_last_name) FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_from_std=#temp_view.std_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.std_id IS NOT NULL
	INSERT INTO #temp_final SELECT (SELECT fct_sap_id FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT ((SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+''+fct_first_name+' '+fct_last_name) FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_from_fct=#temp_view.fct_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.fct_id IS NOT NULL
	
	SELECT sap_id,name,msg_text,msg_timestamp FROM #temp_final  ORDER BY msg_timestamp DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inbox_message_grid_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_inbox_message_grid_faculty]
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	CREATE TABLE #temp_view(std_id bigint,fct_id bigint,msg_timestamp datetime)
	CREATE TABLE #temp_final(sap_id nvarchar(50),name nvarchar(max),msg_text nvarchar(max),msg_timestamp datetime)
	
	INSERT INTO #temp_view(std_id,msg_timestamp) SELECT msg_from_std AS msg_from,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_to_fct=@fct_id AND msg_from_std IS NOT NULL group by msg_from_std
	INSERT INTO #temp_view(fct_id,msg_timestamp) SELECT msg_from_fct AS msg_from,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_to_fct=@fct_id AND msg_from_fct IS NOT NULL group by msg_from_fct
		
	INSERT INTO #temp_final SELECT (SELECT std_gr_no FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT (std_first_name+' '+std_last_name) FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_from_std=#temp_view.std_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.std_id IS NOT NULL
	INSERT INTO #temp_final SELECT (SELECT fct_sap_id FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT ((SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+''+fct_first_name+' '+fct_last_name) FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_from_fct=#temp_view.fct_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.fct_id IS NOT NULL
	
	SELECT sap_id,name,msg_text,msg_timestamp FROM #temp_final  ORDER BY msg_timestamp DESC
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_username_std_check]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_username_std_check]
@std_id bigint,
@new_username nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	IF((SELECT COUNT(forgot_username_id) FROM forgot_username WHERE std_id=@std_id and active='True' AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), new_username)) COLLATE Latin1_General_CS_AS)=@new_username)>0)
	BEGIN
		SELECT forgot_username_id FROM forgot_username WHERE std_id=@std_id and active='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_username_fct_check]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_username_fct_check]
@fct_id bigint,
@new_username nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	IF((SELECT COUNT(forgot_username_id) FROM forgot_username WHERE fct_id=@fct_id and active='True' AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), new_username)) COLLATE Latin1_General_CS_AS)=@new_username)>0)
	BEGIN
		SELECT forgot_username_id FROM forgot_username WHERE fct_id=@fct_id and active='True'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_edit_member_ace]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_edit_member_ace]
@prefixText nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT std_id,std_gr_no,std_first_name,std_middle_name,std_last_name FROM student_detail WHERE std_first_name LIKE @prefixText+'%' 
	OR std_middle_name LIKE @prefixText+'%' OR std_last_name LIKE @prefixText+'%' OR std_gr_no LIKE @prefixText+'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_edit_faculty_page_faculty_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_edit_faculty_page_faculty_val]
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT fct_id,fct_title,fct_first_name,fct_middle_name,fct_last_name,fct_gender,fct_sap_id,fct_department,fct_designation,fct_domain,fct_current_research,fct_email,fct_mobile FROM faculty_detail WHERE fct_id=@fct_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_assign_default]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_assign_default]
@ddl_select_role int,
@ddl_page_name int
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE assigned_role SET login_default='False' WHERE mem_id=@ddl_select_role
	UPDATE assigned_role SET login_default='True' WHERE mem_id=@ddl_select_role AND page_id=@ddl_page_name
	select login_default FROM assigned_role where mem_id=@ddl_select_role AND page_id=@ddl_page_name
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_std_profile_image]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_std_profile_image]
@std_id bigint,
@filename nvarchar(50),
@filebytes varbinary(MAX)

AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	IF((SELECT COUNT(img_id) FROM profile_image WHERE std_id=@std_id)=0)
	BEGIN
		INSERT INTO profile_image(std_id,image_filename,image_filebytes,set_profile_image,image_timestamp) 
		VALUES(@std_id,@filename,@filebytes,'True',@timestamp)
		
		UPDATE student_detail SET std_registered=0 WHERE std_id=@std_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND std_id=@std_id
		
		SELECT std_registered,mem_id FROM student_detail WHERE std_id=@std_id
	END
	
	ELSE IF((SELECT COUNT(img_id) FROM profile_image WHERE std_id=@std_id)>0)
	BEGIN
		UPDATE profile_image SET image_filename=@filename,image_filebytes=@filebytes, set_profile_image='True',image_timestamp=@timestamp WHERE std_id=@std_id
		
		UPDATE student_detail SET std_registered=0 WHERE std_id=@std_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND std_id=@std_id
		
		SELECT std_registered,mem_id FROM student_detail WHERE std_id=@std_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_redirect]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_redirect]
@mem_id int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT DISTINCT '~/'+menu_detail.menu_name+'/'+(SELECT page_detail.page_name FROM page_detail WHERE page_detail.page_id=assigned_role.page_id) as post_back_url FROM menu_detail INNER JOIN assigned_role ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=@mem_id AND assigned_role.page_visible='True' and assigned_role.login_default='True'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_master_register_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_master_register_student]
@std_id bigint
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT std_registered,mem_id FROM student_detail WHERE std_id=@std_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_master_register_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_master_register_faculty]
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT fct_registered,mem_id FROM faculty_detail WHERE fct_id=@fct_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_fct_profile_image]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_fct_profile_image]
@fct_id bigint,
@filename nvarchar(50),
@filebytes varbinary(MAX)

AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	IF((SELECT COUNT(fct_id) FROM profile_image WHERE fct_id=@fct_id)=0)
	BEGIN
		INSERT INTO profile_image(fct_id,image_filename,image_filebytes,set_profile_image,image_timestamp)
		 VALUES(@fct_id,@filename,@filebytes,'True',@timestamp)
		
		UPDATE faculty_detail SET fct_registered=0 WHERE fct_id=@fct_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND fct_id=@fct_id
		
		SELECT fct_registered,mem_id FROM faculty_detail WHERE fct_id=@fct_id
	END
	
	ELSE IF ((SELECT COUNT(fct_id) FROM profile_image WHERE fct_id=@fct_id)>0)
	BEGIN
		UPDATE profile_image SET image_filename=@filename,image_filebytes=@filebytes, set_profile_image='True',image_timestamp=@timestamp WHERE fct_id=@fct_id
		
		UPDATE faculty_detail SET fct_registered=0 WHERE fct_id=@fct_id
		
		SELECT img_id FROM profile_image WHERE image_timestamp=@timestamp AND fct_id=@fct_id
		
		SELECT fct_registered,mem_id FROM faculty_detail WHERE fct_id=@fct_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_search_members_count]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_search_members_count]
@ddl_passing_year nvarchar(50),
@ddl_campus nvarchar(50),
@ddl_program nvarchar(50),
@ddl_stream nvarchar(50),
--@ddl_division nvarchar(50),
@ddl_registration_status nvarchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE #temp_passing_year (std_id bigint)
	CREATE TABLE #temp_campus (std_id bigint)
	CREATE TABLE #temp_program (std_id bigint)
	CREATE TABLE #temp_stream (std_id bigint)
	--CREATE TABLE #temp_division (std_id bigint)
	CREATE TABLE #temp_registration_status (std_id bigint)
	
	--PASSING YEAR
	IF(@ddl_passing_year='ALL')
	BEGIN
		INSERT INTO #temp_passing_year SELECT std_id from student_detail where std_passing_year is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_passing_year SELECT std_id from student_detail where std_passing_year=@ddl_passing_year
	END
	
	--CAMPUS
	IF(@ddl_campus='ALL')
	BEGIN 
		INSERT INTO #temp_campus SELECT std_id from student_detail where std_campus is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_campus SELECT std_id from student_detail where std_campus=@ddl_campus
	END
	
	--PROGRAM
	IF(@ddl_program='ALL')
	BEGIN 
	 	INSERT INTO #temp_program SELECT std_id from student_detail where std_program is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_program SELECT std_id from student_detail where std_program=@ddl_program
	END
	
	--STREAM
	IF(@ddl_stream='ALL')
	BEGIN 
		INSERT INTO #temp_stream SELECT std_id from student_detail where std_stream is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_stream SELECT std_id from student_detail where std_stream=@ddl_stream
	END
	
	--DIVISION
	--IF(@ddl_division='ALL')
	--BEGIN 
	--	INSERT INTO #temp_division SELECT std_id from student_detail where std_division is not null
	--END
	--ELSE
	--BEGIN
	--	INSERT INTO #temp_division SELECT std_id from student_detail where std_division=@ddl_division
	--END
	
	--REGISTRATION STATUS
	IF(@ddl_registration_status='BOTH')
	BEGIN 
		INSERT INTO #temp_registration_status SELECT std_id from student_detail where std_registered is not null
	END
	ELSE IF(@ddl_registration_status='624')
	BEGIN
		INSERT INTO #temp_registration_status SELECT std_id from student_detail where std_registered=0
	END
	ELSE IF(@ddl_registration_status='625')
	BEGIN
		INSERT INTO #temp_registration_status SELECT std_id from student_detail where std_registered>0
	END
	
	SELECT COUNT(student_detail.std_id) AS std_count FROM student_detail INNER JOIN #temp_passing_year ON #temp_passing_year.std_id=student_detail.std_id INNER JOIN 
	#temp_campus ON #temp_passing_year.std_id=#temp_campus.std_id INNER JOIN #temp_program ON #temp_passing_year.std_id=#temp_program.std_id INNER JOIN 
	#temp_stream ON #temp_program.std_id=#temp_stream.std_id 
	--INNER JOIN #temp_division ON #temp_stream.std_id=#temp_division.std_id 
	INNER JOIN #temp_registration_status ON #temp_stream.std_id=#temp_registration_status.std_id
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_save_excel]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_save_excel]
@filename nvarchar(50),
@filebytes varbinary(MAX),
@success int,
@failed int
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	
	set @timestamp = CURRENT_TIMESTAMP
	
	INSERT INTO excel_sheet VALUES(@filename,@filebytes,@timestamp,@success,@failed)
	
	SELECT excel_id FROM excel_sheet WHERE timestamp=@timestamp
END
GO
/****** Object:  StoredProcedure [dbo].[sp_role_management_tree_parent_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_role_management_tree_parent_val]
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT menu_name,menu_id FROM menu_detail WHERE menu_id>1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_role_management_tree_child_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_role_management_tree_child_val]
@menu_id int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT page_name,page_id FROM page_detail WHERE menu_id=@menu_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_registered_std]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_registered_std]
@std_id bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	

	if((SELECT std_registered FROM student_detail WHERE std_id=@std_id)>0)
	BEGIN
		UPDATE student_detail SET std_registered=(SELECT std_registered FROM student_detail WHERE std_id=@std_id)-1 WHERE std_id=@std_id
		
		SELECT std_registered,mem_id FROM student_detail WHERE std_id=@std_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_registered_fct]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_registered_fct]
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT fct_registered FROM faculty_detail WHERE fct_id=@fct_id)>0)
	BEGIN
		UPDATE faculty_detail SET fct_registered=(SELECT fct_registered FROM faculty_detail WHERE fct_id=@fct_id)-1 WHERE fct_id=@fct_id
		
		SELECT fct_registered,mem_id FROM faculty_detail WHERE fct_id=@fct_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_page_image]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_page_image]
@filename nvarchar(50),
@filebytes varbinary(max)
AS
BEGIN

	SET NOCOUNT ON;
	
	INSERT INTO page_image(img_filename,img_filebytes) VALUES(@filename,@filebytes)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_page_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_page_detail]
@page_url nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT page_id FROM page_detail WHERE page_url=@page_url
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_pages_sub_menu_grid]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_order_pages_sub_menu_grid]
@ddl_select_role int
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT DISTINCT submenu_text,(SELECT menu_detail.menu_name FROM menu_detail WHERE menu_detail.menu_id=assigned_role.menu_id) AS menu_name,assigned_role.menu_order,assigned_role.assigned_role_id,
	page_detail.page_name,assigned_role.submenu_order FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id
	 AND assigned_role.mem_id=@ddl_select_role AND assigned_role.page_visible='True' ORDER by menu_order asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_pages_menu_grid]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_order_pages_menu_grid]
@ddl_select_role int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT menu_name,menu_order,assigned_role.menu_id FROM menu_detail INNER JOIN assigned_role 
	ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=@ddl_select_role
	 AND assigned_role.page_visible='True' ORDER by assigned_role.menu_order asc
	 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_page_submenu_update]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_order_page_submenu_update]
@ddl_select_role int,
@hf_assigned_role_id int,
@txt_submenu_order int
AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE assigned_role SET submenu_order=@txt_submenu_order WHERE assigned_role_id=@hf_assigned_role_id AND mem_id=@ddl_select_role
	
	SELECT DISTINCT submenu_text,(SELECT menu_detail.menu_name FROM menu_detail WHERE menu_detail.menu_id=assigned_role.menu_id) AS menu_name,assigned_role.menu_order,assigned_role.assigned_role_id,
	page_detail.page_name,assigned_role.submenu_order FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id
	 AND assigned_role.mem_id=@ddl_select_role AND assigned_role.page_visible='True' ORDER by menu_order asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_page_menu_update]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_order_page_menu_update]
@ddl_select_role int,
@hf_menu_id int,
@txt_menu_order int
AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE assigned_role SET menu_order=@txt_menu_order WHERE mem_id=@ddl_select_role AND menu_id=@hf_menu_id
	
	SELECT DISTINCT menu_name,menu_order,assigned_role.menu_id FROM menu_detail INNER JOIN assigned_role 
	ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=@ddl_select_role
	 AND assigned_role.page_visible='True' and assigned_role.default_page='True' ORDER by assigned_role.menu_order asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_member_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_member_detail]
@std_id bigint
AS
BEGIN
	SET NOCOUNT ON;

	SELECT std_gr_no,std_roll_no,std_first_name,std_middle_name,std_last_name,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_gender) AS std_gender,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_division) AS std_division,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_program) AS std_program,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_stream) AS std_stream,
    (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_campus) AS std_campus,
    (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_passing_year) AS std_passing_year,std_dob,
    (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_relationship_status) AS std_relationship_status,
    (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_country) AS std_country,std_company_name,std_designaton,std_email,std_mobile_no,
      std_landline,std_address_line1,std_address_line2,std_city,std_state,std_pincode FROM student_detail WHERE std_id=@std_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_master_page_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_master_page_student]
@std_id bigint,
@folder nvarchar(50),
@page_name nvarchar(50)

AS
BEGIN

	SET NOCOUNT ON;
	
	
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE assigned_role.mem_id=(SELECT mem_id FROM student_detail WHERE std_id=@std_id) AND assigned_role.menu_id=(SELECT menu_detail.menu_id FROM menu_detail WHERE menu_name=@folder) AND assigned_role.page_visible='True' AND assigned_role.page_id=(SELECT page_detail.page_id FROM page_detail WHERE page_detail.page_name LIKE SUBSTRING(@page_name,1,LEN(page_detail.page_name))))=1)
	BEGIN
		SELECT DISTINCT assigned_role.menu_id, menu_text,'~/'+menu_detail.menu_name+'/'+(SELECT page_detail.page_name FROM page_detail WHERE page_detail.page_id=assigned_role.page_id) as post_back_url,assigned_role.menu_order FROM menu_detail INNER JOIN assigned_role ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=(SELECT mem_id FROM student_detail WHERE std_id=@std_id) AND assigned_role.page_visible='True' and assigned_role.default_page='True' and menu_detail.menu_visible='True' AND menu_detail.show_on_menu_bar='True' ORDER BY assigned_role.menu_order ASC
		
		SELECT DISTINCT assigned_role.menu_id, submenu_text,'~/'+(SELECT menu_detail.menu_name FROM menu_detail WHERE menu_detail.menu_id=assigned_role.menu_id)+'/'+page_detail.page_name as post_back_url,assigned_role.submenu_order FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id AND assigned_role.mem_id=(SELECT mem_id FROM student_detail WHERE std_id=@std_id) AND assigned_role.page_visible='True' AND page_detail.page_linked='False' ORDER BY assigned_role.submenu_order ASC
		
		SELECT DISTINCT submenu_text,'~/'+(SELECT menu_detail.menu_name FROM menu_detail WHERE menu_detail.menu_id=assigned_role.menu_id)+'/'+page_detail.page_name as post_back_url,assigned_role.submenu_order FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id AND assigned_role.mem_id=(SELECT mem_id FROM student_detail WHERE std_id=@std_id) AND assigned_role.page_visible='True' AND assigned_role.menu_id=(SELECT menu_detail.menu_id FROM menu_detail WHERE menu_name=@folder) AND page_detail.page_linked='False' ORDER BY assigned_role.submenu_order ASC
		
		SELECT std_first_name+' '+std_middle_name+' '+std_last_name as std_name, '('+std_gr_no+')' as std_gr_no FROM student_detail WHERE std_id=@std_id
		
		SELECT DISTINCT menu_text,'~/'+menu_detail.menu_name+'/'+(SELECT page_detail.page_name FROM page_detail WHERE page_detail.page_name like '%Student%') as post_back_url,assigned_role.menu_order FROM menu_detail INNER JOIN assigned_role ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=(SELECT mem_id FROM student_detail WHERE std_id=@std_id) AND assigned_role.page_visible='True' and assigned_role.default_page='True' and menu_detail.menu_visible='True' AND menu_detail.show_on_menu_bar='False'
	END	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_master_page_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_master_page_faculty]
@fct_id	bigint,
@folder nvarchar(50),
@page_name nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE assigned_role.mem_id=(SELECT mem_id FROM faculty_detail WHERE fct_id=@fct_id) AND assigned_role.menu_id=(SELECT menu_detail.menu_id FROM menu_detail WHERE menu_name=@folder) AND assigned_role.page_visible='True' AND assigned_role.page_id=(SELECT page_detail.page_id FROM page_detail WHERE page_detail.page_name LIKE SUBSTRING(@page_name,1,LEN(page_detail.page_name))))=1)
	BEGIN
		SELECT DISTINCT assigned_role.menu_id, menu_text,'~/'+menu_detail.menu_name+'/'+(SELECT page_detail.page_name FROM page_detail WHERE page_detail.page_id=assigned_role.page_id) as post_back_url,assigned_role.menu_order FROM menu_detail INNER JOIN assigned_role ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=(SELECT mem_id FROM faculty_detail WHERE fct_id=@fct_id) AND assigned_role.page_visible='True' and assigned_role.default_page='True' and menu_detail.menu_visible='True' AND menu_detail.show_on_menu_bar='True' ORDER BY assigned_role.menu_order ASC
		
		SELECT DISTINCT assigned_role.menu_id, submenu_text,'~/'+(SELECT menu_detail.menu_name FROM menu_detail WHERE menu_detail.menu_id=assigned_role.menu_id)+'/'+page_detail.page_name as post_back_url,assigned_role.submenu_order FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id AND assigned_role.mem_id=(SELECT mem_id FROM faculty_detail WHERE fct_id=@fct_id) AND assigned_role.page_visible='True' AND page_detail.page_linked='False' ORDER BY assigned_role.submenu_order ASC
		
		SELECT DISTINCT submenu_text,'~/'+(SELECT menu_detail.menu_name FROM menu_detail WHERE menu_detail.menu_id=assigned_role.menu_id)+'/'+page_detail.page_name as post_back_url,assigned_role.submenu_order FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id AND assigned_role.mem_id=(SELECT mem_id FROM faculty_detail WHERE fct_id=@fct_id) AND assigned_role.page_visible='True' AND assigned_role.menu_id=(SELECT menu_detail.menu_id FROM menu_detail WHERE menu_name=@folder) AND page_detail.page_linked='False' ORDER BY assigned_role.submenu_order ASC
		
		SELECT (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title) +' '+fct_first_name+' '+fct_middle_name+' '+fct_last_name as fct_name,'('+fct_sap_id+')' AS fct_sap_id FROM faculty_detail WHERE fct_id=@fct_id
		
		SELECT DISTINCT menu_text,'~/'+menu_detail.menu_name+'/'+(SELECT page_detail.page_name FROM page_detail WHERE page_detail.page_id=assigned_role.page_id) as post_back_url,assigned_role.menu_order FROM menu_detail INNER JOIN assigned_role ON menu_detail.menu_id=assigned_role.menu_id AND assigned_role.mem_id=(SELECT mem_id FROM faculty_detail WHERE fct_id=@fct_id) AND assigned_role.page_visible='True' and assigned_role.default_page='True' and menu_detail.menu_visible='True' AND menu_detail.show_on_menu_bar='False'
	END	
	
	
END
GO
/****** Object:  View [dbo].[view_username_decrypted]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_username_decrypted] AS SELECT std_gr_no as sap_id, CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), std_username)) AS login_username
FROM  student_detail
UNION ALL
SELECT fct_sap_id,  CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), fct_username))
FROM  faculty_detail
GO
/****** Object:  View [dbo].[view_username]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_username] as  SELECT std_gr_no AS sap_id, std_username AS login_username
FROM  student_detail
UNION ALL
SELECT fct_sap_id, fct_username
FROM  faculty_detail
GO
/****** Object:  View [dbo].[view_student_login_decrypted]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_student_login_decrypted] AS SELECT std_id, CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'), std_username)) COLLATE Latin1_General_CS_AS AS login_username, 
CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'), std_password)) COLLATE Latin1_General_CS_AS AS login_password, mem_id, std_registered
FROM  dbo.student_detail
GO
/****** Object:  View [dbo].[view_student_login]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_student_login] as SELECT std_id, std_username AS login_username, std_password AS login_password, mem_id, std_registered
FROM  dbo.student_detail
GO
/****** Object:  View [dbo].[view_faculty_login_decrypted]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_faculty_login_decrypted] as SELECT fct_id, CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), fct_username)) COLLATE Latin1_General_CS_AS AS login_username, 
CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), fct_password)) COLLATE Latin1_General_CS_AS AS login_password, mem_id, fct_registered
FROM  dbo.faculty_detail
GO
/****** Object:  View [dbo].[view_faculty_login]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_faculty_login] as SELECT fct_id, fct_username AS login_username, fct_password as login_password, mem_id, fct_registered
FROM  dbo.faculty_detail
GO
/****** Object:  View [dbo].[view_email_mobile]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_email_mobile] AS SELECT std_gr_no AS sap_id, std_email AS email, std_mobile_no AS mobile_no
FROM  student_detail
UNION ALL
SELECT fct_sap_id, fct_email, fct_mobile
FROM  faculty_detail
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GeneratePassword]    Script Date: 04/23/2014 15:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GeneratePassword] ( @PasswordLength INT )
RETURNS VARCHAR(20)
AS
BEGIN
DECLARE @Password     VARCHAR(20)
DECLARE @ValidCharacters   VARCHAR(100)
DECLARE @PasswordIndex    INT
DECLARE @CharacterLocation   INT


SET @ValidCharacters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890'


SET @PasswordIndex = 1
SET @Password = ''


WHILE @PasswordIndex <= @PasswordLength
BEGIN
 SELECT @CharacterLocation = ABS(CAST(CAST([NewID] AS VARBINARY) AS INT)) % 
LEN(@ValidCharacters) + 1
 FROM [dbo].[RandomNewID]
 SET @Password = @Password + SUBSTRING(@ValidCharacters, @CharacterLocation, 1)
 SET @PasswordIndex = @PasswordIndex + 1
END
RETURN @Password
END
GO
/****** Object:  StoredProcedure [dbo].[sp_watermark_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_watermark_detail]
@wm_id nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT wm_text FROM watermark_tag WHERE wm_id = @wm_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_view_members_grid]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_view_members_grid]
@passing_year nvarchar(50),
@campus nvarchar(50),
@program nvarchar(50),
@stream nvarchar(50),
--@division nvarchar(50),
@registration_status nvarchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE #temp_passing_year (std_id bigint)
	CREATE TABLE #temp_campus (std_id bigint)
	CREATE TABLE #temp_program (std_id bigint)
	CREATE TABLE #temp_stream (std_id bigint)
	--CREATE TABLE #temp_division (std_id bigint)
	CREATE TABLE #temp_registration_status (std_id bigint)
	
	--PASSING YEAR
	IF(@passing_year='ALL')
	BEGIN
		INSERT INTO #temp_passing_year SELECT std_id from student_detail where std_passing_year is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_passing_year SELECT std_id from student_detail where std_passing_year=@passing_year
	END
	
	--CAMPUS
	IF(@campus='ALL')
	BEGIN 
		INSERT INTO #temp_campus SELECT std_id from student_detail where std_campus is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_campus SELECT std_id from student_detail where std_campus=@campus
	END
	
	--PROGRAM
	IF(@program='ALL')
	BEGIN 
	 	INSERT INTO #temp_program SELECT std_id from student_detail where std_program is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_program SELECT std_id from student_detail where std_program=@program
	END
	
	--STREAM
	IF(@stream='ALL')
	BEGIN 
		INSERT INTO #temp_stream SELECT std_id from student_detail where std_stream is not null
	END
	ELSE
	BEGIN
		INSERT INTO #temp_stream SELECT std_id from student_detail where std_stream=@stream
	END
	
	----DIVISION
	--IF(@division='ALL')
	--BEGIN 
	--	INSERT INTO #temp_division SELECT std_id from student_detail where std_division is not null
	--END
	--ELSE
	--BEGIN
	--	INSERT INTO #temp_division SELECT std_id from student_detail where std_division=@division
	--END
	
	--REGISTRATION STATUS
	IF(@registration_status='BOTH')
	BEGIN 
		INSERT INTO #temp_registration_status SELECT std_id from student_detail where std_registered is not null
	END
	ELSE IF(@registration_status='624')
	BEGIN
		INSERT INTO #temp_registration_status SELECT std_id from student_detail where std_registered=0
	END
	ELSE IF(@registration_status='625')
	BEGIN
		INSERT INTO #temp_registration_status SELECT std_id from student_detail where std_registered>0
	END
	
	SELECT student_detail.std_id,std_gr_no,std_first_name,std_middle_name,std_last_name,std_roll_no,(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_division) AS std_division,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_program) AS std_program,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_stream) AS std_stream,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_campus) AS std_campus,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=std_passing_year) AS std_passing_year,
	std_email,std_mobile_no FROM student_detail INNER JOIN #temp_passing_year ON #temp_passing_year.std_id=student_detail.std_id INNER JOIN 
	#temp_campus ON #temp_passing_year.std_id=#temp_campus.std_id INNER JOIN #temp_program ON #temp_passing_year.std_id=#temp_program.std_id INNER JOIN 
	#temp_stream ON #temp_program.std_id=#temp_stream.std_id
	--INNER JOIN #temp_division ON #temp_stream.std_id=#temp_division.std_id 
	INNER JOIN #temp_registration_status ON #temp_stream.std_id=#temp_registration_status.std_id ORDER BY student_detail.std_gr_no
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_view_faculty_grid]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_view_faculty_grid]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT fct_id,fct_sap_id,(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+' '+fct_first_name+' '+fct_middle_name+' '+fct_last_name as fct_name,
	(SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_department) AS fct_department,fct_designation,fct_domain,
	fct_current_research,fct_email,fct_mobile FROM faculty_detail
END
GO
/****** Object:  StoredProcedure [dbo].[sp_view_event_upcoming_grid]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_view_event_upcoming_grid]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT event_id,event_name,event_committee_name,event_from_date,event_to_date,event_from_time+'-'+event_to_time as event_time FROM event_detail WHERE event_from_date>=CURRENT_TIMESTAMP  ORDER BY event_from_date asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_view_event_past_grid]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_view_event_past_grid]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT event_id,event_name,event_committee_name,event_from_date,event_to_date,event_to_time+'-'+event_from_time as event_time FROM event_detail WHERE event_from_date<CURRENT_TIMESTAMP ORDER BY event_from_date asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_view_album]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_view_album]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT alb_id,alb_name FROM album_detail
END
GO
/****** Object:  StoredProcedure [dbo].[sp_tree_view_selected_role]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tree_view_selected_role]
@ddl_select_role int,
@tn_parent int,
@tn_child int
AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(assigned_role_id) FROM assigned_role WHERE mem_id=@ddl_select_role AND menu_id=@tn_parent AND page_id=@tn_child)>0)
	BEGIN
		SELECT page_visible FROM assigned_role WHERE mem_id=@ddl_select_role AND menu_id=@tn_parent AND page_id=@tn_child
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_student_val]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_student_val]
@std_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT std_first_name,std_middle_name,std_last_name,std_email,std_mobile_no,std_landline,std_dob,std_country,std_address_line1,std_address_line2,std_city,std_state,
	std_pincode,std_company_name,std_designaton,std_gender,std_relationship_status FROM student_detail WHERE std_id=@std_id
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_student_profile_image]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_student_profile_image]
@std_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(img_id) FROM profile_image WHERE std_id=@std_id AND set_profile_image='True')>0)
	BEGIN
		SELECT image_filebytes as img_filebytes,std_id,image_filename FROM profile_image WHERE std_id=@std_id
	END
	ELSE
	BEGIN
		IF((SELECT std_gender FROM student_detail WHERE std_id=@std_id)='2')
		BEGIN
			SELECT img_filebytes,std_id=@std_id,img_filename FROM page_image WHERE img_name='Male Profile Image' AND tag_id='img_profile_image'
		END
		ELSE IF((SELECT std_gender FROM student_detail WHERE std_id=@std_id)='3')
		BEGIN
			SELECT img_filebytes,std_id=@std_id,img_filename FROM page_image WHERE img_name='Female Profile Image' AND tag_id='img_profile_image'
		END
		ELSE
		BEGIN
			SELECT img_filebytes,std_id=@std_id,img_filename FROM page_image WHERE img_name='Male Profile Image' AND tag_id='img_profile_image'
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_student_personal_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_student_personal_detail]
@std_id bigint,
@txt_first_name nvarchar(50),
@txt_middle_name nvarchar(50),
@txt_last_name nvarchar(50),
@txt_dob nvarchar(50),
@ddl_gender int,
@ddl_relationship_status int,
@txt_company_name nvarchar(50),
@txt_designation nvarchar(50)

AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE student_detail SET std_first_name=@txt_first_name,std_middle_name=@txt_middle_name,std_last_name=@txt_last_name,std_dob=@txt_dob,
	std_gender=@ddl_gender,std_relationship_status=@ddl_relationship_status,std_company_name=@txt_company_name,std_designaton=@txt_designation WHERE std_id=@std_id
	
	SELECT std_id FROM student_detail WHERE std_id=@std_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_student_password_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_student_password_detail]
@std_id bigint,
@txt_current_password nvarchar(50),
@txt_new_password nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	IF(@txt_current_password!=@txt_new_password)
	BEGIN
	SELECT std_id FROM student_detail WHERE std_id=@std_id
		IF((SELECT COUNT(std_password) FROM student_detail WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), std_password)) COLLATE Latin1_General_CS_AS)=@txt_current_password AND std_id=@std_id)=1)
		BEGIN
			UPDATE student_detail SET std_password=ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_new_password) WHERE std_id=@std_id
			SELECT std_id FROM student_detail WHERE std_id=@std_id
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_student_mailing_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_student_mailing_detail]
@std_id bigint,
@ddl_country int,
@txt_line1 nvarchar(50),
@txt_line2 nvarchar(50),
@txt_city nvarchar(50),
@txt_state nvarchar(50),
@txt_pincode nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE student_detail SET std_country=@ddl_country,std_address_line1=@txt_line1,std_address_line2=@txt_line2,std_city=@txt_city,
	std_state=@txt_state,std_pincode=@txt_pincode WHERE std_id=@std_id
	
	SELECT std_id FROM student_detail WHERE std_id=@std_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sent_message_grid_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_sent_message_grid_student]
@std_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE #temp_view(std_id bigint,fct_id bigint,msg_timestamp datetime)
	CREATE TABLE #temp_final(sap_id nvarchar(50),name nvarchar(max),msg_text nvarchar(max),msg_timestamp datetime)
	
	INSERT INTO #temp_view(std_id,msg_timestamp) SELECT msg_to_std AS msg_to,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_from_std=@std_id AND msg_from_std IS NOT NULL group by msg_to_std
	INSERT INTO #temp_view(fct_id,msg_timestamp) SELECT msg_to_fct AS msg_to,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_from_std=@std_id AND msg_from_std IS NOT NULL group by msg_to_fct
		
	INSERT INTO #temp_final SELECT (SELECT std_gr_no FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT (std_first_name+' '+std_last_name) FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_to_std=#temp_view.std_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.std_id IS NOT NULL
	INSERT INTO #temp_final SELECT (SELECT fct_sap_id FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT ((SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+''+fct_first_name+' '+fct_last_name) FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_to_fct=#temp_view.fct_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.fct_id IS NOT NULL
	
	SELECT sap_id,name,msg_text,msg_timestamp FROM #temp_final ORDER BY msg_timestamp DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sent_message_grid_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_sent_message_grid_faculty]
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE #temp_view(std_id bigint,fct_id bigint,msg_timestamp datetime)
	CREATE TABLE #temp_final(sap_id nvarchar(50),name nvarchar(max),msg_text nvarchar(max),msg_timestamp datetime)
	
	INSERT INTO #temp_view(std_id,msg_timestamp) SELECT msg_to_std AS msg_to,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_from_fct=@fct_id AND msg_from_fct IS NOT NULL group by msg_to_std
	INSERT INTO #temp_view(fct_id,msg_timestamp) SELECT msg_to_fct AS msg_to,MAX(msg_timestamp) as msg_timestamp from message_detail where msg_from_fct=@fct_id AND msg_from_fct IS NOT NULL group by msg_to_fct
		
	INSERT INTO #temp_final SELECT (SELECT std_gr_no FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT (std_first_name+' '+std_last_name) FROM student_detail WHERE student_detail.std_id=#temp_view.std_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_to_std=#temp_view.std_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.std_id IS NOT NULL
	INSERT INTO #temp_final SELECT (SELECT fct_sap_id FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT ((SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+''+fct_first_name+' '+fct_last_name) FROM faculty_detail WHERE faculty_detail.fct_id=#temp_view.fct_id),(SELECT CONVERT(NVARCHAR(MAX),msg_text) FROM message_detail WHERE message_detail.msg_to_fct=#temp_view.fct_id AND message_detail.msg_timestamp=#temp_view.msg_timestamp),msg_timestamp FROM #temp_view WHERE #temp_view.fct_id IS NOT NULL
	
	SELECT sap_id,name,msg_text,msg_timestamp FROM #temp_final order by msg_timestamp desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_send_message_send_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_send_message_send_student]
@msg_from bigint,
@msg_to nvarchar(50),
@msg_text nvarchar(max)
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	SET @timestamp=CURRENT_TIMESTAMP
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@msg_to)>0)
	BEGIN
		INSERT INTO message_detail(msg_from_std,msg_to_fct,msg_text,msg_timestamp) VALUES(@msg_from,(SELECT fct_id FROM faculty_detail WHERE fct_sap_id=@msg_to),CONVERT(varbinary(max),@msg_text),@timestamp)
		SELECT msg_id FROM message_detail where msg_timestamp=@timestamp
	END
	ELSE IF((SELECT COUNT(std_id) FROM student_detail WHERE std_gr_no=@msg_to)>0)
	BEGIN
		INSERT INTO message_detail(msg_from_std,msg_to_std,msg_text,msg_timestamp) VALUES(@msg_from,(SELECT std_id FROM student_detail WHERE std_gr_no=@msg_to),CONVERT(varbinary(max),@msg_text),@timestamp)
		SELECT msg_id FROM message_detail where msg_timestamp=@timestamp
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_send_message_send_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_send_message_send_faculty]
@msg_from bigint,
@msg_to nvarchar(50),
@msg_text nvarchar(max)
AS
BEGIN
DECLARE @timestamp as datetime
	SET NOCOUNT ON;
	SET @timestamp=CURRENT_TIMESTAMP
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@msg_to)>0)
	BEGIN
		INSERT INTO message_detail(msg_from_fct,msg_to_fct,msg_text,msg_timestamp) VALUES(@msg_from,(SELECT fct_id FROM faculty_detail WHERE fct_sap_id=@msg_to),CONVERT(varbinary(max),@msg_text),@timestamp)
		SELECT msg_id FROM message_detail where msg_timestamp=@timestamp
	END
	ELSE IF((SELECT COUNT(std_id) FROM student_detail WHERE std_gr_no=@msg_to)>0)
	BEGIN
		INSERT INTO message_detail(msg_from_fct,msg_to_std,msg_text,msg_timestamp) VALUES(@msg_from,(SELECT std_id FROM student_detail WHERE std_gr_no=@msg_to),CONVERT(varbinary(max),@msg_text),@timestamp)
		SELECT msg_id FROM message_detail where msg_timestamp=@timestamp
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_send_message_history_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_send_message_history_student]
@msg_from bigint,
@msg_to nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE #temp_send_message_history (name nvarchar(max), msg_text varbinary(max),msg_timestamp datetime)
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@msg_to)>0)
	BEGIN
		INSERT INTO #temp_send_message_history SELECT(SELECT std_first_name+' '+std_last_name FROM student_detail WHERE std_id=msg_from_std),msg_text,msg_timestamp FROM message_detail where msg_to_fct=(SELECT fct_id FROM faculty_detail WHERE fct_sap_id=@msg_to) and msg_from_std=@msg_from
		INSERT INTO #temp_send_message_history SELECT(SELECT (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+' '+fct_first_name+' '+fct_last_name FROM faculty_detail WHERE fct_id=msg_from_fct),msg_text,msg_timestamp FROM message_detail where msg_from_fct=(SELECT fct_id FROM faculty_detail WHERE fct_sap_id=@msg_to) and msg_to_std=@msg_from
	
		SELECT name,CONVERT(nvarchar(max),msg_text) as msg_text,msg_timestamp FROM #temp_send_message_history ORDER BY msg_timestamp ASC
	END
	ELSE IF((SELECT COUNT(std_id) FROM student_detail WHERE std_gr_no=@msg_to)>0)
	BEGIN
		INSERT INTO #temp_send_message_history SELECT(SELECT std_first_name+' '+std_last_name FROM student_detail WHERE std_id=msg_from_std),msg_text,msg_timestamp FROM message_detail where msg_to_std=(SELECT std_id FROM student_detail WHERE std_gr_no=@msg_to) and msg_from_std=@msg_from
		INSERT INTO #temp_send_message_history SELECT(SELECT std_first_name+' '+std_last_name FROM student_detail WHERE std_id=msg_from_std),msg_text,msg_timestamp FROM message_detail where msg_from_std=(SELECT std_id FROM student_detail WHERE std_gr_no=@msg_to) and msg_to_std=@msg_from
	
		SELECT name,CONVERT(nvarchar(max),msg_text) as msg_text,msg_timestamp FROM #temp_send_message_history ORDER BY msg_timestamp ASC
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_send_message_history_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_send_message_history_faculty]
@msg_from bigint,
@msg_to nvarchar(50)
AS
BEGIN
	CREATE TABLE #temp_send_message_history (name nvarchar(max), msg_text varbinary(max),msg_timestamp datetime)
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@msg_to)>0)
	BEGIN
		INSERT INTO #temp_send_message_history SELECT(SELECT (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+' '+fct_first_name+' '+fct_last_name FROM faculty_detail WHERE fct_id=msg_from_fct) as name,msg_text,msg_timestamp FROM message_detail where msg_to_fct=(SELECT fct_id FROM faculty_detail WHERE fct_sap_id=@msg_to) and msg_from_fct=@msg_from
		INSERT INTO #temp_send_message_history SELECT(SELECT (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+' '+fct_first_name+' '+fct_last_name FROM faculty_detail WHERE fct_id=msg_from_fct) as name,msg_text,msg_timestamp FROM message_detail where msg_from_fct=(SELECT fct_id FROM faculty_detail WHERE fct_sap_id=@msg_to) and msg_to_fct=@msg_from
	
		SELECT name,CONVERT(nvarchar(max),msg_text) as msg_text,msg_timestamp FROM #temp_send_message_history ORDER BY msg_timestamp ASC
	END
	ELSE IF((SELECT COUNT(std_id) FROM student_detail WHERE std_gr_no=@msg_to)>0)
	BEGIN
	
		INSERT INTO #temp_send_message_history SELECT(SELECT (SELECT ddl_text FROM dropdown_tag WHERE ddl_tag_id=fct_title)+' '+fct_first_name+' '+fct_last_name FROM faculty_detail WHERE fct_id=msg_from_fct) as name,msg_text,msg_timestamp FROM message_detail where msg_to_std=(SELECT std_id FROM student_detail WHERE std_gr_no=@msg_to) and msg_from_fct=@msg_from
		INSERT INTO #temp_send_message_history SELECT(SELECT std_first_name+' '+std_last_name FROM student_detail WHERE std_id=msg_from_std) as name,msg_text,msg_timestamp FROM message_detail where msg_from_std=(SELECT std_id FROM student_detail WHERE std_gr_no=@msg_to) and msg_to_fct=@msg_from
	
		SELECT name,CONVERT(nvarchar(max),msg_text) as msg_text,msg_timestamp FROM #temp_send_message_history ORDER BY msg_timestamp ASC
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_send_message_ace]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_send_message_ace]
@prefixText nvarchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE #temp_detail(name nvarchar(max),branch nvarchar(50),sap_id nvarchar(50))
	INSERT INTO #temp_detail VALUES('STUDENTS','','')
	INSERT INTO #temp_detail SELECT (std_first_name+' '+std_last_name) AS name,'['+(SELECT ddl_text FROM dropdown_tag WHERE (student_detail.std_program)=dropdown_tag.ddl_tag_id)+' ('+(SELECT ddl_text FROM dropdown_tag WHERE (student_detail.std_stream)=dropdown_tag.ddl_tag_id)+')]' AS branch,std_gr_no FROM student_detail WHERE std_first_name LIKE '%'+@prefixText+'%' 
	OR std_middle_name LIKE '%'+@prefixText+'%' OR std_last_name LIKE '%'+@prefixText+'%' ORDER BY std_first_name,std_middle_name,std_last_name
	
	INSERT INTO #temp_detail VALUES('','','')
	INSERT INTO #temp_detail VALUES('FACULTIES','','')
	INSERT INTO #temp_detail SELECT ((SELECT ddl_text FROM dropdown_tag WHERE faculty_detail.fct_title=dropdown_tag.ddl_tag_id)+' '+fct_first_name+' '+fct_last_name) AS name,(SELECT ddl_text FROM dropdown_tag WHERE faculty_detail.fct_department=dropdown_tag.ddl_tag_id) AS department,fct_sap_id FROM faculty_detail WHERE fct_first_name LIKE '%'+@prefixText+'%' 
	OR fct_middle_name LIKE '%'+@prefixText+'%' OR fct_last_name LIKE '%'+@prefixText+'%' ORDER BY fct_first_name,fct_middle_name,fct_last_name
	
	SELECT name,branch,sap_id FROM #temp_detail
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_default_selected_role]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_default_selected_role]
@selected_role int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(login_default) FROM assigned_role WHERE mem_id=@selected_role AND login_default='True')<2)
	BEGIN
	SELECT 'Select Page Name' as page_name, '0' as page_id union all
		SELECT DISTINCT page_detail.page_name,page_detail.page_id FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id AND assigned_role.mem_id=@selected_role AND assigned_role.page_visible='True'
		
		SELECT DISTINCT page_detail.page_name,page_detail.page_id FROM page_detail INNER JOIN assigned_role ON page_detail.page_id=assigned_role.page_id AND assigned_role.mem_id=@selected_role AND assigned_role.page_visible='True' and assigned_role.login_default='True'
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_cookie_student]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_cookie_student]
@username nvarchar(50),
@password nvarchar(50),
@std_id bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF((SELECT COUNT(std_id) FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@username AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_password)) COLLATE Latin1_General_CS_AS)=@password AND std_id=@std_id)>0)
	BEGIN
		SELECT std_id,mem_id,std_registered FROM student_detail WHERE std_id = @std_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_cookie_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_cookie_faculty]
@username nvarchar(50),
@password nvarchar(50),
@fct_id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(fct_id) FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@username AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_password)) COLLATE Latin1_General_CS_AS)=@password AND fct_id=@fct_id)>0)
	BEGIN
		SELECT fct_id,mem_id,fct_registered FROM faculty_detail WHERE fct_id = @fct_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_student_contact_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_student_contact_detail]
@std_id bigint,
@txt_username nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(login_username) FROM view_username WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)=0)
	BEGIN
		
			UPDATE student_detail SET std_username=ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_username) WHERE std_id=@std_id
			
			SELECT std_id FROM student_detail WHERE std_id=@std_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_student_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_student_detail]
@std_id bigint,
@ddl_gender int,
@txt_email nvarchar(50),
@txt_mobile nvarchar(50),
@txt_landline nvarchar(50),
@txt_dob nvarchar(50),
@txt_country nvarchar(50),
@txt_line1 nvarchar(50),
@txt_line2 nvarchar(50),
@txt_city nvarchar(50),
@txt_state nvarchar(50),
@txt_pincode nvarchar(50),
@ddl_relationship_status int,
@txt_company_name nvarchar(50),
@txt_designation nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT COUNT(email) AS email from view_email_mobile WHERE email=@txt_email
	IF((SELECT COUNT(email) FROM view_email_mobile WHERE email=@txt_email and sap_id=(SELECT std_gr_no from student_detail where std_id=@std_id))=1 OR (SELECT COUNT(email) from view_email_mobile where email=@txt_email)=0 AND (SELECT COUNT(email) from view_email_mobile where email=@txt_email)<2)
	BEGIN
		SELECT COUNT(mobile_no) AS mobile_no from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10))
		IF((SELECT COUNT(mobile_no) FROM view_email_mobile WHERE (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)) and sap_id=(SELECT std_gr_no from student_detail where std_id=@std_id))=1 OR (((SELECT COUNT(mobile_no) FROM view_email_mobile where (SELECT RIGHT(mobile_no,10)) LIKE (SELECT RIGHT('%'+@txt_mobile,10))))=0) and (SELECT COUNT(mobile_no) from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)))<2)
		BEGIN
			UPDATE student_detail SET std_gender=@ddl_gender,std_email=@txt_email,std_mobile_no=@txt_mobile,std_landline=@txt_landline,std_dob=@txt_dob,
			std_country=@txt_country,std_address_line1=@txt_line1,std_address_line2=@txt_line2,std_city=@txt_city,std_state=@txt_state,std_pincode=@txt_pincode,
			std_relationship_status=@ddl_relationship_status,std_company_name=@txt_company_name,std_designaton=@txt_designation,std_registered=2 WHERE std_id=@std_id
			
			SELECT std_registered FROM student_detail WHERE std_id=@std_id
		END
		
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login_faculty_detail]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_faculty_detail]
@fct_id bigint,
@txt_domain nvarchar(50),
@txt_current_research nvarchar(50),
@txt_email nvarchar(50),
@txt_mobile nvarchar(50),
@ddl_gender nvarchar(50),
@ddl_title nvarchar(50),
@ddl_department nvarchar(50),
@txt_designation nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT COUNT(email) AS email from view_email_mobile WHERE email=@txt_email
	IF((SELECT COUNT(email) FROM view_email_mobile WHERE email=@txt_email and sap_id=(SELECT fct_sap_id from faculty_detail where fct_id=@fct_id))=1 OR (SELECT COUNT(email) from view_email_mobile where email=@txt_email)=0 AND (SELECT COUNT(email) from view_email_mobile where email=@txt_email)<2)
	BEGIN
		SELECT COUNT(mobile_no) AS mobile_no from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10))
		IF((SELECT COUNT(mobile_no) FROM view_email_mobile WHERE (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)) and sap_id=(SELECT fct_sap_id from faculty_detail where fct_id=@fct_id))=1 OR (((SELECT COUNT(mobile_no) FROM view_email_mobile where (SELECT RIGHT(mobile_no,10)) LIKE (SELECT RIGHT('%'+@txt_mobile,10))))=0) and (SELECT COUNT(mobile_no) from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)))<2)
		BEGIN
			UPDATE faculty_detail SET fct_domain=@txt_domain,fct_current_research=@txt_current_research,fct_email=@txt_email,fct_mobile=@txt_mobile,
			fct_registered=2,fct_gender=@ddl_gender, fct_title=@ddl_title,fct_department=@ddl_department,fct_designation=@txt_designation WHERE fct_id=@fct_id
			
			SELECT fct_registered FROM faculty_detail WHERE fct_id=@fct_id
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login]
@txt_username nvarchar(50),
@txt_password nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	IF((SELECT COUNT(std_id) FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_password)) COLLATE Latin1_General_CS_AS)=@txt_password)>0)
	BEGIN
		SELECT std_id,mem_id,std_registered FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_password)) COLLATE Latin1_General_CS_AS)=@txt_password
	END
	ELSE IF((SELECT COUNT(fct_id) FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_password)) COLLATE Latin1_General_CS_AS)=@txt_password)>0)
	BEGIN
		SELECT fct_id,mem_id,fct_registered FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username AND (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_password)) COLLATE Latin1_General_CS_AS)=@txt_password
	END
	ELSE
	BEGIN
		PRINT'INVALID USER'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_edit_faculty_details]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_edit_faculty_details]
@fct_id bigint,
@ddl_title int,
@txt_first_name nvarchar(50),
@txt_middle_name nvarchar(50),
@txt_last_name nvarchar(50),
@txt_sap_id nvarchar(50),
@ddl_gender int,
@txt_email nvarchar(50),
@txt_mobile nvarchar(50),
@ddl_department int,
@txt_designation nvarchar(50),
@txt_domain nvarchar(50),
@txt_current_research nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT COUNT(fct_sap_id) AS fct_sap_id FROM faculty_detail WHERE fct_sap_id=@txt_sap_id AND fct_id=@fct_id
	IF((SELECT COUNT(fct_sap_id) AS fct_sap_id FROM faculty_detail WHERE fct_sap_id=@txt_sap_id AND fct_id=@fct_id)=1  OR (SELECT COUNT(fct_sap_id) FROM faculty_detail WHERE fct_sap_id=@txt_sap_id)=0 AND (SELECT COUNT(fct_sap_id) FROM faculty_detail WHERE fct_sap_id=@txt_sap_id)<2)
	BEGIN
		SELECT COUNT(email) AS email from view_email_mobile WHERE email=@txt_email
		IF((SELECT COUNT(email) FROM view_email_mobile WHERE email=@txt_email and sap_id=(SELECT fct_sap_id from faculty_detail where fct_id=@fct_id))=1 OR (SELECT COUNT(email) from view_email_mobile where email=@txt_email)=0 AND (SELECT COUNT(email) from view_email_mobile where email=@txt_email)<2)
		BEGIN
			SELECT COUNT(mobile_no) AS mobile_no from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10))
			IF((SELECT COUNT(mobile_no) FROM view_email_mobile WHERE (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)) and sap_id=(SELECT fct_sap_id from faculty_detail where fct_id=@fct_id))=1 OR (((SELECT COUNT(mobile_no) FROM view_email_mobile where (SELECT RIGHT(mobile_no,10)) LIKE (SELECT RIGHT('%'+@txt_mobile,10))))=0) and (SELECT COUNT(mobile_no) from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)))<2)
			BEGIN
				UPDATE faculty_detail SET fct_title=@ddl_title,fct_first_name=@txt_first_name,fct_middle_name=@txt_middle_name,fct_last_name=@txt_last_name,
				fct_sap_id=@txt_sap_id,fct_gender=@ddl_gender,fct_email=@txt_email,fct_mobile=@txt_mobile,fct_department=@ddl_department,
				fct_designation=@txt_designation,fct_domain=@txt_domain,fct_current_research=@txt_current_research WHERE fct_id=@fct_id
				
				SELECT fct_id from faculty_detail where fct_id=@fct_id
			END
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_username]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_username]
@txt_email nvarchar(50)
AS
BEGIN
DECLARE @fct_sap_id as nvarchar(50)
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(email) FROM view_email_mobile WHERE email=@txt_email)=1)
	BEGIN
		IF((SELECT COUNT(std_id) FROM student_detail WHERE std_email=@txt_email)=1)
		BEGIN
			UPDATE forgot_username SET active='False' WHERE std_id=(SELECT std_id FROM student_detail WHERE std_email =@txt_email)
			
			INSERT INTO forgot_username(new_username,std_id,active,forgot_username_timestamp) VALUES(ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),convert(nvarchar,(SELECT std_gr_no FROM student_detail WHERE std_email =@txt_email))),(SELECT std_id FROM student_detail WHERE std_email =@txt_email),'True',CURRENT_TIMESTAMP)
			
			SELECT student_detail.std_email as email_id,CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'),forgot_username.new_username)) as new_username,student_detail.std_id, student_detail.std_first_name+' '+student_detail.std_middle_name+' '+student_detail.std_last_name as name,CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'), student_detail.std_username)) as current_username FROM student_detail INNER JOIN forgot_username ON student_detail.std_id=forgot_username.std_id WHERE student_detail.std_id=(SELECT std_id FROM student_detail WHERE std_email =@txt_email) AND forgot_username.active='True'
			
		END
		
		ELSE IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_email=@txt_email)=1)
		BEGIN
			UPDATE forgot_username SET active='False' WHERE fct_id=(SELECT fct_id FROM faculty_detail WHERE fct_email=@txt_email)
			
			INSERT INTO forgot_username(new_username,fct_id,active,forgot_username_timestamp) VALUES(ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),convert(nvarchar,(SELECT fct_sap_id FROM faculty_detail WHERE fct_email=@txt_email))),(SELECT fct_id FROM faculty_detail WHERE fct_email =@txt_email),'True',CURRENT_TIMESTAMP)
			
			SELECT fct_email as email_id,CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'), forgot_username.new_username)) as new_username,faculty_detail.fct_id, fct_first_name+' '+fct_middle_name+' '+fct_last_name as name,CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'), faculty_detail.fct_username)) as current_username FROM faculty_detail INNER JOIN forgot_username ON faculty_detail.fct_id=forgot_username.fct_id WHERE faculty_detail.fct_id=(SELECT fct_id FROM faculty_detail WHERE fct_email=@txt_email) AND forgot_username.active='True'
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_std_reset_username]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_std_reset_username]
@std_id bigint,
@txt_mailed_username nvarchar(50),
@txt_new_username nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'),forgot_username.new_username)) FROM forgot_username WHERE std_id=@std_id AND active='True')=@txt_mailed_username)
	BEGIN
		SELECT forgot_username_id FROM forgot_username WHERE std_id=@std_id AND active='True'
	
		IF((SELECT COUNT(login_username) FROM view_username WHERE login_username=@txt_new_username)=0)
		BEGIN
		UPDATE student_detail SET std_username=ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_new_username) WHERE std_id=@std_id
		UPDATE forgot_username SET active='False' WHERE std_id=@std_id AND active='True'
		SELECT std_id FROM view_student_login WHERE std_id=@std_id AND login_username=@txt_new_username
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_std_reset_password]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_std_reset_password]
@std_id bigint,
@txt_mailed_password nvarchar(50),
@txt_new_password nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), new_password)) COLLATE Latin1_General_CS_AS) FROM forgot_password WHERE std_id=@std_id AND active='True')=@txt_mailed_password)
	BEGIN
		UPDATE student_detail SET std_password=ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_new_password) WHERE std_id=@std_id
		UPDATE forgot_password SET active='False' WHERE std_id=@std_id AND active='True'
		SELECT std_id,mem_id FROM view_student_login WHERE std_id=@std_id AND login_password=@txt_new_password
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_password]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_password]
@txt_username nvarchar(50)
AS
BEGIN
DECLARE @password as varchar(20)
	SET NOCOUNT ON;
	SET @password = (SELECT [dbo].[ufn_GeneratePassword] ( 8 ))
	
	IF((SELECT COUNT(login_username) FROM view_username WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)=1)
	BEGIN
		IF((SELECT COUNT(std_id) FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)=1)
		BEGIN
			UPDATE forgot_password SET active='False' WHERE std_id=(SELECT std_id FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)
			
			INSERT INTO forgot_password (new_password,std_id,active,forgot_password_timestamp) VALUES(ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),convert(nvarchar,@password)),(SELECT std_id FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username),'True',CURRENT_TIMESTAMP)
			
			SELECT student_detail.std_id AS std_id,student_detail.std_first_name+' '+student_detail.std_middle_name+' '+student_detail.std_middle_name as name, (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), forgot_password.new_password)) COLLATE Latin1_General_CS_AS) as new_password,std_email as email_id  FROM student_detail INNER JOIN forgot_password ON student_detail.std_id=forgot_password.std_id WHERE student_detail.std_id=(SELECT std_id FROM view_student_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username) AND forgot_password.active='True'
		END
		
		ELSE IF((SELECT COUNT(fct_id) FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)=1)
		BEGIN
			UPDATE forgot_password SET active='False' WHERE fct_id=(SELECT fct_id FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)
		
			INSERT INTO forgot_password (new_password,fct_id,active,forgot_password_timestamp) VALUES(ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),convert(nvarchar,@password)),(SELECT fct_id FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username),'True',CURRENT_TIMESTAMP)
			
			SELECT faculty_detail.fct_id as fct_id, faculty_detail.fct_email as email_id, (faculty_detail.fct_first_name+' '+faculty_detail.fct_middle_name+' '+faculty_detail.fct_last_name) as name,(CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), forgot_password.new_password)) COLLATE Latin1_General_CS_AS) as new_password FROM faculty_detail INNER JOIN forgot_password ON faculty_detail.fct_id=forgot_password.fct_id WHERE faculty_detail.fct_id=(SELECT fct_id FROM view_faculty_login WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username) AND forgot_password.active='True'
			
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_fct_reset_username]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_fct_reset_username]
@fct_id bigint,
@txt_mailed_username nvarchar(50),
@txt_new_username nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	IF((SELECT CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'),forgot_username.new_username)) FROM forgot_username WHERE fct_id=@fct_id AND active='True')=@txt_mailed_username)
	BEGIN
		SELECT forgot_username_id FROM forgot_username WHERE fct_id=@fct_id AND active='True'
		
		IF((SELECT COUNT(login_username) FROM view_username WHERE login_username=@txt_new_username)=0)
		BEGIN
		UPDATE faculty_detail SET fct_username=ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_new_username) WHERE fct_id=@fct_id
		UPDATE forgot_username SET active='False' WHERE fct_id=@fct_id AND active='True'
		SELECT fct_id FROM view_faculty_login WHERE fct_id=@fct_id AND CONVERT(nvarchar(50),DecryptByAsymKey(AsymKey_ID('AsymKey'),login_username))=@txt_new_username
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_forgot_fct_reset_password]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_forgot_fct_reset_password]
@fct_id bigint,
@txt_mailed_password nvarchar(50),
@txt_new_password nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), new_password)) COLLATE Latin1_General_CS_AS) FROM forgot_password WHERE fct_id=@fct_id AND active='True')=@txt_mailed_password)
	BEGIN
		UPDATE faculty_detail SET fct_password=ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_new_password) WHERE fct_id=@fct_id
		UPDATE forgot_password SET active='False' WHERE fct_id=@fct_id AND active='True'
		SELECT fct_id FROM view_faculty_login WHERE fct_id=@fct_id AND login_password=@txt_new_password
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_first_login_std]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_first_login_std]
@std_id bigint,
@txt_username nvarchar(50),
@txt_password nvarchar(50)
AS
BEGIN
declare @std_un as varbinary(128)
declare @std_pass as varbinary(128)
	SET NOCOUNT ON;
	
	IF((SELECT COUNT(login_username) FROM view_username WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)=0)
	BEGIN
		set @std_un = ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_username)
		set @std_pass = ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_password)
	
		IF((SELECT std_registered FROM student_detail WHERE std_id=@std_id)=2)
		BEGIN
			UPDATE student_detail SET std_username=@std_un, std_password=@std_pass, std_registered=1 WHERE std_id=@std_id
			SELECT std_id FROM student_detail WHERE std_username=@std_un AND std_password=@std_pass AND std_id=@std_id
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_first_login_fct]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_first_login_fct]
@fct_id bigint,
@txt_username nvarchar(50),
@txt_password nvarchar(50)
AS
BEGIN
declare @fct_un as varbinary(128)
declare @fct_pass as varbinary(128)
	SET NOCOUNT ON;
	
	
	IF((SELECT COUNT(login_username) FROM view_username WHERE (CONVERT(nvarchar(50), DecryptByAsymKey(AsymKey_ID('AsymKey'), login_username)) COLLATE Latin1_General_CS_AS)=@txt_username)=0)
	BEGIN
		set @fct_un = ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_username)
		set @fct_pass = ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_password)

		IF((SELECT fct_registered FROM faculty_detail WHERE fct_id=@fct_id)=2)
		BEGIN
			UPDATE faculty_detail SET fct_username=@fct_un , fct_password=@fct_pass,fct_registered=1 WHERE fct_id=@fct_id
			SELECT fct_id FROM faculty_detail WHERE fct_username=@fct_un AND fct_password=@fct_pass AND fct_id=@fct_id
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_edit_member_details]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_edit_member_details]
@txt_first_name nvarchar(50),
@txt_middle_name nvarchar(50),
@txt_last_name nvarchar(50),
@txt_gr_no nvarchar(50),
@txt_roll_no nvarchar(50),
@ddl_gender int,
@ddl_division int,
@ddl_program int,
@ddl_stream int,
@ddl_passing_year int,
@ddl_campus int,
@txt_dob nvarchar(50),
@ddl_relationship_status int,
@txt_company_name nvarchar(50),
@txt_designation nvarchar(50),
@txt_email nvarchar(50),
@txt_mobile nvarchar(50),
@txt_landline nvarchar(50),
@ddl_country int,
@txt_line1 nvarchar(50),
@txt_line2 nvarchar(50),
@txt_city nvarchar(50),
@txt_state nvarchar(50),
@txt_pincode nvarchar(50),
@std_id bigint


AS
BEGIN
	SET NOCOUNT ON;
	 
	SELECT COUNT(std_gr_no) AS std_gr_no FROM student_detail WHERE std_gr_no=@txt_gr_no AND std_id=@std_id
	IF((SELECT COUNT(std_gr_no) FROM student_detail WHERE std_gr_no=@txt_gr_no AND std_id=@std_id)=1  OR (SELECT COUNT(std_gr_no) FROM student_detail WHERE std_gr_no=@txt_gr_no)=0 AND (SELECT COUNT(std_gr_no) FROM student_detail WHERE std_gr_no=@txt_gr_no)<2)
	BEGIN
		SELECT COUNT(email) AS email from view_email_mobile WHERE email=@txt_email
		IF((SELECT COUNT(email) FROM view_email_mobile WHERE email=@txt_email and sap_id=(SELECT std_gr_no from student_detail where std_id=@std_id))=1 OR (SELECT COUNT(email) from view_email_mobile where email=@txt_email)=0 AND (SELECT COUNT(email) from view_email_mobile where email=@txt_email)<2)
		BEGIN
			SELECT COUNT(mobile_no) AS mobile_no from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10))
			IF((SELECT COUNT(mobile_no) FROM view_email_mobile WHERE (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)) and sap_id=(SELECT std_gr_no from student_detail where std_id=@std_id))=1 OR (((SELECT COUNT(mobile_no) FROM view_email_mobile where (SELECT RIGHT(mobile_no,10)) LIKE (SELECT RIGHT('%'+@txt_mobile,10))))=0) and (SELECT COUNT(mobile_no) from view_email_mobile where (SELECT RIGHT(mobile_no,10)) like (SELECT RIGHT('%'+@txt_mobile,10)))<2)
			BEGIN
				UPDATE student_detail SET std_first_name=@txt_first_name, std_middle_name=@txt_middle_name,std_last_name=@txt_last_name,std_gr_no=@txt_gr_no,
				std_roll_no=@txt_roll_no,std_gender=@ddl_gender,std_division=@ddl_division,std_program=@ddl_program,std_stream=@ddl_stream,std_passing_year=@ddl_passing_year,
				std_campus=@ddl_campus,std_dob=@txt_dob,std_relationship_status=@ddl_relationship_status,std_company_name=@txt_company_name,
				std_designaton=@txt_designation,std_email=@txt_email,std_mobile_no=@txt_mobile,std_landline=@txt_landline,std_country=@ddl_country,std_address_line1=@txt_line1,std_address_line2=@txt_line2,
				std_city=@txt_city,std_state=@txt_state,std_pincode=@txt_pincode WHERE std_id=@std_id
				
				SELECT std_id FROM student_detail WHERE std_id=@std_id
			END
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_member]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_member]
@txt_first_name nvarchar(50),
@txt_middle_name nvarchar(50),
@txt_last_name nvarchar(50),
@txt_gr_no nvarchar(50),
@txt_roll_no nvarchar(50),
@ddl_gender int,
@ddl_division int,
@ddl_program int,
@ddl_stream int,
@ddl_passing_year int,
@ddl_campus int,
@txt_dob nvarchar(50),
@ddl_relationship_status int,
@txt_company_name nvarchar(50),
@txt_designation nvarchar(50),
@txt_email nvarchar(50),
@txt_mobile nvarchar(50),
@txt_landline nvarchar(50),
@ddl_country int,
@txt_line1 nvarchar(50),
@txt_line2 nvarchar(50),
@txt_city nvarchar(50),
@txt_state nvarchar(50),
@txt_pincode nvarchar(50)


AS
BEGIN
	SET NOCOUNT ON;
	
	IF((SELECT count(std_id) FROM student_detail WHERE std_gr_no=@txt_gr_no)>0)
	BEGIN
		SELECT COUNT(std_gr_no) AS std_gr_no FROM student_detail where std_gr_no=@txt_gr_no
	END
	
	ELSE IF(((SELECT COUNT(email) from view_email_mobile where email=@txt_email)>0))
	BEGIN
		SELECT COUNT(email) as email from view_email_mobile where email=@txt_email
	END
	
	ELSE IF(((SELECT COUNT(mobile_no) FROM view_email_mobile where (SELECT RIGHT(mobile_no,10)) LIKE (SELECT RIGHT(@txt_mobile,10))))>0)
	BEGIN
		SELECT COUNT(mobile_no) as mobile_no from view_email_mobile where (SELECT RIGHT('%'+mobile_no,10)) LIKE (SELECT RIGHT(@txt_mobile,10))
	END
	
	ELSE
	BEGIN
		INSERT INTO student_detail(std_gr_no,std_roll_no,std_first_name,std_middle_name,std_last_name,std_gender,
		std_division,std_program,std_stream,std_campus,std_passing_year,std_dob,std_relationship_status,std_company_name,
		std_designaton,std_email,std_mobile_no,std_landline,std_country,std_address_line1,std_address_line2,std_city,std_state,std_pincode,
		std_username,std_password,mem_id,std_registered) 
		VALUES(@txt_gr_no,@txt_roll_no,@txt_first_name,@txt_middle_name,@txt_last_name,@ddl_gender,
		@ddl_division,@ddl_program,@ddl_stream,@ddl_campus,@ddl_passing_year,@txt_dob,@ddl_relationship_status,@txt_company_name,
		@txt_designation,@txt_email,@txt_mobile,@txt_landline,@ddl_country,@txt_line1,@txt_line2,@txt_city,@txt_state,@txt_pincode,
		ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_gr_no),ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_gr_no),(SELECT mem_id FROM member_type WHERE mem_type='Student'),3)
			
		SELECT COUNT(std_id) AS std_id FROM student_detail WHERE std_gr_no=@txt_gr_no
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_add_faculty]    Script Date: 04/23/2014 15:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_add_faculty]
@ddl_title nvarchar(50),
@txt_first_name nvarchar(50),
@txt_middle_name nvarchar(50),
@txt_last_name nvarchar(50),
@txt_sap_id nvarchar(50),
@ddl_department nvarchar(50),
@txt_designation nvarchar(50),
@txt_domain nvarchar(50),
@txt_current_research nvarchar(50),
@txt_email nvarchar(50),
@txt_mobile nvarchar(50),
@ddl_gender nvarchar(50)


AS
BEGIN
	SET NOCOUNT ON;
	
	
	IF((SELECT COUNT(fct_id) FROM faculty_detail WHERE fct_sap_id=@txt_sap_id)>0)
	BEGIN
		SELECT COUNT(fct_sap_id) AS fct_sap_id FROM faculty_detail WHERE fct_sap_id=@txt_sap_id
	END
	
	ELSE IF(((SELECT COUNT(email) from view_email_mobile where email=@txt_email)>0))
	BEGIN
		SELECT COUNT(email) as email from view_email_mobile where email=@txt_email
	END
	
	ELSE IF(((SELECT COUNT(mobile_no) FROM view_email_mobile where (SELECT RIGHT(mobile_no,10)) LIKE (SELECT RIGHT(@txt_mobile,10))))>0)
	BEGIN
		SELECT COUNT(mobile_no) as mobile_no from view_email_mobile where (SELECT RIGHT('%'+mobile_no,10)) LIKE (SELECT RIGHT(@txt_mobile,10))
	END
	
	ELSE
	BEGIN
		INSERT INTO faculty_detail(fct_sap_id,fct_title,fct_first_name,fct_middle_name,fct_last_name,fct_department,fct_designation,fct_domain,
		fct_current_research,fct_email,fct_mobile,fct_username,fct_password,mem_id,fct_registered,fct_gender) 
		VALUES(@txt_sap_id,@ddl_title,@txt_first_name,@txt_middle_name,@txt_last_name,@ddl_department,@txt_designation,@txt_domain,
		@txt_current_research,@txt_email,@txt_mobile,ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_sap_id),ENCRYPTBYASYMKEY(AsymKey_ID('AsymKey'),@txt_sap_id),(SELECT mem_id FROM member_type where mem_type='Faculty'),3,@ddl_gender)
		
		SELECT COUNT(fct_id) AS fct_id FROM faculty_detail WHERE fct_sap_id=@txt_sap_id
	END
END
GO
