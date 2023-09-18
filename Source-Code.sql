CREATE DATABASE QLBV

USE QLBV

SET DATEFORMAT DMY

CREATE TABLE ChuyenNganh 
(
    MaChuyenNganh	CHAR(10) PRIMARY KEY,
    TenChuyenNganh	NVARCHAR(50)
);

INSERT INTO ChuyenNganh (MaChuyenNganh, TenChuyenNganh) VALUES
	('CN001', N'Nội khoa'),
	('CN002', N'Y học cổ truyền'),
	('CN003', N'Ngoại khoa'),
	('CN004', N'Răng hàm mặt'),
	('CN005', N'Phụ sản'),
	('CN006', N'Tim mạch'),
	('CN007', N'Da liễu'),
	('CN008', N'Hô hấp'),
	('CN009', N'Hồi sức cấp cứu'),
	('CN010', N'Thần kinh'),
	('CN011', N'Nhi'),
	('CN012', N'Tiêu hóa'),
	('CN013', N'Tai mũi họng'),
	('CN014', N'Ung bướu'),
	('CN015', N'Xương khớp');

CREATE TABLE NhanVien
(
    MaNV	CHAR(10) PRIMARY KEY,
    HoTenNV	NVARCHAR(50),
    GioiTinh	NVARCHAR(3),
    NgaySinh	DATE,
    DiaChi	NVARCHAR(100),
    Tuoi	INT,
    ChucDanh	NVARCHAR(50),
    TenKhoa	NVARCHAR(20),
    MaChuyenNganh	CHAR(10)	FOREIGN KEY REFERENCES ChuyenNganh(MaChuyenNganh),
    SDT	CHAR(10)
);

INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV001', N'Nguyễn Văn Anh', N'Nam', '10/01/1985', N'Số 326, Đường Trần Phú, Phường Trưng Vương, TP Hải Phòng, Tỉnh Hải Phòng', '38', N'Bác sỹ', N'Ngoại', 'CN003', '0912345678');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV002', N'Trần Thị Bích', N'Nữ', '12/02/1978', N'Số 379, Đường Trần Hưng Đạo, Phường Bến Thành, Quận 1, TP Hồ Chí Minh, Tỉnh TP Hồ Chí Minh', '45', N'Bác sỹ', N'Nội', 'CN001', '0987654321');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV003', N'Lê Minh Châu', N'Nữ', '03/01/1977', N'Số 459, Đường Lê Lợi, Phường Tràng Tiền, Quận Hoàn Kiếm, TP Hà Nội, Tỉnh Hà Nội', '46', N'Bác sỹ', N'Phụ Sản', 'CN005', '0909123456');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV004', N'Phan Thanh Duy', N'Nam', '19/06/1980', N'Số 453, Đường Lê Duẩn, Phường Vĩnh Ninh, TP Huế, Tỉnh Thừa Thiên Huế', '43', N'Y tá', N'Răng hàm mặt', 'CN004', '0978098765');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV005', N'Hoàng Thị Hằng', N'Nữ', '20/08/1981', N'Số 169, Đường Hùng Vương, Phường Bãi Cháy, TP Hạ Long, Tỉnh Quảng Ninh', '42', N'Bác sỹ', N'Ngoại', 'CN003', '0945632187');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV006', N'Nguyễn Văn Đức', N'Nam', '22/12/1988', N'Số 35, Đường Trần Phú, Phường Ngô Quyền, TP Đà Nẵng, Tỉnh Đà Nẵng', '35', N'Y tá', N'Ngoại', 'CN003', '0932156789');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV007', N'Trần Thị Diễm', N'Nữ', '27/07/1992', N'Số 29, Đường Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP Hồ Chí Minh, Tỉnh TP Hồ Chí Minh', '31', N'Bác sỹ', N'Nội', 'CN001', '0967812345');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV008', N'Lê Minh Hiếu', N'Nam', '13/08/1993', N'Số 366, Đường Trần Nhật Duật, Phường Điện Biên, TP Điện Biên Phủ, Tỉnh Điện Biên', '30', N'Bác sỹ', N'Nội', 'CN001', '0923456789');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV009', N'Phan Thị Mai', N'Nữ', '15/09/1998', N'Số 194, Đường Trần Quốc Toản, Phường Nguyễn Du, TP Vinh, Tỉnh Nghệ An', '25', N'Y tá', N'Da liễu', 'CN007', '0956789123');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV010', N'Hoàng Văn Nam', N'Nam', '03/12/1986', N'Số 102, Đường Hùng Vương, Phường Trường Thi, TP Thanh Hóa, Tỉnh Thanh Hóa', '37', N'Bác sỹ', N'Hô hấp', 'CN008', '0998765432');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV011', N'Nguyễn Thị Ngọc', N'Nữ', '07/12/1985', N'Số 217, Đường Trường Chinh, Phường Nghĩa An, TP Quy Nhơn, Tỉnh Bình Định', '38', N'Bác sỹ', N'Thần kinh', 'CN010', '0912876543');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV012', N'Trần Minh Quân', N'Nam', '26/06/1989', N'Số 466, Đường Phạm Văn Đồng, Phường Mỹ An, TP Đà Nẵng, Tỉnh Đà Nẵng', '34', N'Bác sỹ', N'Nhi', 'CN011', '0987654321');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV013', N'Lê Thị Thu', N'Nữ', '04/05/1986', N'Số 356, Đường Bà Triệu, Phường Lê Đại Hành, TP Vinh, Tỉnh Nghệ An', '37', N'Bác sỹ', N'Tiêu hóa', 'CN012', '0943216789');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV014', N'Phan Văn Tùng', N'Nam', '06/04/1987', N'Số 142, Đường Nguyễn Sinh Sắc, Phường Võ Cường, TP Bắc Ninh, Tỉnh Bắc Ninh', '36', N'Bác sỹ', N'Ung bướu', 'CN014', '0921098765');
INSERT INTO NhanVien (MaNV, HoTenNV, GioiTinh, NgaySinh, DiaChi, Tuoi, ChucDanh, TenKhoa, MaChuyenNganh, SDT) VALUES ('NV015', N'Khương Bá Ước', N'Nam', '20/02/1964', N'Số 122, dốc Vân La, xã Hồng Vân, huyện Thường Tín, TP Hà Nội', '59', N'Bác sỹ', N'Xương khớp', 'CN015', '0534466930');

