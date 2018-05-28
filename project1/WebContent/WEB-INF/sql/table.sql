ALTER TABLE job_info_bbs
	DROP
		CONSTRAINT FK_Staff_TO_job_info_bbs
		CASCADE;

ALTER TABLE jop_cs
	DROP
		CONSTRAINT FK_Staff_TO_jop_cs
		CASCADE;

ALTER TABLE Student
	DROP
		CONSTRAINT FK_lec_create_TO_Student
		CASCADE;

ALTER TABLE Student
	DROP
		CONSTRAINT FK_app_bbs_stu_TO_Student
		CASCADE;

ALTER TABLE att_bbs
	DROP
		CONSTRAINT FK_Student_TO_att_bbs
		CASCADE;

ALTER TABLE app_bbs_stu
	DROP
		CONSTRAINT FK_stu_member_TO_app_bbs_stu
		CASCADE;

ALTER TABLE stu_notice_bbs
	DROP
		CONSTRAINT FK_Staff_TO_stu_notice_bbs
		CASCADE;

ALTER TABLE cs_notice
	DROP
		CONSTRAINT FK_Staff_TO_cs_notice
		CASCADE;

ALTER TABLE app_bbs_emp
	DROP
		CONSTRAINT FK_emp_member_TO_app_bbs_emp
		CASCADE;

ALTER TABLE lec_create
	DROP
		CONSTRAINT FK_Staff_TO_lec_create
		CASCADE;

ALTER TABLE grade_check
	DROP
		CONSTRAINT FK_Student_TO_grade_check
		CASCADE;

ALTER TABLE free_bbs
	DROP
		CONSTRAINT FK_Student_TO_free_bbs
		CASCADE;

ALTER TABLE FAQ
	DROP
		CONSTRAINT FK_Staff_TO_FAQ
		CASCADE;

ALTER TABLE lec_after
	DROP
		CONSTRAINT FK_Student_TO_lec_after
		CASCADE;

ALTER TABLE lec_data
	DROP
		CONSTRAINT FK_Staff_TO_lec_data
		CASCADE;

ALTER TABLE Staff
	DROP
		CONSTRAINT FK_app_bbs_emp_TO_Staff
		CASCADE;

ALTER TABLE jop_af
	DROP
		CONSTRAINT FK_Student_TO_jop_af
		CASCADE;

ALTER TABLE job_info_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE jop_cs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Student
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE att_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE app_bbs_stu
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE stu_notice_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE stu_member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE online_test
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE cs_notice
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE app_bbs_emp
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE lec_create
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE grade_check
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE online_cs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE emp_member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE free_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE FAQ
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE lec_after
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE lec_data
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Staff
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE jop_af
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* ������� */
DROP TABLE job_info_bbs 
	CASCADE CONSTRAINTS;

/* �����Ȳ */
DROP TABLE jop_cs 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE Student 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE att_bbs 
	CASCADE CONSTRAINTS;

/* ���������ΰԽ��� */
DROP TABLE app_bbs_stu 
	CASCADE CONSTRAINTS;

/* ������ �������� */
DROP TABLE stu_notice_bbs 
	CASCADE CONSTRAINTS;

/* ��������� */
DROP TABLE stu_member 
	CASCADE CONSTRAINTS;

/* �¶����׽�Ʈ */
DROP TABLE online_test 
	CASCADE CONSTRAINTS;

/* ������ �������� */
DROP TABLE cs_notice 
	CASCADE CONSTRAINTS;

/* �������ΰԽ��� */
DROP TABLE app_bbs_emp 
	CASCADE CONSTRAINTS;

/* ���ǰ��� */
DROP TABLE lec_create 
	CASCADE CONSTRAINTS;

/* ����Ȯ�ΰԽ��� */
DROP TABLE grade_check 
	CASCADE CONSTRAINTS;

/* �¶��� ��� */
DROP TABLE online_cs 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE emp_member 
	CASCADE CONSTRAINTS;

/* �����Խ��� */
DROP TABLE free_bbs 
	CASCADE CONSTRAINTS;

/* FAQ */
DROP TABLE FAQ 
	CASCADE CONSTRAINTS;

