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
--住院病人（病人编号，姓名，性别，民族，出生日期，入院日期，入院状态，病症，门诊科系，病房号，缴费情况，缴费金额，负责医生）
IF OBJECT_ID('Patient')IS NOT NULL
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
		CHAR(1)
		NOT NULL
	,PNation
		CHAR(1)
	,PBirthDate
		DATE
		NOT NULL
	,PAdmissionDate
		DATE
		NOT NULL
	,PAdmissionState
		CHAR(1)
		NOT NULL
	,Illness
		VARCHAR(1000)
		NOT NULL
	,Pdepartment
		CHAR(2)
		NOT NULL
	,WardNo
		CHAR(1000)
		NOT NULL
	,Payment
		CHAR(1)
		NOT NULL
	,PayMoney
		CHAR(1000)
		NOT NULL
	,AttendDoctor
		VARCHAR(1000)
		NOT NULL
	)
INSERT INTO tb_Patient
      (PNo,PName,PGender,PNation,PBirthDate,PAdmissionDate,PAdmissionState,Illness,Pdepartment,WardNo,Payment,PayMoney,AttendDoctor)
	  VALUES
	  ('3210707029','','杜思婷',HASHBYTES('MD5','3210707029'))
	  ,('3210707032','','王佳颖',HASHBYTES('MD5','3210707032'))
	  ,('3210707033','','郑婉玲',HASHBYTES('MD5','3210707033'))
	  ,('3210707022','','侯晨露',HASHBYTES('MD5','3210707022'))
	  ,('','ZCP','张翠萍',HASHBYTES('MD5','123'))
	  ,('','LL','林立',HASHBYTES('MD5','123'))
	  ,('','CL','陈林',HASHBYTES('MD5','123'));
	SELECT *
	FROM tb_LogIn
--预约病人(预约号，病床预约状态，住院号，姓名，性别，出生日期，籍贯，电话，身份证号，民族，婚姻状况，特殊身份，预约科室，预约医生，预约日期，门诊诊断)
--医生（姓名，工号，科室）
--科室（科室编号，科室名称）
--病房（病房编号，病房名称）
--病床（病床编号,所属科室，所属病房，空床标志)