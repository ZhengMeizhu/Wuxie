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
	  ('0','Ů')
	  ,('1','��');
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
	('0','����')
	,('1','����')
	,('2','����')
	,('3','��������');
--��Ժ״̬
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
	('0','����Ժ')
	,('1','�ѳ�Ժ')
	,('2','����������辡����ʵ');
--סԺ������
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
	('0','�����ڿ�')
	,('1','ѪҺ��')
	,('2','�ǿ�')
	,('3','��������');
--�ɷ����
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
	('0','δ����')
	,('1','�ѽɷ�');
--�������������*��
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
	('0','1��')
	,('1','2��')
	,('2','3��');
--������������ţ��������ƣ��������,�մ���־*����������)
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
--סԺ���ˣ����˱�ţ��������Ա����壬�������ڣ���Ժ���ڣ���Ժ״̬����֢��סԺ�����ң������ţ��ɷ�������ɷѽ�����ҽ����
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
	  ('0305','��а','1','0','1987/03/05','2023/2/25','0','�ж����·���֯��ά��','0','0','0','8��','������')
	  ,('0016','���','1','0','2003/08/25','2023/2/25','1','�������һ�����ۣ���������ʹ�����','2','2','1','1��','֣����');
	SELECT PNo,PName,G.Name,N.Name,PBirthDate,PAdmissionDate,A.Name,Illness,D.Name,W.Name,B.Name,W.State,PS.Name,PayMoney,AttendDoctor
	FROM tb_Patient AS P
        JOIN tb_Gender AS G ON G.No=P.PGender
		JOIN tb_Nation AS N ON N.No=P.PNation
		JOIN tb_AdmissionState AS A ON A.No=P.PAdmissionState
		JOIN tb_Department AS D ON D.No=P.PDepartment
		JOIN tb_PaymentState AS PS ON PS.No=P.Payment
		JOIN tb_Ward AS W ON W.No=P.WardNo
		JOIN tb_Bed AS B ON B.No=W.BedNo;
--����ԤԼ(ԤԼ�ţ�����ԤԼ״̬��סԺ�ţ��������Ա𣬳������ڣ����ᣬ�绰�����֤�ţ����壬����״����������ݣ�ԤԼ���ң�ԤԼҽ����ԤԼ���ڣ��������)
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
	  ('0305','��а','1','0','1987/03/05','2023/2/25','0','�ж����·���֯��ά��','0','000101','0','8��','������')
	  ,('0016','���','1','0','2003/08/25','2023/2/25','1','�������һ�����ۣ���������ʹ�����','2','020202','1','1��','֣����');
--ҽ�������������ţ����ң