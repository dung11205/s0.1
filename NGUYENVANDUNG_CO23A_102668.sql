--CAU1
CREATE DATABASE QLThueXe
go
USE QLThueXe
go
CREATE TABLE tNhaCungCap
(MaNhaCC varchar(10) primary key,
TenNhaCC varchar(50),
DiaChi varchar(100),
SoDT varchar(10),
MaSoThue varchar(20)
)
go
CREATE TABLE tLoaiDichVu
(MaLoaiDV varchar(10) primary key,
TenLoaiDV varchar(50)
)
go
CREATE TABLE tMucPhi
(MaMP varchar(10)primary key,
DonGia int,
MoTa varchar(100)
)
go
CREATE TABLE tDongXe
(DongXe varchar(10) primary key,
HangXe varchar(50),
SoChoNgoi int
)
go
CREATE TABLE tDangKyCungCap
(MaDKCC varchar(10) primary key,
MaNhaCC varchar(10),
MaLoaiDV varchar(10),
DongXe varchar(10),
MaMP varchar(10),
NgayBatDauCungCap datetime,
NgayKetThucCungCap datetime,
SoLuongXeDangKy int
Foreign key (MaNhaCC) References tNhaCungCap(MaNhaCC),
Foreign key (MaLoaiDV) References tLoaiDichVu(MaLoaiDV),
Foreign key (DongXe) References tDongXe(DongXe),
Foreign key (MaMP) References tMucPhi(MaMP)
)
--CAU2
INSERT INTO tLoaiDichVu
VALUES ('DV01','Dịch vụ xe taxi'),
	('DV02','Dịch vụ xe buýt công cộng theo tuyến cố định'),
	('DV03','Dịch vụ xe cho thuê theo hợp đồng')
INSERT INTO tNhaCungCap
VALUES ('NCC001','Cty TNHH Toàn Pháp','Hải Châu','5113999888','568941'),
	('NCC002','Cty cổ phần Đông Du','Liên Chiểu','5113999889','456789'),
	('NCC003','Ông Nguyễn Văn A','Hòa Thuận','5113999890','321456'),
	('NCC004','Cty cổ phần Toàn Cầu Xanh','Hải Châu','5113658945','513364'),
	('NCC005','Cty TNHH AMA','Thanh Khê','5113875466','546546'),
	('NCC006','Bà Trần Thị Bích Vân','Liên Chiểu','5113587469','524545'),
	('NCC007','Cty TNHH Phan Thành','Thank Khê','5113987456','113021'),
	('NCC008','Ông Phan Đình Nam','Hòa Thuận','5113532456','121230'),
	('NCC009','Tập đoàn Đông Nam Á','Liên Chiểu','5113987121','533654'),
	('NCC010','Cty cổ phần Rạng Đông','Liên Chiểu','5113569654','187864')
INSERT INTO tDongXe
VALUES ('Hiace','Toyota',16),
	('Vios','Toyota',5),
	('Escape','Ford',5),
	('Cerato','Kia',7),
	('Forte','Kia',5),
	('Starex','Huyndai',7),
	('Grand-i10','Huyndai',7)
INSERT INTO tMucPhi
VALUES ('MP01',10000,'Áp dụng từ 1/2015'),
	('MP02',15000,'Áp dụng từ 2/2015'),
	('MP03',20000,'Áp dụng từ 1/2010'),
	('MP04',25000,'Áp dụng từ 2/2011')