CREATE TABLE BenhNhan 
(
    MaBN	CHAR(10) PRIMARY KEY,
    HoTenBN	NVARCHAR(50),
    GioiTinh	NVARCHAR(3),
    NgaySinh	DATE,
    DiaChi	NVARCHAR(100),
    Tuoi	INT,
    DanToc	NVARCHAR(50),
    SDT	CHAR(10)
);

INSERT INTO BenhNhan (MaBN, HoTenBN, GioiTinh, NgaySinh, DiaChi, Tuoi, DanToc, SDT) VALUES
	('BN001', N'Nguyễn Thị Hương', N'Nam', '23/06/1999', N'Số 205, Đường Hùng Vương, Phường Lê Lợi, Thành phố Đà Nẵng', '24', N'Kinh', '0987654321'),
	('BN002', N'Trần Văn Long', N'Nữ', '11/10/2001', N'Số 208, Đường Trần Phú, Phường Ngô Quyền, Thành phố Hải Phòng', '22', N'Kinh', '0912345678'),
	('BN003', N'Lê Thị Mai', N'Nữ', '05/03/1998', N'Số 436, Đường Lý Thường Kiệt, Phường Trần Hưng Đạo, Quận 1, Thành phố Hồ Chí Minh', '25', N'Kinh', '0976543210'),
	('BN004', N'Tôn Thượng Hương', N'Nữ', '19/12/2004', N'Số 369, Đường Nguyễn Huệ, Phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', '19', N'Kinh', '0909876543'),
	('BN005', N'Hoàng Thị Thu', N'Nữ', '08/09/2002', N'Số 96, Đường Trường Chinh, Phường Trung Lực, Thành phố Nam Định', '21', N'Kinh', '0965432109'),
	('BN006', N'Võ Minh Trí', N'Nam', '14/7/1998', N'Số 203, Đường Nguyễn Sinh Sắc, Phường Vũ Trung, Thành phố Thanh Hóa', '25', N'Kinh', '0943210987'),
	('BN007', N'Đặng Thị Linh', N'Nữ', '30/11/2006', N'Số 324, Đường Trần Phú, Phường Quang Trung, Thành phố Hà Tĩnh', '17', N'Tày', '0932109876'),
	('BN008', N'Vũ Trung Nam', N'Nam', '02/05/2000', N'Số 396, Đường Lý Thái Tổ, Phường Nguyễn Du, Thành phố Huế', '23', N'Kinh', '0956789012'),
	('BN009', N'Bùi Thị Hạnh', N'Nữ', '17/08/2003', N'Số 200, Đường Trần Nhật Duật, Phường Mỹ An, Thành phố Đà Nẵng', '20', N'Kinh', '0921098765'),
	('BN010', N'Đỗ Minh Tuấn', N'Nam', '29/01/2008', N'Số 790, Đường Ngô Quyền, Phường Trần Hưng Đạo, Thành phố Hải Dương', '15', N'Kinh', '0990123456'),
	('BN011', N'Trương Thị Trang', N'Nữ', '10/04/1999', N'Số 630, Đường Hồ Chí Minh, Phường Phan Chu Trinh, Thành phố Nha Trang', '24', N'Kinh', '0987654321'),
	('BN012', N'Lý Văn Hùng', N'Nam', '26/09/2005', N'Số 45, Đường Trường Chinh, Phường Lê Lợi, Thành phố Bắc Giang', '18', N'Mường', '0912345678'),
	('BN013', N'Trần Thị Ngọc Anh', N'Nữ', '07/12/2001', N'Số 495, Đường Nguyễn Văn Cừ, Phường Trần Phú, Thành phố Hạ Long', '22', N'Kinh', '0976543210'),
	('BN014', N'Phan Văn Khánh', N'Nam', '18/02/2009', N'Số 45, Đường Lê Duẩn, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', '14', N'Kinh', '0909876543');

CREATE TABLE TheBHYT 
(
    SoTheBHYT	CHAR(15) PRIMARY KEY,
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    NgayCap	DATE,
    NgayHetHan	DATE
);

INSERT INTO TheBHYT (SoTheBHYT, MaBN, NgayCap, NgayHetHan) VALUES
	('GD201973398843', 'BN001', '23/06/2020', '23/06/2025'),
	('GD548697316920', 'BN002', '11/10/2020', '11/10/2025'),
	('DN501914094151', 'BN003', '05/03/2020', '05/03/2025'),
	('GD148188420195', 'BN004', '19/12/2020', '19/12/2022'),
	('DN579524938843', 'BN005', '08/09/2020', '08/09/2025'),
	('QN101559118927', 'BN006', '14/07/2020', '14/07/2025'),
	('HS148162557725', 'BN007', '30/11/2020', '30/11/2025'),
	('HS201506746735', 'BN008', '02/05/2020', '02/05/2025'),
	('HS579878132257', 'BN009', '17/08/2020', '17/08/2022'),
	('HS201222058659', 'BN010', '29/01/2020', '29/01/2025'),
	('CA531471584840', 'BN011', '10/04/2020', '10/04/2025'),
	('HS379497796648', 'BN012', '26/09/2020', '26/09/2025'),
	('GD548484641617', 'BN013', '07/12/2020', '07/12/2025'),
	('HS392906808295', 'BN014', '18/02/2020', '18/02/2022');

CREATE TABLE CoSoYTe 
(
    MaCSYT	CHAR(10) PRIMARY KEY,
    TenCSYT	NVARCHAR(100)
);

INSERT INTO CoSoYTe (MaCSYT, TenCSYT) VALUES
	('BMHN', N'Bệnh viện Bạch Mai - Hà Nội'),
	('CRHCM', N'Bệnh viện Chợ Rẫy - TP Hồ Chí Minh'),
	('YDHCM', N'Bệnh viện Đại học Y Dược - TP Hồ Chí Minh'),
	('VDHN', N'Bệnh viện Việt Đức - Hà Nội'),
	('VNCBHN', N'Bệnh viện Việt Nam - Cuba - Hà Nội'),
	('DNDN', N'Bệnh viện Đà Nẵng - Đà Nẵng'),
	('NTWHN', N'Bệnh viện Nhi Trung ương - Hà Nội'),
	('NDHCM', N'Bệnh viện Nhi Đồng Thành phố Hồ Chí Minh - TP Hồ Chí Minh'),
	('TWH', N'Bệnh viện Trung ương Huế - Thừa Thiên Huế'),
	('108HN', N'Bệnh viện 108 - Hà Nội'),
	('115HCM', N'Bệnh viện 115 - TP Hồ Chí Minh'),
	('NDTWHN', N'Bệnh viện Bệnh Nhiệt đới Trung ương - Hà Nội'),
	('HNVDHN', N'Bệnh viện Hữu nghị Việt Đức - Hà Nội'),
	('TWCTCT', N'Bệnh viện Trung ương Cần Thơ - Cần Thơ');

