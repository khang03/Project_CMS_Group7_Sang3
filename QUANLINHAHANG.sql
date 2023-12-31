﻿CREATE DATABASE QUANLINHAHANG
GO
USE QUANLINHAHANG
GO
--tao bang
CREATE TABLE Ban
(
	MaBan CHAR (10)PRIMARY KEY not null
	,TenBan char (20)
	,TrangThai char (10) CONSTRAINT Ch_TrangThai CHECK( TrangThai IN ('Chưa','Có người'))
	
)
GO
CREATE TABLE ThucDon
(
	MaThucDon CHAR (10)PRIMARY KEY not null
	,MonAn nvarchar(50)null
	,SoLuong int null
	,Gia int null
)
GO
CREATE TABLE Biil
(
	MaBill CHAR (10)PRIMARY KEY not null
	,MaBan CHAR (10) not null
	,MaOder CHAR (10) not null
	,TenMon nvarchar(50) null
	,SoLuong int null
	,Gia int null
	,GiamGia float null
	,TongTien int null
	,NgayGio date null 
)
GO
CREATE TABLE Oder
(
	MaOder char (10)
	,MaBan char (10)
	,TenMon nvarchar (50)
	,SoLuong int
	
)
CREATE TABLE NHANVIEN
(
	Manv char(10) PRIMARY KEY
	,Tennv nvarchar(30) NOT NULL
	,Gioitinh char(10) CONSTRAINT Ch_Gioitinh CHECK(Gioitinh IN ('Nam','Nu'))
	,Ngaysinh date NOT NULL
	,Diachi nvarchar(50)NOT NULL
	,Sdt varchar(20)
	,Ghichu nvarchar(50)
)
--drop database QUANLINHAHANG
-- tạo các storeprocedure
-- lấy danh sách các Ban
CREATE PROC sp_LaydsBan
AS
BEGIN
	SELECT * FROM Ban
END
-- thuc thi store
exec sp_LaydsBan

-- thêm Bàn
CREATE PROC sp_ThemBan(@ma char(10),@ten char(20) @trangthai char(10))
AS
BEGIN
  INSERT INTO  Ban(MaBan,TenBan,TrangThai)
  VALUES(@ma,@ten,@trangthai)
END
--thực thi store
exec sp_ThemBan 'B1','Bàn 1','Chưa'

--sửa Bàn
CREATE PROC sp_SuaBan(@ma char(10),@ten char (20) @trangthai char(10))
AS
BEGIN
   UPDATE Ban
   SET TenBan = @ten 
   WHERE MaBan = @ma
END
--thực thi store
exec sp_ThemBan 'B1','Bàn số 1''Chưa'

--xóa Bàn
CREATE PROC sp_XoaBan(@ma char(10))
AS
BEGIN
	DELETE FROM	Ban WHERE @ma = MaBan
END
--thực thi store
exec sp_XoaBan 'B1'  
-- lấy danh sách oder
CREATE PROC sp_LaydsOrder
AS
BEGIN
 SELECT * FROM oder
END
--thực thi store
--exec sp_LaydsOder 
-- Thêm oder
CREATE PROC sp_ThemOder(MaOder char (10),MaBan char (10),TenMon nvarchar (50),SoLuong int)
AS
BEGIN
  INSERT INTO  oder(MaOder,MaBan,TenMon, SoLuong)
  VALUES(@maoder,@maban,@tenmon, @soluong)
END
--thực thi store
--exec sp_ThemOder '123','Bàn 1','Cơm chiên', '2'
--Sửa oder
CREATE PROC sp_SuaOder(MaOder char (10),MaBan char (10),TenMon nvarchar (50),SoLuong int)
AS
BEGIN
   UPDATE Oder
   SET	MaOder = @maoder
		TenMon = @ten
		SoLuong = @sl
   WHERE MaBan = @maban
		 
END
--thực thi store
--exec sp_ThemOder '123','Bàn số 1''Lẩu' '1'
--Xóa oder
CREATE PROC sp_XoaOder(@maoder char(10))
AS
BEGIN
	DELETE FROM Oder WHERE @maoder = MaOder
END
--thực thi store
--exec sp_XoaOder '123'
-- Lấy danh sách nhân viên
CREATE PROC sp_LaydsNhanVien
AS
BEGIN
 SELECT * FROM NHANVIEN
END
--thực thi store
--exec sp_LaydsNhanVien
--Thêm nhân viên
CREATE PROC sp_ThemNhanVien(Manv char(10),Tennv nvarchar(30),Gioitinh char(10) ,Ngaysinh date 
	,Diachi nvarchar(50),Sdt varchar(20),Ghichu nvarchar(50))
AS
BEGIN
  INSERT INTO  NHANVIEN(MaNV,TenNV,Gioitinh, Ngaysinh, Diachi, Sdt, Ghichu)
  VALUES(@manv,@tennv,@gt, @ns,@dc,@sdt,@ghichu)
END
--thực thi store
--exec sp_ThemOder '0237','Lê Nhật Tiến','Nam', '2001',TPHCM, '0943857912', 'abc'
--Sửa Nhân viên
CREATE PROC sp_SuaNhanVien(Manv char(10),Tennv nvarchar(30),Gioitinh char(10) ,Ngaysinh date 
	,Diachi nvarchar(50),Sdt varchar(20),Ghichu nvarchar(50))
AS
BEGIN
   UPDATE NHANVIEN
   SET	
		TenNhanVien = @tennv
		GioiTinh = @gt
		Sdt = @sdt
   WHERE MaNhanVien = @manv
		 
END
--thực thi store
--exec sp_ThemNhanVien '0327','Lê Đức Trung Hiếu ','Nam', '2000',Gia Lai, '028124033', 'xyz'
--Xóa nhân viên
CREATE PROC sp_XoaNhanVien(@manv char(10))
AS
BEGIN
	DELETE FROM Oder WHERE @manv = MaNhanVien
END
--thực thi store
--exec sp_XoaNhanVien '0327'

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     