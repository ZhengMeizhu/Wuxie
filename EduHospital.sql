--IF DB_ID('EduHospital') IS NOT NULL
--	DROP DATABASE EduHospital;
--CREATE DATABASE EduHospital
--	ON
--		(NAME='DataFile_1'
--		,FILENAME='C:\Users\���\Desktop\����\EduHospital\DtaFile_1.mdf')
--	LOG ON
--		(NAME='LogFile_1'
--		,FILENAME='C:\Users\���\Desktop\����\EduHospital\Log_1.ldf');
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
	  ('3210707030','֣����',HASHBYTES('MD5','3210707030'))
	  ,('LL','����',HASHBYTES('MD5','123'));
	SELECT *
	FROM tb_LogIn;
--�Ա�
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
	  (0,'Ů')
	  ,(1,'��');
--����
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
	(1,'����')
	,(2,'����')
	,(3,'����')
	,(4,'��������');
--��Ժ״̬
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
	(1,'����')
	,(2,'����')
	,(3,'����')
	,(4,'��������');
--סԺ���ˣ����˱�ţ��������Ա����壬�������ڣ���Ժ���ڣ���Ժ״̬����֢�������ϵ�������ţ��ɷ�������ɷѽ�����ҽ����
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
	  ('3210707029','','��˼��',HASHBYTES('MD5','3210707029'))
	  ,('3210707032','','����ӱ',HASHBYTES('MD5','3210707032'))
	  ,('3210707033','','֣����',HASHBYTES('MD5','3210707033'))
	  ,('3210707022','','�¶',HASHBYTES('MD5','3210707022'))
	  ,('','ZCP','�Ŵ�Ƽ',HASHBYTES('MD5','123'))
	  ,('','LL','����',HASHBYTES('MD5','123'))
	  ,('','CL','����',HASHBYTES('MD5','123'));
	SELECT *
	FROM tb_LogIn
--ԤԼ����(ԤԼ�ţ�����ԤԼ״̬��סԺ�ţ��������Ա𣬳������ڣ����ᣬ�绰�����֤�ţ����壬����״����������ݣ�ԤԼ���ң�ԤԼҽ����ԤԼ���ڣ��������)
--ҽ�������������ţ����ң�
--���ң����ұ�ţ��������ƣ�
--������������ţ��������ƣ�
--�������������,�������ң������������մ���־)