CREATE TABLE Thuoc 
(
    MaThuoc	CHAR(10) PRIMARY KEY,
    TenThuoc	NVARCHAR(50),
    DonViTInh	NCHAR(10),
    XuatXu	NVARCHAR(50)
);

INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T001', N'Efferalgan', N'Viên', N'Việt Nam');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T002', N'Yumangel', N'Gói', N'Nhật Bản');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T003', N'Berberin', N'Viên', N'Trung Quốc');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T004', N'Clorpheniramin', N'Viên', N'Ấn Độ');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T005', N'CumarGold', N'Viên', N'Hàn Quốc');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T006', N'Hapacol', N'Lọ', N'Lào');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T007', N'Curmin Lead', N'Viên', N'Thái ');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T008', N'Gaviscon', N'Lọ', N'Hà Lan');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T009', N'Decolgen', N'Viên', N'Đức');
INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTInh, XuatXu) VALUES ('T010', N'Phosphalugel', N'Gói', N'Nam Phi');

SET DATEFORMAT YMD

CREATE TABLE DonThuoc 
(
    SoDon	CHAR(10) PRIMARY KEY,
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaThuoc	CHAR(10) FOREIGN KEY REFERENCES Thuoc(MaThuoc),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV),
    NgayGioKeDon	DATETIME,
    CachDung	NVARCHAR(100),
    SoLuong	INT
);

INSERT INTO DonThuoc (SoDon, MaBN, MaThuoc, MaNV, NgayGioKeDon, CachDung, SoLuong) VALUES
	('SD001', 'BN002', 'T003', 'NV004', '2023-7-15 12:28:30', N'2 viên sáng tối', '30'),
	('SD002', 'BN002', 'T006', 'NV007', '2023-7-15 13:30:22', N'Mỗi ngày một viên', '15'),
	('SD003', 'BN005', 'T001', 'NV004', '2023-7-17 06:10:15', N'Mỗi ngày hai viên', '60'),
	('SD004', 'BN007', 'T010', 'NV010', '2023-8-14 01:15:22', N'Uống một gói sau ăn', '10'),
	('SD005', 'BN003', 'T001', 'NV004', '2023-12-14 22:10:22', N'Uống một viên trước ăn', '10'),
	('SD006', 'BN010', 'T005', 'NV008', '2023-10-22 17:56:50', N'Một ngày hai viên', '20'),
	('SD007', 'BN008', 'T007', 'NV001', '2023-4-23 08:12:33', N'Uống trước khi đi ngủ', '15'),
	('SD008', 'BN001', 'T009', 'NV009', '2023-1-1 08:12:03', N'Uống hai viên trước khi ăn', '20'),
	('SD009', 'BN004', 'T002', 'NV006', '2023-4-7 12:12:12', N'Uống một gói trước ăn', '10');

CREATE TABLE GiayChuyenVien 
(
    SogiayCV	CHAR(10) PRIMARY KEY,
    Tiensubenh	NVARCHAR(200),
    Chuandoan	NVARCHAR(100),
    Ngaykychuyen	DATE,
    Ngaynhan	DATE,
    MaCSYT1	CHAR(10) FOREIGN KEY REFERENCES CoSoYTe(MaCSYT),
    MaCSYT2	CHAR(10) FOREIGN KEY REFERENCES CoSoYTe(MaCSYT),
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV)
);

INSERT INTO GiayChuyenVien (SogiayCV, Tiensubenh, Chuandoan, Ngaykychuyen, Ngaynhan, MaCSYT1, MaCSYT2, MaBN, MaNV) VALUES
	('CV001', N'Không có', N'Suy hô háp cấp', '2023-5-17', '2023-5-17', 'BMHN', 'CRHCM', 'BN001', 'NV001'),
	('CV002', N'Suy thận, tiểu đường loại 2', N'Suy tim', '2023-5-21', '2023-5-28', 'CRHCM', 'YDHCM', 'BN007', 'NV005'),
	('CV003', N'Huyết áp cao', N'Viêm ruột non', '2023-6-10', '2023-6-11', 'BMHN', '108HN', 'BN002', 'NV001'),
	('CV004', N'Không có', N'Xuất huyết não', '2023-6-23', '2023-6-23', 'TWH', 'DNDN', 'BN010', 'NV007'),
	('CV005', N'Suy tim', N'Nhồi máu cơ tim', '2023-7-6', '2023-7-7', 'DNDN', 'VDHN', 'BN011', 'NV004'),
	('CV006', N'Tiểu đường', N'Đột quỵ', '2023-6-18', '2023-6-18', 'BMHN', '108HN', 'BN012', 'NV008'),
	('CV007', N'Không có', N'Gãy tay', '2023-8-12', '2023-8-12', 'BMHN', 'VDHN', 'BN002', 'NV001'),
	('CV008', N'Gãy tay phải', N'Gãy tay phải', '2023-9-10', '2023-9-10', 'CRHCM', 'VDHN', 'BN013', 'NV006'),
	('CV009', N'Hội chứng ruột kích thích', N'Viêm dạ dày', '2023-6-17', '2023-6-17', 'YDHCM', 'NTWHN', 'BN003', 'NV012'),
	('CV010', N'Kháng kháng sinh', N'Viêm ngón tay phải', '2023-4-1', '2023-4-2', 'VNCBHN', 'TWCTCT', 'BN009', 'NV010');

CREATE TABLE GiayRaVien 
(
    SogiayRV	CHAR(10) PRIMARY KEY,
    Ngaygiovao	DATE,
    Ngaygiora	DATE,
    KetquaDT	NVARCHAR(100),
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV),
    PhuongphapDT	NVARCHAR(100)
);