INSERT INTO tDangKyCungCap VALUES 
	('DK001','NCC001','DV01','Hiace','MP01',20/11/2015,20/11/2016,4),
	('DK002','NCC002','DV02','Vios','MP02',20/11/2015,20/11/2017,3),
	('DK003','NCC003','DV03','Escape','MP03',20/11/2017,20/11/2018,5),
	('DK004','NCC005','DV01','Cerato','MP04',20/11/2015,20/11/2019,7),
	('DK005','NCC002','DV02','Forte','MP03',20/11/2019,20/11/2020,1),
	('DK006','NCC004','DV03','Starex','MP04',10/11/2016,20/11/2021,2),
	('DK007','NCC005','DV01','Cerato','MP03',30/11/2015,25/01/2016,8),
	('DK008','NCC006','DV01','Vios','MP02',28/02/2016,15/08/2016,9),
	('DK009','NCC005','DV03','Grand-i10','MP02',27/04/2016,30/04/2017,10),
	('DK010','NCC006','DV01','Forte','MP02',21/11/2015,22/02/2016,4),
	('DK011','NCC007','DV01','Forte','MP01',25/12/2016,20/02/2017,5),
	('DK012','NCC007','DV03','Cerato','MP01',14/04/2016,20/12/2017,6),
	('DK013','NCC003','DV02','Cerato','MP01',21/12/2015,20/11/2016,8),
	('DK014','NCC008','DV02','Cerato','MP01',20/05/2016,30/12/2016,1),
	('DK015','NCC003','DV01','Hiace','MP02',24/04/2018,20/11/2019,6),
	('DK016','NCC001','DV03','Grand-i10','MP02',22/06/2016,21/12/2016,8),
	('DK017','NCC002','DV03','Cerato','MP03',30/09/2016,30/09/2019,4),
	('DK018','NCC008','DV03','Escape','MP04',13/12/2017,30/09/2018,2),
	('DK019','NCC003','DV03','Escape','MP03',24/01/2016,30/12/2016,8),
	('DK020','NCC002','DV03','Cerato','MP04',03/05/2016,21/10/2017,7),
	('DK021','NCC006','DV01','Forte','MP02',30/01/2015,30/12/2016,9),
	('DK022','NCC002','DV02','Cerato','MP04',25/07/2016,30/12/2017,6),
	('DK023','NCC002','DV01','Forte','MP03',30/11/2017,20/05/2018,5),
	('DK024','NCC003','DV03','Forte','MP04',23/12/2017,30/11/2019,8),
	('DK025','NCC003','DV03','Hiace','MP02',24/08/2016,25/10/2017,1);

--cau3
	use QLThueXe
SELECT *FROM tDongXe
WHERE SoChoNgoi > 5;
--------
go
--cau4
SELECT DISTINCT NhaCungCap.*FROM tNhaCungCap NhaCungCap
INNER JOIN tDangKyCungCap ON NhaCungCap.MaNhaCC = tDangKyCungCap.MaNhaCC
INNER JOIN tDongXe DongXe ON tDangKyCungCap.DongXe = DongXe.DongXe
INNER JOIN tMucPhi MucPhi ON tDangKyCungCap.MaMP = MucPhi.MaMP
WHERE (DongXe.HangXe = 'Toyota' AND MucPhi.DonGia = 15000)
   OR (DongXe.HangXe = 'Kia' AND MucPhi.DonGia = 20000);

----
--cau5
   SELECT *FROM tNhaCungCap
ORDER BY TenNhaCC ASC, MaSoThue DESC;
--cau6

select MANHACC , COUNT (*) AS DEMSOLANDKI
FROM TDANGKYCUNGCAP
WHERE NGAYBATDAUCUNGCAP = 20/11/2015
GROUP BY MANHACC;

--cau7
SELECT DISTINCT HangXe
FROM tDongXe;

--CAU8
SELECT DISTINCT NC.*
FROM tNhaCungCap NC
INNER JOIN tDangKyCungCap DKCC ON NC.MaNhaCC = DKCC.MaNhaCC
INNER JOIN tDongXe DX ON DKCC.DongXe = DX.DongXe
WHERE DX.DongXe IN ('Hiace', 'Cerato');

--CAU9
SELECT *FROM tNhaCungCap
WHERE MaNhaCC NOT IN (
    SELECT DISTINCT MaNhaCC
    FROM tDangKyCungCap
);

