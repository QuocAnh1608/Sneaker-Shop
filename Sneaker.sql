-- Tạo Databae Shop bán giầy

create database Sneaker

go 
use Sneaker
go

CREATE TABLE Users
(
	id nvarchar(50) NOT NULL PRIMARY KEY,
	passwords nvarchar(50)	not NULL,
	fullname nvarchar(50)  not NULL,
	email nvarchar(50)	not NULL,
	sdt	nchar(10) not NULL,
	roles bit not NULL,
)

CREATE TABLE danhmuc
(
	madm nvarchar(50) PRIMARY KEY NOT NULL,
	tendanhmuc nvarchar(255) not NULL,
	ghichu ntext not null
)	

CREATE TABLE sanpham
(
	masp nvarchar(50) PRIMARY KEY NOT NULL,
	tensp nvarchar(255)	not NULL,
	giasp decimal(12,3)	NULL,
	mota ntext  not NULL,
	hinh nvarchar(255) not NULL,
	soluong	int	not NULL,
	madm nvarchar(50) FOREIGN KEY REFERENCES danhmuc(madm)
)

CREATE TABLE hoadon
(
	id	int	PRIMARY KEY IDENTITY(1,1) NOT NULL,
	userId	nvarchar(50) FOREIGN KEY REFERENCES Users(id),
	tongtien decimal(12,3)	NOT NULL,
	dienthoai varchar(11) NOT NULL,
	diachi nvarchar(255) NOT NULL
)
GO

CREATE TABLE hoadonchitiet
(
	id	int	PRIMARY KEY IDENTITY(1,1) NOT NULL,
	mahd int FOREIGN KEY REFERENCES hoadon(id),
	masp nvarchar(50) FOREIGN KEY REFERENCES sanpham(masp),
	soluong	int NOT NULL,
	gia	decimal(12,3) NOT NULL
)	

INSERT INTO Users(id, passwords, fullname, email, sdt, roles) VALUES
('admin', '123', N'Nguyễn Hoàng Quốc Anh', 'tula@fpt.edu.vn', '0164940179', 1),
('user', '123', N'Bùi Nhật Trường', 'truongbnps19238@fpt.edu.vn', '0941123456', 0)


INSERT INTO danhmuc(madm, tendanhmuc, ghichu) VALUES 
('G1', N'Giày thể thao', N'Vận động'),
('G2', N'Giày lười', N'Không dây'),
('N1', N'Giày nữ', N'Vận động'),
('T1', N'Túi', N'Túi thời trang')


INSERT INTO sanpham(masp, tensp, giasp, mota, hinh, soluong, madm) VALUES 
('L01', N'addidas New Hammer smoky gray', 5000000, N'Sports person', 'p1.jpg', 10, 'G1'),
('L02', N'addidas New Hammer green gray', 100000, N'Sports person', 'p2.jpg', 20, 'G1'),
('L03', N'addidas Lazy shoes', 8888000, N'Lazy shoes', 'p3.jpg', 5, 'G2'),
('L04', N'addidas brown ', 67890445, N'Sports', 'p4.jpg', 8, 'G1'),
('L05', N'addidas grey', 566655, N'Sports', 'p5.jpg', 10, 'G1'),
('L06', N'addidas red', 43536565, N'Sports', 'p6.jpg', 12, 'G1'),
('L07', N'addidas pink', 32432434, N'Sports', 'p7.jpg', 30, 'G1'),
('L08', N'Giày đế thấp đỏ', 45443545, N'Sports', 'r6.jpg', 25, 'N1'),
('L09', N'Giày gót cao đen', 45443545, N'Sports', 'r1.jpg', 25, 'N1'),
('L10', N'Giày gót cao hồng', 45443545, N'Sports', 'r4.jpg', 25, 'N1'),
('L11', N'Túi thời trang thương hiệu', 45443545, N'Sports', 'Gucchi2.jpg', 25, 'T1'),
('L12', N'Túi thời trang thương hiệu', 45443545, N'Sports', 'Gucchi1.jpg', 25, 'T1'),
('L13', N'Giày gót cao vàng xám', 45443545, N'Sports', 'r11.jpg', 25, 'N1')