INSERT INTO GiayRaVien (SogiayRV, Ngaygiovao, Ngaygiora, KetquaDT, MaBN, MaNV, PhuongphapDT) VALUES
	('RV001', '2022-1-1', '2022-1-2', N'Điều trị khỏi', 'BN001', 'NV002', N'Khúc xạ ánh sáng'),
	('RV002', '2022-1-9', '2022-1-10', N'Điều trị khỏi', 'BN002', 'NV001', N'Phương pháp đơn hình'),
	('RV003', '2022-2-1', '2022-2-3', N'Kết quả tốt. Người bệnh về theo dõi thêm.', 'BN003', 'NV011', N'Phương pháp hướng giảm'),
	('RV004', '2022-2-19', '2022-2-23', N'Người bệnh 6 tháng sau khám lại', 'BN005', 'NV003', N'Công thức Poisson'),
	('RV005', '2022-2-26', '2022-3-1', N'Điều trị khỏi', 'BN004', 'NV010', N'Xích Markov'),
	('RV006', '2022-3-3', '2022-3-12', N'6 tháng sau khám lại.', 'BN008', 'NV005', N'Hóa trị'),
	('RV007', '2022-1-9', '2022-4-10', N'3 tháng sau khám lại.', 'BN007', 'NV009', N'Xạ trị'),
	('RV008', '2022-4-14', '2022-4-15', N'Điều trị khỏi', 'BN009', 'NV012', N'Nguyên lý Duhamel'),
	('RV009', '2022-4-29', '2022-4-30', N'Điều trị khỏi', 'BN014', 'NV002', N'Công thức D’Alembert'),
	('RV010', '2022-5-14', '2022-5-14', N'Điều trị khỏi', 'BN001', 'NV002', N'Khúc xạ ánh sáng');

CREATE TABLE LoaiPhauThuat 
(
    MaPT	CHAR(10) PRIMARY KEY,
    TenPT	NVARCHAR(50),
    Mucdo	VARCHAR(7)
);

INSERT INTO LoaiPhauThuat (MaPT, TenPT, Mucdo) VALUES
	('PT001', N'Phẫu thuật tim', '3'),
	('PT002', N'Phẫu thuật mắt', '3'),
	('PT003', N'Phẫu thuật dạ dày', '1'),
	('PT004', N'Phẫu thuật gan', '2'),
	('PT005', N'Phẫu thuật tay', '1'),
	('PT006', N'Phẫu thuật chân', '2'),
	('PT007', N'Phẫu thuật phổi', '3'),
	('PT008', N'Phẫu thuật họng', '1'),
	('PT009', N'Phẫu thuật ruột', '3'),
	('PT010', N'Phẫu thuật não', '3');

CREATE TABLE PhieuPhauThuat 
(
    SophieuPT	CHAR(10) PRIMARY KEY,
    KetquaPT	NVARCHAR(100),
    NgayyeucauPT	DATE,
    Ngaythuchien	DATE,
    MaPT	CHAR(10) FOREIGN KEY REFERENCES LoaiPhauThuat(MaPT),
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV)
);

INSERT INTO PhieuPhauThuat (SophieuPT, KetquaPT, NgayyeucauPT, Ngaythuchien, MaPT, MaBN, MaNV) VALUES
	('SPT001', N'Tệ', '2022-1-6', '2022-1-7', 'PT001', 'BN002', 'NV001'),
	('SPT002', N'Tốt', '2022-1-16', '2022-1-17', 'PT003', 'BN002', 'NV007'),
	('SPT003', N'Tốt', '2022-1-28', '2022-1-30', 'PT006', 'BN001', 'NV014'),
	('SPT004', N'Tốt', '2022-2-4', '2022-2-5', 'PT007', 'BN012', 'NV005'),
	('SPT005', N'Tệ', '2022-2-6', '2022-2-6', 'PT010', 'BN008', 'NV009'),
	('SPT006', N'Tốt', '2022-3-19', '2022-3-20', 'PT005', 'BN010', 'NV010'),
	('SPT007', N'Tốt', '2022-3-26', '2022-3-27', 'PT009', 'BN007', 'NV008'),
	('SPT008', N'Tệ', '2022-4-1', '2022-4-2', 'PT004', 'BN002', 'NV002'),
	('SPT009', N'Tốt', '2022-4-23', '2022-4-24', 'PT009', 'BN011', 'NV011'),
	('SPT010', N'Tốt', '2022-5-22', '2022-5-29', 'PT008', 'BN008', 'NV008');

CREATE TABLE GiuongBenh 
(
    SoGiuongBenh	INT	PRIMARY KEY,
    SoPhongBenh	CHAR(10)
);

INSERT INTO GiuongBenh (SoGiuongBenh, SoPhongBenh) VALUES
	('101', 'PB01'),
	('103', 'PB01'),
	('105', 'PB01'),
	('107', 'PB01'),
	('201', 'PB02'),
	('203', 'PB02'),
	('205', 'PB02'),
	('207', 'PB02'),
	('301', 'PB03'),
	('303', 'PB03'),
	('305', 'PB03'),
	('307', 'PB03'),
	('401', 'PB04'),
	('403', 'PB04'),
	('405', 'PB04'),
	('407', 'PB04');

CREATE TABLE PhanGiuong 
(
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    Sogiuongbenh	INT FOREIGN KEY REFERENCES GiuongBenh(SoGiuongBenh),
    Ngaynhan	DATE,
    Ngaydi	DATE
);

INSERT INTO PhanGiuong (MaBN, Sogiuongbenh, Ngaynhan, Ngaydi) VALUES
	('BN001', '203', '2023-1-1', '2023-5-17'),
	('BN002', '101', '2023-6-9', '2023-6-11'),
	('BN003', '407', '2023-1-9', '2023-6-17'),
	('BN004', '205', '2022-12-3', '2022-3-15'),
	('BN005', '307', '2022-2-19', '2022-3-12'),
	('BN006', '303', '2022-3-3', '2022-4-3'),
	('BN007', '207', '2023-1-9', '2023-5-28'),
	('BN008', '303', '2022-8-31', '2022-12-29'),
	('BN009', '301', '2021-5-9', '2022-1-1'),
	('BN010', '105', '2023-8-31', '2023-9-15'),
	('BN011', '105', '2023-6-18', '2023-7-7'),
	('BN012', '201', '2023-2-14', '2023-6-18'),
	('BN013', '103', '2023-1-27', '2023-3-10'),
	('BN014', '103', '2022-4-29', '2022-9-29');

CREATE TABLE LoaiBenhAn 
(
    MaloaiBA	CHAR(10) PRIMARY KEY,
    TenloaiBA	NVARCHAR(50)
);

INSERT INTO LoaiBenhAn (MaloaiBA, TenloaiBA) VALUES
	('BAIM', N'Bệnh án nội khoa'),
	('BASG', N'Bệnh án ngoại khoa'),
	('BAOS', N'Bệnh án sản khoa'),
	('BACC', N'Bệnh án ung thư'),
	('BACD', N'Bệnh án tim mạch'),
	('BADM', N'Bệnh án da liễu'),
	('BANL', N'Bệnh án thần kinh'),
	('BARB', N'Bệnh án phục hồi chức năng'),
	('BAPD', N'Bệnh án nhi khoa'),
	('BADT', N'Bệnh án Răng-Hàm-Mặt'),
	('BAPM', N'Bệnh án hô hấp'),
	('BARM', N'Bệnh án xương khớp');

