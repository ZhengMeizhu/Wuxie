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
		BIT
		NOT NULL
	,Name
		VARCHAR(100)
		NOT NULL)
INSERT INTO tb_Gender
      (No,Name)
	  VALUES
	  (0,'女')
	  ,(1,'男');
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
	(1,'汉族')
	,(2,'苗族')
	,(3,'藏族')
	,(4,'其他民族');
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
	(1,'已入院')
	,(2,'已出院')
	,(3,'情况不明，需尽快落实');
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
	(1,'呼吸内科')
	,(2,'血液科')
	,(3,'骨科')
	,(4,'其他科室');
--缴费情况
IF OBJECT_ID('tb_PaymentState')IS NOT NULL
	DROP TABLE tb_PaymentState;
CREATE TABLE tb_PaymentState
	(No
		BIT
		NOT NULL
		PRIMARY KEY
	,Name
		VARCHAR(20)
		NOT NULL);
INSERT tb_PaymentState
	(No,Name)
	VALUES
	(0,'未交费')
	,(1,'已缴费');
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
	(1,'1号')
	,(2,'2号')
	,(3,'3号');
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
	(1,'000101',1,'',1)
	,(2,'010101',2,'*',2)
	,(3,'020202',3,'*',3);
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
		BIT
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
		INT
		NOT NULL
	,Payment
		BIT
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
	  ('0305','吴邪',1,1,'1987/03/05','2023/2/25',1,'中毒导致肺组织纤维化',1,1,0,'8万','张起灵')
	  ,('0016','祁放',1,1,'2003/08/25','2023/2/25',2,'右手腕骨一级骨折，且其桡骨韧带拉伤',3,3,1,'1万','郑美珠');
	SELECT PNo,PName,G.Name,N.Name,PBirthDate,PAdmissionDate,A.Name,Illness,D.Name,W.Name,B.Name,W.State,PS.Name,PayMoney,AttendDoctor
	FROM tb_Patient AS P
        JOIN tb_Gender AS G ON G.No=P.PGender
		JOIN tb_Nation AS N ON N.No=P.PNation
		JOIN tb_AdmissionState AS A ON A.No=P.PAdmissionState
		JOIN tb_Department AS D ON D.No=P.PDepartment
		JOIN tb_PaymentState AS PS ON PS.No=P.Payment
		JOIN tb_Ward AS W ON W.No=P.WardNo
		JOIN tb_Bed AS B ON B.No=W.BedNo;
--查询用户计数；
GO
CREATE OR ALTER PROCEDURE usp_selectUserCount
	(@No CHAR(10)
	,@Password VARCHAR(20))
	AS
BEGIN
	SELECT 
			COUNT(1)
		FROM
			tb_LogIn AS L
		WHERE
			L.UserNo=@No
			AND L.UserPassword=HASHBYTES('MD5',@Password);
END
----插入用户；
GO
CREATE OR ALTER PROCEDURE usp_insertUser
	(@No CHAR(10)
	,@Password VARCHAR(20))
	AS
BEGIN
	BEGIN TRY    
		INSERT tb_User
			(No,Password)
			VALUES
			(@No
			,HASHBYTES('MD5',@Password));
	END TRY
	BEGIN CATCH
		IF ERROR_NUMBER()=2627
			THROW 52627, '您注册的用户号已存在，请重新输入！',11;
		ELSE
			THROW;
	END CATCH
END
----更新用户密码；
GO
CREATE OR ALTER PROCEDURE usp_updateUserPassword
	(@No CHAR(10)
	,@NewPassword VARCHAR(20))
	AS
BEGIN
	UPDATE tb_User
		SET
			Password=HASHBYTES('MD5',@NewPassword)
		WHERE
			No=@No;
END
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