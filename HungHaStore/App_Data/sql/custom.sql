USE [hung_ha_store]
GO

INSERT INTO [dbo].[nguoi_dung]([tai_khoan],[mat_khau],[email],[tg_tao]) VALUES (<tai_khoan, nvarchar(255),>,<mat_khau, nvarchar(255),>,<email, nvarchar(255),><tg_tao, date,>)
GO


USE [hung_ha_store]
GO

SELECT * FROM [dbo].[nguoi_dung] where tai_khoan = 'mitt.hai.7356' and mat_khau = '123456'

GO


SELECT * FROM [dbo].[nguoi_dung] where tai_khoan = 'mitt.hai.7356' and mat_khau = '123456'

USE [hung_ha_store]
GO

DELETE FROM [dbo].[nguoi_dung]


select * from san_pham where ten = N'K? ?? s?ch b?o g? MDF ph? melamine GHS-2397'






USE [hung_ha_store]
GO

UPDATE [dbo].[san_pham]
   SET id_kho = 674
 WHERE id = 225



 USE [hung_ha_store]
GO

INSERT INTO [dbo].[kho]
           ([so_luong])
     VALUES(0)
         
GO






 USE [hung_ha_store]
GO

DELETE FROM [dbo].[san_pham]
      WHERE id = 223
GO

ALTER TABLE [dbo].[nguoi_dung]
ADD COLUMN ten NVARCHAR(255) NULL after email;



ALTER TABLE [dbo].[nguoi_dung]
ADD ho_ten VARCHAR (255) NULL;


DELETE FROM [dbo].[chitiet_hd]

DELETE FROM [dbo].[hoa_don]


ALTER TABLE [dbo].[hoa_don]
ADD ten_nguoi_nhan VARCHAR (255) NOT NULL;

ALTER TABLE [dbo].[nguoi_dung]
ADD dia_chi_nhan VARCHAR (255) NOT NULL;

ALTER TABLE [dbo].[nguoi_dung]
ADD sdt_nhan VARCHAR (255) NOT NULL;