CREATE TABLE SoBenhAn 
(
    SosoBA	CHAR(10) PRIMARY KEY,
    MaloaiBA	CHAR(10) FOREIGN KEY REFERENCES LoaiBenhAn(MaLoaiBA),
    NgayLap	DATE,
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV)
);

INSERT INTO SoBenhAn (SosoBA, MaloaiBA, NgayLap, MaBN, MaNV) VALUES
	('SSBA1151', 'BAPM', '2022-1-1', 'BN001', 'NV009'),
	('SSBA1203', 'BACD', '2022-1-9', 'BN007', 'NV006'),
	('SSBA1234', 'BAIM', '2022-1-9', 'BN002', 'NV009'),
	('SSBA3000', 'BANL', '2022-8-31', 'BN010', 'NV004'),
	('SSBA3701', 'BACD', '2022-12-3', 'BN011', 'NV004'),
	('SSBA2023', 'BADT', '2022-3-3', 'BN008', 'NV006'),
	('SSBA1729', 'BADM', '2022-2-19', 'BN005', 'NV009'),
	('SSBA3164', 'BARM', '2022-9-15', 'BN006', 'NV014'),
	('SSBA1954', 'BACC', '2022-2-26', 'BN004', 'NV006'),
	('SSBA2491', 'BAPD', '2022-4-29', 'BN014', 'NV009');

CREATE TABLE KhamChuyenKhoa 
(
    MaBenh	CHAR(10) FOREIGN KEY REFERENCES LoaiBenhAn(MaLoaiBA),
    MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV),
    NgayKham	DATE,
    DeNghiKham	NVARCHAR(50),
    ChuanDoan	NVARCHAR(100),
    KetQuaKham	NVARCHAR(100)
);

INSERT INTO KhamChuyenKhoa (MaBenh, MaBN, MaNV, NgayKham, DeNghiKham, ChuanDoan, KetQuaKham) VALUES
	('BAPM', 'BN001', 'NV010', '2022-1-1', N'X-quang phổi', N'Ung thư phổi ', N'Ung thư phổi tế bào biểu mô giai đoạn mở rộng.'),
	('BACD', 'BN007', 'NV008', '2022-1-9', N'Điện tâm đồ', N'Suy tim', N'Suy tim cấp giai đoạn A.'),
	('BAIM', 'BN002', 'NV002', '2022-1-9', N'Khám thận', N'Suy giảm chức năng thận', N'Suy giảm chức năng thận giai đoạn II.'),
	('BANL', 'BN010', 'NV011', '2022-8-31', N'Nghiệm đồ thần kinh', N'Đau dây thần kinh thắt lưng', N'Đau dây thần kinh liên sườn. Có thể dẫn đến thoái hoá cột sống'),
	('BACD', 'BN011', 'NV002', '2022-12-3', N'Siêu âm tim', N'Bệnh mạch vành', N'Bệnh vạch vành cấp thất khối cơ tim.'),
	('BADM', 'BN005', 'NV006', '2022-2-19', N'Khám vùng da dị ứng', N'Viêm da cơ địa', N'Viêm da cơ địa ban đỏ mức độ nhẹ.'),
	('BARM', 'BN006', 'NV015', '2022-9-15', N'Chụp X-quang', N'Gãy ống đồng', N'Gãy ống đồng ở vị trí giữa phần trên và phần dưới của ống đồng. Độ dài gãy khoảng 4 cm'),
	('BACC', 'BN004', 'NV014', '2022-2-26', N'Khám vú', N'Ung thư vú', N'Ung thư vú tế bào biểu mô tuyến giai đoạn II.');

CREATE TABLE PhieuXetNghiem 
(
    SophieuXN	CHAR(10) PRIMARY KEY,
	MaBN	CHAR(10) FOREIGN KEY REFERENCES BenhNhan(MaBN),
    MaNV	CHAR(10) FOREIGN KEY REFERENCES NhanVien(MaNV),
    NgayYCXN	DATE,
    NgayTHXN	DATE,
    KetQuaXN	NVARCHAR(512)
);

INSERT INTO PhieuXetNghiem (SophieuXN, MaBN, MaNV, NgayYCXN, NgayTHXN, KetQuaXN) VALUES
	('XN0056', 'BN004', 'NV006', '2022-2-28', '2022-3-1', N'Mẫu mô lấy từ khối u trong vú chứa tế bào ung thư với các biểu hiện bất thường. Loại ung thư được xác định là tế bào biểu mô tuyến (adenocarcinoma)'),
	('XN0999', 'BN004', 'NV008', '2022-2-26', '2022-2-27', N'Tế bào ung thư vú của bệnh nhân có biểu hiện dương tính với receptor estrogen (ER+), nhưng không biểu hiện receptor progesterone (PR-) và không có biểu hiện của protein HER2 (HER2-)'),
	('XN1087', 'BN005', 'NV009', '2022-3-1', '2022-3-4', N'Tìm thấy sự tăng sinh tế bào và các biểu hiện của viêm da cơ địa, bao gồm sự hiện diện của nang tuyến mồ hôi phòng ngừa và dịch tế bào nhiễm sắc.'),
	('XN0867', 'BN005', 'NV009', '2022-2-19', '2022-2-19', N'Chất chống nắng: Gây phản ứng dị ứng (+) với vùng da kiểm tra. Không gây phản ứng dị ứng (-) trên các vùng khác của da.'),
	('XN0109', 'BN002', 'NV002', '2022-1-9', '2022-1-9', N'Creatinine: 1.8 mg/dL (giá trị bình thường: 0.6-1.2 mg/dL).  Urea: 45 mg/dL (giá trị bình thường: 10-30 mg/dL). Kali: 5.2 mEq/L (giá trị bình thường: 3.5-5.0 mEq/L)'),
	('XN0100', 'BN002', 'NV002', '2022-1-9', '2022-1-9', N'Protein trong nước tiểu: Dương tính(+).  Albumin trong nước tiểu: Dương tính(+). Glucose trong nước tiểu: Âm tính(-)'),
	('XN0008', 'BN001', 'NV015', '2022-1-1', '2022-1-1', N'CEA (chỉ số khối u đặc hiệu): 35 ng/ml (giá trị thường <5 ng/ml). CYFRA 21-1: 12 ng/ml (giá trị thường <3.3 ng/ml)'),
	('XN0069', 'BN001', 'NV006', '2022-1-3', '2022-1-4', N'Khối u trong phổi chứa tế bào ung thư. Loại ung thư phổi được xác định là tế bào biểu mô tuyến (adenocarcinoma). Mức độ phát triển của ung thư phổi được đánh giá là giai đoạn III.');

