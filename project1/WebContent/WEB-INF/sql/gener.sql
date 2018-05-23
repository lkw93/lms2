ALTER TABLE jop_af
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE job_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE free_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE lec_room
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE FAQ
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE att_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE online_test
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE grade_check
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE cos_notice
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE lec_after
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Student
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE jop_cs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE app_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Staff
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE notice_bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* ����ı� */
DROP TABLE jop_af 
	CASCADE CONSTRAINTS;

/* ������� */
DROP TABLE job_bbs 
	CASCADE CONSTRAINTS;

/* �����Խ��� */
DROP TABLE free_bbs 
	CASCADE CONSTRAINTS;

/* �����ڷ�� */
DROP TABLE lec_room 
	CASCADE CONSTRAINTS;

/* FAQ */
DROP TABLE FAQ 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE att_bbs 
	CASCADE CONSTRAINTS;

/* �¶����׽�Ʈ */
DROP TABLE online_test 
	CASCADE CONSTRAINTS;

/* ����Ȯ�ΰԽ��� */
DROP TABLE grade_check 
	CASCADE CONSTRAINTS;

/* ������ �������� */
DROP TABLE cos_notice 
	CASCADE CONSTRAINTS;

/* ���ǰ��� */
DROP TABLE lec_create 
	CASCADE CONSTRAINTS;

/* �����ı� */
DROP TABLE lec_after 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE Student 
	CASCADE CONSTRAINTS;

/* �����Ȳ */
DROP TABLE jop_cs 
	CASCADE CONSTRAINTS;

/* ���ΰԽ��� */
DROP TABLE app_bbs 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE Staff 
	CASCADE CONSTRAINTS;

/* ȸ�� */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE notice_bbs 
	CASCADE CONSTRAINTS;

/* ����ı� */
CREATE TABLE jop_af (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE jop_af
	ADD
		CONSTRAINT PK_jop_af
		PRIMARY KEY (
			idx
		);

/* ������� */
CREATE TABLE job_bbs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255) NOT NULL, /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE job_bbs
	ADD
		CONSTRAINT PK_job_bbs
		PRIMARY KEY (
			idx
		);

/* �����Խ��� */
CREATE TABLE free_bbs (
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255), /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE free_bbs
	ADD
		CONSTRAINT PK_free_bbs
		PRIMARY KEY (
			id
		);

/* �����ڷ�� */
CREATE TABLE lec_room (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE lec_room
	ADD
		CONSTRAINT PK_lec_room
		PRIMARY KEY (
			idx
		);

/* FAQ */
CREATE TABLE FAQ (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE FAQ
	ADD
		CONSTRAINT PK_FAQ
		PRIMARY KEY (
			idx
		);

/* ��� */
CREATE TABLE att_bbs (
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sts NUMBER NOT NULL, /* ��� ���� */
	att VARCHAR2(255) NOT NULL /* ��� */
);

ALTER TABLE att_bbs
	ADD
		CONSTRAINT PK_att_bbs
		PRIMARY KEY (
			id
		);

/* �¶����׽�Ʈ */
CREATE TABLE online_test (
	qnum NUMBER NOT NULL, /* ������ȣ */
	question VARCHAR2(255) NOT NULL, /* ���� */
	example VARCHAR2(255) NOT NULL, /* ���� */
	answer NUMBER NOT NULL, /* ���� */
	edu VARCHAR2(255) NOT NULL /* ���� */
);

ALTER TABLE online_test
	ADD
		CONSTRAINT PK_online_test
		PRIMARY KEY (
			qnum
		);

/* ����Ȯ�ΰԽ��� */
CREATE TABLE grade_check (
	id VARCHAR(50) NOT NULL, /* ���̵� */
	edu VARCHAR2(255) NOT NULL, /* ����1 */
	COL VARCHAR2(255), /* ����2 */
	COL2 VARCHAR2(255), /* ����3 */
	grade NUMBER NOT NULL /* ���� */
);

ALTER TABLE grade_check
	ADD
		CONSTRAINT PK_grade_check
		PRIMARY KEY (
			id
		);

/* ������ �������� */
CREATE TABLE cos_notice (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE cos_notice
	ADD
		CONSTRAINT PK_cos_notice
		PRIMARY KEY (
			idx
		);

/* ���ǰ��� */
CREATE TABLE lec_create (
	lname VARCHAR2(255) NOT NULL, /* ���Ǹ� */
	sday DATE, /* ������ */
	eday DATE, /* ������ */
	edu VARCHAR2(255) NOT NULL, /* ���� */
	tot NUMBER NOT NULL, /* �ѿ� */
	id VARCHAR(50) /* �̸� */
);

/* �����ı� */
CREATE TABLE lec_after (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE lec_after
	ADD
		CONSTRAINT PK_lec_after
		PRIMARY KEY (
			idx
		);

/* ������ */
CREATE TABLE Student (
	id VARCHAR(50) NOT NULL, /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(255) NOT NULL, /* �̸� */
	phone VARCHAR2(30), /* ��ȭ��ȣ */
	email VARCHAR2(40), /* �̸��� */
	birth VARCHAR2(13), /* ������� */
	address VARCHAR2(255) /* �ּ� */
);

ALTER TABLE Student
	ADD
		CONSTRAINT PK_Student
		PRIMARY KEY (
			id
		);

/* �����Ȳ */
CREATE TABLE jop_cs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
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

/* ���ΰԽ��� */
CREATE TABLE app_bbs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE app_bbs
	ADD
		CONSTRAINT PK_app_bbs
		PRIMARY KEY (
			idx
		);

/* ���� */
CREATE TABLE Staff (
	id VARCHAR(50) NOT NULL, /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* �н����� */
	name VARCHAR2(255) NOT NULL, /* �̸� */
	phone VARCHAR2(30) NOT NULL, /* ��ȭ��ȣ */
	email VARCHAR2(40), /* �̸��� */
	birth VARCHAR2(13), /* ������� */
	address VARCHAR2(255), /* �ּ� */
	emp_num NUMBER, /* ��� */
	affiliation VARCHAR2(255) /* �Ҽ� */
);

ALTER TABLE Staff
	ADD
		CONSTRAINT PK_Staff
		PRIMARY KEY (
			id
		);

/* ȸ�� */
CREATE TABLE member (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	phone VARCHAR2(30), /* ��ȭ��ȣ */
	email VARCHAR2(40), /* �̸��� */
	birth VARCHAR2(13), /* ������� */
	address VARCHAR2(255) /* �ּ� */
);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			id
		);

/* �������� */
CREATE TABLE notice_bbs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR(50) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

ALTER TABLE notice_bbs
	ADD
		CONSTRAINT PK_notice_bbs
		PRIMARY KEY (
			idx
		);