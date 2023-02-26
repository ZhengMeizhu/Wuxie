--IF DB_ID('EduHospital') IS NOT NULL
--	DROP DATABASE EduHospital;
--CREATE DATABASE EduHospital
--	ON
--		(NAME='DataFile_1'
--		,FILENAME='C:\Users\祁放\Desktop\林立\EduHospital\DtaFile_1.mdf')
--	LOG ON
--		(NAME='LogFile_1'
--		,FILENAME='C:\Users\祁放\Desktop\林立\EduHospital\Log_1.ldf');
USE EduHospital;
IF OBJECT_ID('tb_LogIn')IS NOT NULL
	DROP TABLE tb_LogIn;
CREATE TABLE tb_LogIn
	(UserNo
		CHAR(100)
		NOT NULL
	,UserName
		VARCHAR(100)
		NOT NULL
	,UserPassword
		VARCHAR(100)
		NOT NULL)
INSERT INTO tb_LogIn
      (UserNo,UserName,UserPassword)
	  VALUES
	  ('3210707030','郑美珠',HASHBYTES('MD5','3210707030'))
	  ,('LL','林立',HASHBYTES('MD5','123'));
	SELECT *
	FROM tb_LogIn;
--性别
IF OBJECT_ID('tb_Gender')IS NOT NULL
	DROP TABLE tb_Gender;
CREATE TABLE tb_Gender
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(100)
		NOT NULL)
INSERT INTO tb_Gender
      (No,Name)
	  VALUES
	  ('0','女')
	  ,('1','男');
--民族
IF OBJECT_ID('tb_Nation')IS NOT NULL
	DROP TABLE tb_Nation;
CREATE TABLE tb_Nation
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(20)
		NOT NULL);
INSERT tb_Nation
	(No,Name)
	VALUES
	('0','汉族')
	,('1','苗族')
	,('2','藏族')
	,('3','其他民族');
--入院状态
IF OBJECT_ID('tb_AdmissionState')IS NOT NULL
	DROP TABLE tb_AdmissionState;
CREATE TABLE tb_AdmissionState
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(20)
		NOT NULL);
INSERT tb_AdmissionState
	(No,Name)
	VALUES
	('0','已入院')
	,('1','已出院')
	,('2','情况不明，需尽快落实');
--住院部科室
IF OBJECT_ID('tb_Department')IS NOT NULL
	DROP TABLE tb_Department;
CREATE TABLE tb_Department
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(20)
		NOT NULL);
INSERT tb_Department
	(No,Name)
	VALUES
	('0','呼吸内科')
	,('1','血液科')
	,('2','骨科')
	,('3','其他科室');
--缴费情况
IF OBJECT_ID('tb_PaymentState')IS NOT NULL
	DROP TABLE tb_PaymentState;
CREATE TABLE tb_PaymentState
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(20)
		NOT NULL);
INSERT tb_PaymentState
	(No,Name)
	VALUES
	('0','未交费')
	,('1','已缴费');
--病床（病床编号*）
IF OBJECT_ID('tb_Bed')IS NOT NULL
	DROP TABLE tb_Bed;
CREATE TABLE tb_Bed
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(100)
		NOT NULL);
INSERT tb_Bed
	(No,Name)
	VALUES
	('0','1号')
	,('1','2号')
	,('2','3号');
--病房（病房编号，病房名称，病床编号,空床标志*，所属科室)
IF OBJECT_ID('tb_Ward')IS NOT NULL
	DROP TABLE tb_Ward;
CREATE TABLE tb_Ward
	(No
		INT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(100)
		NOT NULL
	,BedNo
		INT
		NOT NULL
	,State
		VARCHAR(100)
		NOT NULL
	,DepartmentNo
		INT 
		NOT NULL);
INSERT tb_Ward
	(No,Name,BedNo,State,DepartmentNo)
	VALUES
	('0','000101','0','','0')
	,('1','010101','1','*','1')
	,('2','020202','2','*','2');
--住院病人（病人编号，姓名，性别，民族，出生日期，入院日期，入院状态，病症，住院部科室，病房号，缴费情况，缴费金额，负责医生）
IF OBJECT_ID('Patient')IS NULL
	DROP TABLE tb_Patient;