--Thống kê thuốc được kê cho bệnh nhân @IDBN
CREATE FUNCTION THUOC_BENH_NHAN(@IDBN VARCHAR(10))
RETURNS @NEW_TABLE TABLE (SODON NVARCHAR(50), MABN VARCHAR(10), HOTENBN NVARCHAR(50), TENTHUOC NVARCHAR(50), NGAYGIOKEDON DATETIME, MANV NVARCHAR(50) )
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT SODON, DONTHUOC.MABN, HOTENBN, TENTHUOC, NGAYGIOKEDON, MANV
	FROM ((DONTHUOC JOIN THUOC
	ON DONTHUOC.MaThuoc= THUOC.MaThuoc) 
	JOIN BENHNHAN
	ON DONTHUOC.MaBN= BENHNHAN.MaBN)
	WHERE DONTHUOC.MaBN=@IDBN
	RETURN
END

--Thống kê thuốc được nhên viên @IDNV kê
CREATE FUNCTION THUOC_NHAN_VIEN(@IDNV NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (SODON NVARCHAR(50),MANV NVARCHAR(50), HOTENNV NVARCHAR(50), CHUCDANH NVARCHAR(50), TENKHOA NVARCHAR(50), TENTHUOC NVARCHAR(50), NGAYGIOKEDON DATETIME, MABN VARCHAR(10))
AS 
BEGIN 
	INSERT INTO @NEW_TABLE
	SELECT SODON, DONTHUOC.MANV, HOTENNV, CHUCDANH, TENKHOA, TENTHUOC, NGAYGIOKEDON, DonThuoc.MaBN
	FROM ((DONTHUOC JOIN THUOC
	ON DONTHUOC.MaThuoc= THUOC.MaThuoc) 
	JOIN NHANVIEN
	ON DONTHUOC.MaNV= NHANVIEN.MaNV)
	WHERE DONTHUOC.MANV= @IDNV
	RETURN
END

--Thống kê bệnh nhân ra viện vào ngày @DATE
CREATE FUNCTION NGAY_GIO_RA(@DATE DATETIME)
RETURNS @NEW_TABLE TABLE (MaBN VARCHAR(10), HoTenBN NVARCHAR(50), MaNV NVARCHAR(50), 
HoTenNV NVARCHAR(50), NGAYGIOVAO DATETIME, NGAYGIORA DATETIME, PHUONGPHAPDT NVARCHAR(50))
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT BENHNHAN.MaBN, BENHNHAN.HoTenBN, NHANVIEN.MaNV, NHANVIEN.HoTenNV, NGAYGIOVAO, NGAYGIORA, PHUONGPHAPDT
	FROM ((GiayRaVien JOIN BENHNHAN ON GiayRaVien.MaBN = BenhNhan.MaBN)
	JOIN NHANVIEN ON GiayRaVien.MaNV = NhanVien.MaNV)
	WHERE GiayRaVien.Ngaygiora = @DATE
	RETURN
END

--Thống kê bệnh nhân ra viện nằm giữa @DATE1 và @DATE2
CREATE FUNCTION NGAY_GIO_VAO_RA(@DATE1 DATETIME, @DATE2 DATETIME)
RETURNS @NEW_TABLE TABLE (MaBN VARCHAR(10), HoTenBN NVARCHAR(50), MaNV NVARCHAR(50), 
HoTenNV NVARCHAR(50), NGAYGIOVAO DATETIME, NGAYGIORA DATETIME, PHUONGPHAPDT NVARCHAR(50))
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT BENHNHAN.MaBN, BENHNHAN.HoTenBN, NHANVIEN.MaNV, NHANVIEN.HoTenNV, NGAYGIOVAO, NGAYGIORA, PHUONGPHAPDT
	FROM ((GiayRaVien JOIN BENHNHAN ON GiayRaVien.MaBN = BenhNhan.MaBN)
	JOIN NHANVIEN ON GiayRaVien.MaNV = NhanVien.MaNV)
	WHERE GiayRaVien.Ngaygiovao >= @DATE1 AND GiayRaVien.Ngaygiora <= @DATE2
	RETURN
END

--Thống kê số lần chuyển viện của bệnh nhân @IDBN
CREATE FUNCTION SO_LAN_CHUYEN_VIEN(@IDBN VARCHAR(10))
RETURNS @NEW_TABLE TABLE (MaBN VARCHAR(10), HOTENBN NVARCHAR(50), SOLAN INT)
AS 
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT BenhNhan.MaBN, HOTENBN, SOLAN FROM
	BENHNHAN INNER JOIN
	(SELECT GiayChuyenVien.MaBN , COUNT(GiayChuyenVien.SogiayCV) AS SOLAN FROM
	GiayChuyenVien JOIN BenhNhan 
	ON GiayChuyenVien.MaBN = BenhNhan.MaBN
	GROUP BY GiayChuyenVien.MaBN) AS TMP
	ON BenhNhan.MaBN = TMP.MaBN
	WHERE BenhNhan.MaBN = @IDBN
	RETURN
END


--Thống kê các ca phẫu thuật của nhân viên @IDNV
CREATE FUNCTION NV_PHAU_THUAT(@IDNV NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (MANV NVARCHAR(50), HOTENNV NVARCHAR(50), MAPT NVARCHAR(50), TENPT NVARCHAR(50), MABN VARCHAR(10), HOTENBN NVARCHAR(50))
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT NhanVien.MaNV, NhanVien.HoTenNV, PhieuPhauThuat.MaPT, TENPT, BENHNHAN.MaBN, BENHNHAN.HoTenBN
	FROM (((NHANVIEN JOIN PhieuPhauThuat
	ON NHANVIEN.MaNV = PhieuPhauThuat.MaNV) JOIN LoaiPhauThuat
	ON LoaiPhauThuat.MaPT = PhieuPhauThuat.MaPT))JOIN BenhNhan
	ON BenhNhan.MaBN = PhieuPhauThuat.MaBN
	WHERE PhieuPhauThuat.MaNV = @IDNV
	RETURN
END


--Thống kê các ca phẫu thật trong khoảng @DATE1 và @DATE2
CREATE FUNCTION PHAU_THUAT(@DATE1 DATETIME, @DATE2 DATETIME)
RETURNS @NEW_TABLE TABLE (MANV NVARCHAR(50), HOTENNV NVARCHAR(50), MAPT NVARCHAR(50), TENPT NVARCHAR(50), MABN VARCHAR(10), HOTENBN NVARCHAR(50), NGAYTHUCHIEN DATETIME)
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT NhanVien.MaNV, NhanVien.HoTenNV, PhieuPhauThuat.MaPT, TENPT, BENHNHAN.MaBN, BENHNHAN.HoTenBN, PhieuPhauThuat.Ngaythuchien
	FROM (((NHANVIEN JOIN PhieuPhauThuat
	ON NHANVIEN.MaNV = PhieuPhauThuat.MaNV) JOIN LoaiPhauThuat
	ON LoaiPhauThuat.MaPT = PhieuPhauThuat.MaPT))JOIN BenhNhan
	ON BenhNhan.MaBN = PhieuPhauThuat.MaBN
	WHERE PhieuPhauThuat.Ngaythuchien >= @DATE1 AND PhieuPhauThuat.Ngaythuchien <= @DATE2
	RETURN
END

-- Thống kê những nhân viên có chức danh là @CHUCDANH và có chuyên ngành là @CHUYENNGANH
CREATE FUNCTION NV_CHUCDANH_CO_CHUYENNGANH(@CHUCDANH NVARCHAR(50), @CHUYENNGANH NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (MANV CHAR(10), HOTENNV NVARCHAR(50), CHUCDANH NVARCHAR(50), CHUYENNGANH NVARCHAR(50))
AS 
BEGIN 
	INSERT INTO @NEW_TABLE
	SELECT MANV, HOTENNV, CHUCDANH, TENCHUYENNGANH FROM 
	(NHANVIEN JOIN CHUYENNGANH ON NHANVIEN.MaChuyenNganh = CHUYENNGANH.MaChuyenNganh)
	WHERE NHANVIEN.ChucDanh = @CHUCDANH AND CHUYENNGANH.TenChuyenNganh = @CHUYENNGANH
	RETURN
END

-- Tỉnh tổng số bệnh nhân đến từ tỉnh/thành phố @DIACHI
CREATE FUNCTION TONG_SO_BN_TINH(@DIACHI NVARCHAR(30))
RETURNS INT
AS 
BEGIN 
	DECLARE @TotalPatients INT;

    SELECT @TotalPatients = COUNT(*)
    FROM BENHNHAN
    WHERE BENHNHAN.DiaChi LIKE '%' + @DIACHI + '%';

	RETURN @TotalPatients
END

-- Hiển thị các nhân viên phụ trách khám chuyên khoa với bệnh nhân @benhnhan
CREATE FUNCTION NV_KHAMCHUYENKHOA_BN(@BN NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (MANV CHAR(10), HOTENNV NVARCHAR(50), CHUCDANH NVARCHAR(50))
AS 
BEGIN 
	INSERT INTO @NEW_TABLE
	SELECT NHANVIEN.MANV, HOTENNV, CHUCDANH FROM 
	KHAMCHUYENKHOA JOIN NHANVIEN ON KHAMCHUYENKHOA.MaNV = NHANVIEN.MaNV
	JOIN BenhNhan ON KHAMCHUYENKHOA.MaBN = BenhNhan.MaBN
	WHERE BENHNHAN.HoTenBN LIKE '%'+@BN+'%'
	RETURN
END
-- Tính tổng số bệnh nhân có bệnh án @Benhan
CREATE FUNCTION BN_BENHAN(@BA NVARCHAR(50))
RETURNS INT
AS 
BEGIN 
	DECLARE @TotalPatients INT;

    SELECT @TotalPatients = COUNT(*)
    FROM SoBenhAn 
	JOIN BenhNhan ON SoBenhAn.MaBN = BenhNhan.MaBN
	JOIN LoaiBenhAn ON LoaiBenhAn.MaloaiBA = SoBenhAn.MaloaiBA
    WHERE LoaiBenhAn.TenloaiBA = @BA

	RETURN @TotalPatients
END

-- Thống kê những bệnh nhân đến từ tỉnh/tp @diachi và có tên bệnh án là @benhan
CREATE FUNCTION BN_TINH_BA(@DIACHI NVARCHAR(30), @BA NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (MABN CHAR(10), HOTENBN NVARCHAR(50))
AS 
BEGIN 
	INSERT INTO @NEW_TABLE
	SELECT BenhNhan.MaBN, BenhNhan.HoTenBN 
	FROM SoBenhAn 
	JOIN BenhNhan ON SoBenhAn.MaBN = BenhNhan.MaBN
	JOIN LoaiBenhAn ON LoaiBenhAn.MaloaiBA = SoBenhAn.MaloaiBA
    WHERE LoaiBenhAn.TenloaiBA = @BA AND BenhNhan.DiaChi LIKE '%'+@DIACHI+'%'
	RETURN
END

-- Hiển thị những tiền sử bệnh của bệnh nhận được chuyển từ cơ sở y tế
CREATE FUNCTION TSB_CSYT(@CSYT NVARCHAR(100))
RETURNS @NEW_TABLE TABLE (MABN CHAR(10), HOTENBN NVARCHAR(50), TSB NVARCHAR(200))
AS 
BEGIN 
	INSERT INTO @NEW_TABLE
	SELECT BenhNhan.MaBN, BenhNhan.HoTenBN, GiayChuyenVien.Tiensubenh
	FROM BenhNhan JOIN GiayChuyenVien
	ON BenhNhan.MaBN = GiayChuyenVien.MaBN
    WHERE GiayChuyenVien.MaCSYT1 = @CSYT
	RETURN
END

-- Tính số lần nhân viên thực hiện phẫu thuật theo cấp độ
CREATE FUNCTION TONG_PT_MD(@IDNV CHAR(50), @MD INT)
RETURNS INT
AS
BEGIN
	DECLARE @Total INT;

    SELECT @Total = COUNT(*)
    FROM PhieuPhauThuat
    JOIN NhanVien ON PhieuPhauThuat.MaNV = NhanVien.MaNV
    JOIN LoaiPhauThuat ON PhieuPhauThuat.MaPT = LoaiPhauThuat.MaPT
    WHERE PhieuPhauThuat.MaNV = @IDNV AND Mucdo = @MD;
    RETURN @Total;
END;

--Thống kê kết quả thực hiện phẫu thuật của nhân viên @NV với ca phẫu thuật mức độ @MD

CREATE FUNCTION KQ_TH_PHAUTHUAT(@IDNV CHAR(50), @MD NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (MaNV CHAR(10), HoTenNV NVARCHAR(50), Ngaythuchien DATETIME, TenPT NVARCHAR(50), KetquaPT NVARCHAR(50))
AS
BEGIN
    INSERT INTO @NEW_TABLE
    SELECT PhieuPhauThuat.MaNV, HoTenNV, Ngaythuchien, TenPT, KetquaPT
    FROM PhieuPhauThuat
    JOIN NhanVien ON PhieuPhauThuat.MaNV = NhanVien.MaNV
    JOIN LoaiPhauThuat ON PhieuPhauThuat.MaPT = LoaiPhauThuat.MaPT
    WHERE PhieuPhauThuat.MaNV = @IDNV AND Mucdo = @MD;
    RETURN;
END;

--Thống kê các lần xét nghiệm của bệnh nhân @BN
CREATE FUNCTION XET_NGHIEM_BN (@IDBN CHAR(10))
RETURNS @NEW_TABLE TABLE (MaBN CHAR(10), HoTenBN NVARCHAR(50), NgayTHXN DATETIME, KetQuaXN NVARCHAR(512))
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT PhieuXetNghiem.MaBN, HoTenBN, NgayTHXN, KetQuaXN
	FROM PhieuXetNghiem JOIN BenhNhan 
	ON PhieuXetNghiem.MaBN = BenhNhan.MaBN
	WHERE PhieuXetNghiem.MaBN = @IDBN;
	RETURN;
END


--Thống kê thời gian sử dụng của giường @Sogiuongbenh
CREATE FUNCTION SO_GIO_GIUONG_BENHH(@SOGIUONGBENH INT)
RETURNS @NEW_TABLE TABLE (SoGiuongBenh INT, SoPhongBenh CHAR(10), SoNgaySuDung INT)
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT PhanGiuong.SoGiuongBenh, SoPhongBenh, DATEDIFF(day, Ngaynhan, Ngaydi) AS SoNgaySuDung
	FROM PhanGiuong
	JOIN GiuongBenh ON PhanGiuong.SoGiuongBenh = GiuongBenh.SoGiuongBenh
	WHERE PhanGiuong.SoGiuongBenh = @SOGIUONGBENH;
	RETURN;
END

--Thống kê người có loại bệnh án @BA từ ngày @DATE1 đến @DATE2
CREATE FUNCTION SO_BENH_AN_TU_DATE1_DEN_DATE2(@BA CHAR(10), @DATE1 DATETIME, @DATE2 DATETIME)
RETURNS @NEW_TABLE TABLE (MaloaiBA CHAR(10), MaBN VARCHAR(10), HoTenBN NVARCHAR(50), TenloaiBA NVARCHAR(50), NgayLap DATETIME)
AS
BEGIN
	INSERT INTO @NEW_TABLE	
	SELECT SoBenhAn.MaloaiBA, SoBenhAn.MaBN, HotenBN, TenloaiBA, NgayLap
	FROM ((SoBenhAn JOIN BenhNhan 
	ON SoBenhAn.MaBN = BenhNhan.MaBN) 
	JOIN LoaiBenhAn
	ON SoBenhAn.MaloaiBA = LoaiBenhAn.MaloaiBA)
	WHERE NgayLap >= @DATE1 AND NgayLap <= @DATE2 AND SoBenhAn.MaloaiBA = @BA;
	RETURN;
END


--Thống kê các lần khám chuyên khoa của nhân viên @NV từ ngày @Date1 đến @Date2
CREATE FUNCTION KHAM_CHUYEN_KHOA(@IDNV CHAR(10), @DATE1 DATETIME, @DATE2 DATETIME)
RETURNS @NEW_TABLE TABLE (MaNV CHAR(10), HoTenNV NVARCHAR(50), HoTenBN NVARCHAR(50), NgayKham DATETIME, ChuanDoan NVARCHAR(100), KetQuaKham NVARCHAR(100))
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT KhamChuyenKhoa.MaNV, HoTenNV, HoTenBN, NgayKham, ChuanDoan, KetQuaKham
	FROM KhamChuyenKhoa
	JOIN NhanVien ON KhamChuyenKhoa.MaNV = NhanVien.MaNV
	JOIN BenhNhan ON KhamChuyenKhoa.MaBN = BenhNhan.MaBN
	WHERE KhamChuyenKhoa.MaNV = @IDNV AND NgayKham >= @DATE1 AND NgayKham <= @DATE2;
	RETURN;
END

--Thống kê số lần nhập viện của bênh nhân @BN từ ngày @Date1 đến @Date2
CREATE FUNCTION SO_LAN_NHAP_VIEN(@IDBN CHAR(10), @DATE1 DATETIME, @DATE2 DATETIME)
RETURNS @NEW_TABLE TABLE (MaBN CHAR(10), HoTenBN NVARCHAR(50), SOLAN INT)
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT BenhNhan.MaBN, HoTenBN, SOLAN
	FROM BenhNhan
	JOIN
	(SELECT GiayRaVien.MaBN, COUNT(GiayRaVien.SogiayRV) AS SOLAN
	FROM GiayRaVien
	JOIN BenhNhan ON GiayRaVien.MaBN = BenhNhan.MaBN
	WHERE Ngaygiovao >= @DATE1 AND Ngaygiovao <= @DATE2
	GROUP BY GiayRaVien.MaBN) AS TEMP ON BenhNhan.MaBN = TEMP.MaBN
	WHERE BenhNhan.MaBN = @IDBN;
	RETURN;
END


--Thống kê lượng thuốc có xuất xứ @XX được kê cho bệnh nhân 
CREATE FUNCTION LUONG_THUOC(@XX NVARCHAR(50))
RETURNS @NEW_TABLE TABLE (MaThuoc CHAR(10), DonViTinh NVARCHAR(10), SoLuong INT)
AS
BEGIN
	INSERT INTO @NEW_TABLE
	SELECT DonThuoc.MaThuoc, DonViTinh, SUM(DonThuoc.SoLuong) AS SoLuong
	FROM DonThuoc
	JOIN Thuoc ON DonThuoc.MaThuoc = Thuoc.MaThuoc
	WHERE Thuoc.XuatXu = @XX
	GROUP BY DonThuoc.MaThuoc, DonViTinh;
	RETURN;
END