/* �����ı� */
DROP TABLE lec_after 
	CASCADE CONSTRAINTS;

/* �����ڷ�� */
DROP TABLE lec_data 
	CASCADE CONSTRAINTS;

/* �����Ƿ� */
DROP TABLE job_ad 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE Staff 
	CASCADE CONSTRAINTS;

/* ����ı� */
DROP TABLE jop_af 
	CASCADE CONSTRAINTS;

/* ������� */
CREATE TABLE job_info_bbs (
	idx NUMBER(4) NOT NULL, /* idx */
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255) NOT NULL, /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE job_info_bbs
	ADD
		CONSTRAINT PK_job_info_bbs
		PRIMARY KEY (
			idx
		);

/* �����Ȳ */
CREATE TABLE jop_cs (
	idx NUMBER NOT NULL, /* idx */
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	eduCurri VARCHAR2(255), /* �������� */
	company VARCHAR2(255), /* �����ü�� */
	field VARCHAR2(255) /* ����о� */
);

ALTER TABLE jop_cs
	ADD
		CONSTRAINT PK_jop_cs
		PRIMARY KEY (
			idx
		);

/* ������ */
CREATE TABLE Student (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	season NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50), /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(10) NOT NULL, /* �̸� */
	phone VARCHAR2(13), /* ��ȭ��ȣ */
	email VARCHAR2(50), /* �̸��� */
	birth VARCHAR2(13), /* ������� */
	address VARCHAR2(255), /* �ּ� */
	room NUMBER(1) /* ���ǽ� */
);

ALTER TABLE Student
	ADD
		CONSTRAINT PK_Student
		PRIMARY KEY (
			stu_code
		);

/* ��� */
CREATE TABLE att_bbs (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	cdate DATE NOT NULL, /* cdate */
	att VARCHAR2(60) NOT NULL /* ��� */
);

ALTER TABLE att_bbs
	ADD
		CONSTRAINT PK_att_bbs
		PRIMARY KEY (
			stu_code
		);

/* ���������ΰԽ��� */
CREATE TABLE app_bbs_stu (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	idx VARCHAR2(50) NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	wdate DATE, /* �ۼ��� */
	name VARCHAR2(10), /* �̸� */
	phone VARCHAR2(15), /* ��ȭ��ȣ */
	email VARCHAR2(50), /* �̸��� */
	birth VARCHAR2(6), /* ������� */
	address VARCHAR2(100), /* �ּ� */
	class NUMBER(1) /* ���ǽ� */
);

ALTER TABLE app_bbs_stu
	ADD
		CONSTRAINT PK_app_bbs_stu
		PRIMARY KEY (
			stu_code
		);