CREATE TABLE tb_Patient
	(PNo
		VARCHAR(1000)
		NOT NULL
		PRIMARY KEY
	,PName
		VARCHAR(100)
		NOT NULL
	,PGender
		INT
		NOT NULL
	,PNation
		INT
		NOT NULL
	,PBirthDate
		DATE
		NOT NULL
	,PAdmissionDate
		DATE
		NOT NULL
	,PAdmissionState
		INT
		NOT NULL
	,Illness
		VARCHAR(1000)
		NOT NULL
	,PDepartment
		INT
		NOT NULL
	,WardNo
		CHAR(1000)
		NOT NULL
	,Payment
		INT
		NOT NULL
	,PayMoney
		CHAR(1000)
		NOT NULL
	,AttendDoctor
		VARCHAR(1000)
		NOT NULL
	)
INSERT INTO tb_Patient
      (PNo,PName,PGender,PNation,PBirthDate,PAdmissionDate,PAdmissionState,Illness,PDepartment,WardNo,Payment,PayMoney,AttendDoctor)
	  VALUES
	  ('0305','吴邪','1','0','1987/03/05','2023/2/25','0','中毒导致肺组织纤维化','0','0','0','8万','张起灵')
	  ,('0016','祁放','1','0','2003/08/25','2023/2/25','1','右手腕骨一级骨折，且其桡骨韧带拉伤','2','2','1','1万','郑美珠');
	SELECT PNo,PName,G.Name,N.Name,PBirthDate,PAdmissionDate,A.Name,Illness,D.Name,W.Name,B.Name,W.State,PS.Name,PayMoney,AttendDoctor
	FROM tb_Patient AS P
        JOIN tb_Gender AS G ON G.No=P.PGender
		JOIN tb_Nation AS N ON N.No=P.PNation
		JOIN tb_AdmissionState AS A ON A.No=P.PAdmissionState
		JOIN tb_Department AS D ON D.No=P.PDepartment
		JOIN tb_PaymentState AS PS ON PS.No=P.Payment
		JOIN tb_Ward AS W ON W.No=P.WardNo
		JOIN tb_Bed AS B ON B.No=W.BedNo;
--病人预约(预约号，病床预约状态，住院号，姓名，性别，出生日期，籍贯，电话，身份证号，民族，婚姻状况，特殊身份，预约科室，预约医生，预约日期，门诊诊断)
IF OBJECT_ID('tb_AppointPatient')IS NOT NULL
	DROP TABLE tb_AppointPatient;
CREATE TABLE tb_AppointPatient
	(ANo
		VARCHAR(1000)
		NOT NULL
		PRIMARY KEY
	,AWard
		VARCHAR(100)
		NOT NULL
	,PGender
		INT
		NOT NULL
	,PNation
		INT
		NOT NULL
	,PBirthDate
		DATE
		NOT NULL
	,PAdmissionDate
		DATE
		NOT NULL
	,PAdmissionState
		INT
		NOT NULL
	,Illness
		VARCHAR(1000)
		NOT NULL
	,PDepartment
		INT
		NOT NULL
	,WardNo
		CHAR(1000)
		NOT NULL
	,Payment
		INT
		NOT NULL
	,PayMoney
		CHAR(1000)
		NOT NULL
	,AttendDoctor
		VARCHAR(1000)
		NOT NULL
	)
INSERT INTO tb_AppointPatient
      (ANo,AWard,PGender,PNation,PBirthDate,PAdmissionDate,PAdmissionState,Illness,PDepartment,WardNo,Payment,PayMoney,AttendDoctor)
	  VALUES
	  ('0305','吴邪','1','0','1987/03/05','2023/2/25','0','中毒导致肺组织纤维化','0','000101','0','8万','张起灵')
	  ,('0016','祁放','1','0','2003/08/25','2023/2/25','1','右手腕骨一级骨折，且其桡骨韧带拉伤','2','020202','1','1万','郑美珠');
--医生（姓名，工号，科室）