/* ������ �������� */
CREATE TABLE stu_notice_bbs (
	idx NUMBER NOT NULL, /* idx */
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE stu_notice_bbs
	ADD
		CONSTRAINT PK_stu_notice_bbs
		PRIMARY KEY (
			idx
		);

/* ��������� */
CREATE TABLE stu_member (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	pw VARCHAR2(13) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(10) NOT NULL, /* �̸� */
	phone VARCHAR2(11), /* ��ȭ��ȣ */
	email VARCHAR2(50), /* �̸��� */
	birth VARCHAR2(6), /* ������� */
	address VARCHAR2(255) /* �ּ� */
);

ALTER TABLE stu_member
	ADD
		CONSTRAINT PK_stu_member
		PRIMARY KEY (
			stu_code
		);

/* �¶����׽�Ʈ */
CREATE TABLE online_test (
	qnum NUMBER(2) NOT NULL, /* ������ȣ */
	question VARCHAR2(255) NOT NULL, /* ���� */
	example VARCHAR2(255) NOT NULL, /* ���� */
	answer NUMBER(1) NOT NULL, /* ���� */
	room NUMBER(1) /* ���ǽ� */
);

ALTER TABLE online_test
	ADD
		CONSTRAINT PK_online_test
		PRIMARY KEY (
			qnum
		);

/* ������ �������� */
CREATE TABLE cs_notice (
	idx NUMBER NOT NULL, /* idx */
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE cs_notice
	ADD
		CONSTRAINT PK_cs_notice
		PRIMARY KEY (
			idx
		);

/* �������ΰԽ��� */
CREATE TABLE app_bbs_emp (
	emp_num NUMBER NOT NULL, /* ��� */
	idx VARCHAR2(50) NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	wdate DATE, /* �ۼ��� */
	name VARCHAR2(10), /* �̸� */
	phone VARCHAR2(15), /* ��ȭ��ȣ */
	email VARCHAR2(50), /* �̸��� */
	birth VARCHAR2(6), /* ������� */
	address VARCHAR2(100) /* �ּ� */
);

ALTER TABLE app_bbs_emp
	ADD
		CONSTRAINT PK_app_bbs_emp
		PRIMARY KEY (
			emp_num
		);

/* ���ǰ��� */
CREATE TABLE lec_create (
	season NUMBER NOT NULL, /* ��� */
	emp_code NUMBER NOT NULL, /* ��� */
	class NUMBER(1) NOT NULL, /* ���ǽ� */
	id VARCHAR2(50) NOT NULL, /* �̸� */
	sday DATE, /* ������ */
	eday DATE, /* ������ */
	edu VARCHAR2(10) NOT NULL, /* ���� */
	tot NUMBER NOT NULL /* �ѿ� */
);

ALTER TABLE lec_create
	ADD
		CONSTRAINT PK_lec_create
		PRIMARY KEY (
			season
		);

/* ����Ȯ�ΰԽ��� */
CREATE TABLE grade_check (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	java NUMBER(3), /* java */
	web NUMBER(3), /* web */
	db NUMBER(3) /* db */
);

ALTER TABLE grade_check
	ADD
		CONSTRAINT PK_grade_check
		PRIMARY KEY (
			stu_code
		);

/* �¶��� ��� */
CREATE TABLE online_cs (
	idx NUMBER NOT NULL, /* idx */
	name VARCHAR2(10), /* �̸� */
	sub VARCHAR2(255), /* ���� */
	content VARCHAR2(4000), /* ���� */
	email VARCHAR2(100), /* �̸��� */
	phone NUMBER, /* ��ȭ��ȣ */
	wdate DATE, /* ��¥ */
	yn NUMBER(1) /* yn */
);

ALTER TABLE online_cs
	ADD
		CONSTRAINT PK_online_cs
		PRIMARY KEY (
			idx
		);

/* �������� */
CREATE TABLE emp_member (
	mem_num NUMBER NOT NULL, /* ��� */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	pw VARCHAR2(13) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(10) NOT NULL, /* �̸� */
	phone VARCHAR2(11), /* ��ȭ��ȣ */
	email VARCHAR2(50), /* �̸��� */
	birth VARCHAR2(6), /* ������� */
	address VARCHAR2(255) /* �ּ� */
);

ALTER TABLE emp_member
	ADD
		CONSTRAINT PK_emp_member
		PRIMARY KEY (
			mem_num
		);

/* �����Խ��� */
CREATE TABLE free_bbs (
	idx NUMBER NOT NULL, /* idx */
	stu_code NUMBER(4) NOT NULL, /* �й� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000) NOT NULL, /* ���� */
	hit NUMBER NOT NULL, /* ��ȸ�� */
	wdate DATE NOT NULL /* �ۼ��� */
);

ALTER TABLE free_bbs
	ADD
		CONSTRAINT PK_free_bbs
		PRIMARY KEY (
			idx
		);

/* FAQ */
CREATE TABLE FAQ (
	idx NUMBER(4) NOT NULL, /* idx */
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE FAQ
	ADD
		CONSTRAINT PK_FAQ
		PRIMARY KEY (
			idx
		);

/* �����ı� */
CREATE TABLE lec_after (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE lec_after
	ADD
		CONSTRAINT PK_lec_after
		PRIMARY KEY (
			stu_code
		);

/* �����ڷ�� */
CREATE TABLE lec_data (
	idx NUMBER NOT NULL, /* idx */
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE lec_data
	ADD
		CONSTRAINT PK_lec_data
		PRIMARY KEY (
			idx
		);

/* �����Ƿ� */
CREATE TABLE job_ad (
	company VARCHAR2(100), /* ��ü�� */
	phone NUMBER, /* ��ȭ��ȣ */
	field VARCHAR2(100), /* �����о� */
	email VARCHAR2(100), /* �̸��� */
	pay NUMBER /* ���� */
);

/* ���� */
CREATE TABLE Staff (
	emp_code NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* �н����� */
	name VARCHAR2(10) NOT NULL, /* �̸� */
	phone VARCHAR2(50) NOT NULL, /* ��ȭ��ȣ */
	email VARCHAR2(50), /* �̸��� */
	birth VARCHAR2(6), /* ������� */
	address VARCHAR2(255) /* �ּ� */
);

ALTER TABLE Staff
	ADD
		CONSTRAINT PK_Staff
		PRIMARY KEY (
			emp_code
		);

/* ����ı� */
CREATE TABLE jop_af (
	stu_code NUMBER(4) NOT NULL, /* �й� */
	season NUMBER NOT NULL, /* ��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(4000), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE jop_af
	ADD
		CONSTRAINT PK_jop_af
		PRIMARY KEY (
			stu_code
		);

ALTER TABLE job_info_bbs
	ADD
		CONSTRAINT FK_Staff_TO_job_info_bbs
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE jop_cs
	ADD
		CONSTRAINT FK_Staff_TO_jop_cs
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE Student
	ADD
		CONSTRAINT FK_lec_create_TO_Student
		FOREIGN KEY (
			season
		)
		REFERENCES lec_create (
			season
		);

ALTER TABLE Student
	ADD
		CONSTRAINT FK_app_bbs_stu_TO_Student
		FOREIGN KEY (
			stu_code
		)
		REFERENCES app_bbs_stu (
			stu_code
		);

ALTER TABLE att_bbs
	ADD
		CONSTRAINT FK_Student_TO_att_bbs
		FOREIGN KEY (
			stu_code
		)
		REFERENCES Student (
			stu_code
		);

ALTER TABLE app_bbs_stu
	ADD
		CONSTRAINT FK_stu_member_TO_app_bbs_stu
		FOREIGN KEY (
			stu_code
		)
		REFERENCES stu_member (
			stu_code
		);

ALTER TABLE stu_notice_bbs
	ADD
		CONSTRAINT FK_Staff_TO_stu_notice_bbs
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE cs_notice
	ADD
		CONSTRAINT FK_Staff_TO_cs_notice
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE app_bbs_emp
	ADD
		CONSTRAINT FK_emp_member_TO_app_bbs_emp
		FOREIGN KEY (
			emp_num
		)
		REFERENCES emp_member (
			mem_num
		);

ALTER TABLE lec_create
	ADD
		CONSTRAINT FK_Staff_TO_lec_create
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE grade_check
	ADD
		CONSTRAINT FK_Student_TO_grade_check
		FOREIGN KEY (
			stu_code
		)
		REFERENCES Student (
			stu_code
		);

ALTER TABLE free_bbs
	ADD
		CONSTRAINT FK_Student_TO_free_bbs
		FOREIGN KEY (
			stu_code
		)
		REFERENCES Student (
			stu_code
		);

ALTER TABLE FAQ
	ADD
		CONSTRAINT FK_Staff_TO_FAQ
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE lec_after
	ADD
		CONSTRAINT FK_Student_TO_lec_after
		FOREIGN KEY (
			stu_code
		)
		REFERENCES Student (
			stu_code
		);

ALTER TABLE lec_data
	ADD
		CONSTRAINT FK_Staff_TO_lec_data
		FOREIGN KEY (
			emp_code
		)
		REFERENCES Staff (
			emp_code
		);

ALTER TABLE Staff
	ADD
		CONSTRAINT FK_app_bbs_emp_TO_Staff
		FOREIGN KEY (
			emp_code
		)
		REFERENCES app_bbs_emp (
			emp_num
		);

ALTER TABLE jop_af
	ADD
		CONSTRAINT FK_Student_TO_jop_af
		FOREIGN KEY (
			stu_code
		)
		REFERENCES Student (
			stu_code
		);