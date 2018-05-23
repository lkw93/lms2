ALTER TABLE jop_af
	DROP
		CONSTRAINT FK_Staff_TO_jop_af
		CASCADE;

ALTER TABLE job_bbs
	DROP
		CONSTRAINT FK_Staff_TO_job_bbs
		CASCADE;

ALTER TABLE free_bbs
	DROP
		CONSTRAINT FK_Staff_TO_free_bbs
		CASCADE;

ALTER TABLE free_bbs
	DROP
		CONSTRAINT FK_Student_TO_free_bbs
		CASCADE;

ALTER TABLE lec_room
	DROP
		CONSTRAINT FK_Staff_TO_lec_room
		CASCADE;

ALTER TABLE FAQ
	DROP
		CONSTRAINT FK_Staff_TO_FAQ
		CASCADE;

ALTER TABLE att_bbs
	DROP
		CONSTRAINT FK_Student_TO_att_bbs
		CASCADE;

ALTER TABLE att_bbs
	DROP
		CONSTRAINT FK_Staff_TO_att_bbs
		CASCADE;

ALTER TABLE grade_check
	DROP
		CONSTRAINT FK_Student_TO_grade_check
		CASCADE;

ALTER TABLE grade_check
	DROP
		CONSTRAINT FK_Staff_TO_grade_check
		CASCADE;

ALTER TABLE cos_notice
	DROP
		CONSTRAINT FK_Staff_TO_cos_notice
		CASCADE;

ALTER TABLE lec_create
	DROP
		CONSTRAINT FK_Staff_TO_lec_create
		CASCADE;

ALTER TABLE lec_after
	DROP
		CONSTRAINT FK_Staff_TO_lec_after
		CASCADE;

ALTER TABLE jop_cs
	DROP
		CONSTRAINT FK_Staff_TO_jop_cs
		CASCADE;

ALTER TABLE notice_bbs
	DROP
		CONSTRAINT FK_Staff_TO_notice_bbs
		CASCADE;

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
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE jop_af IS '����ı�';

COMMENT ON COLUMN jop_af.idx IS '�۹�ȣ';

COMMENT ON COLUMN jop_af.id IS '���̵�';

COMMENT ON COLUMN jop_af.sub IS '����';

COMMENT ON COLUMN jop_af.content IS '����';

COMMENT ON COLUMN jop_af.hit IS '��ȸ��';

COMMENT ON COLUMN jop_af.wdate IS '�ۼ���';

ALTER TABLE jop_af
	ADD
		CONSTRAINT PK_jop_af
		PRIMARY KEY (
			idx
		);

/* ������� */
CREATE TABLE job_bbs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255) NOT NULL, /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE job_bbs IS '�������';

COMMENT ON COLUMN job_bbs.idx IS '�۹�ȣ';

COMMENT ON COLUMN job_bbs.id IS '���̵�';

COMMENT ON COLUMN job_bbs.sub IS '����';

COMMENT ON COLUMN job_bbs.content IS '����';

COMMENT ON COLUMN job_bbs.hit IS '��ȸ��';

COMMENT ON COLUMN job_bbs.wdate IS '�ۼ���';

ALTER TABLE job_bbs
	ADD
		CONSTRAINT PK_job_bbs
		PRIMARY KEY (
			idx
		);

/* �����Խ��� */
CREATE TABLE free_bbs (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE free_bbs IS '�����Խ���';

COMMENT ON COLUMN free_bbs.id IS '���̵�';

COMMENT ON COLUMN free_bbs.sub IS '����';

COMMENT ON COLUMN free_bbs.content IS '����';

COMMENT ON COLUMN free_bbs.hit IS '��ȸ��';

COMMENT ON COLUMN free_bbs.wdate IS '�ۼ���';

ALTER TABLE free_bbs
	ADD
		CONSTRAINT PK_free_bbs
		PRIMARY KEY (
			id
		);

/* �����ڷ�� */
CREATE TABLE lec_room (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE lec_room IS '�����ڷ��';

COMMENT ON COLUMN lec_room.idx IS '�۹�ȣ';

COMMENT ON COLUMN lec_room.id IS '���̵�';

COMMENT ON COLUMN lec_room.sub IS '����';

COMMENT ON COLUMN lec_room.content IS '����';

COMMENT ON COLUMN lec_room.hit IS '��ȸ��';

COMMENT ON COLUMN lec_room.wdate IS '�ۼ���';

ALTER TABLE lec_room
	ADD
		CONSTRAINT PK_lec_room
		PRIMARY KEY (
			idx
		);

/* FAQ */
CREATE TABLE FAQ (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE FAQ IS 'FAQ';

COMMENT ON COLUMN FAQ.idx IS '�۹�ȣ';

COMMENT ON COLUMN FAQ.id IS '���̵�';

COMMENT ON COLUMN FAQ.sub IS '����';

COMMENT ON COLUMN FAQ.content IS '����';

COMMENT ON COLUMN FAQ.hit IS '��ȸ��';

COMMENT ON COLUMN FAQ.wdate IS '�ۼ���';

ALTER TABLE FAQ
	ADD
		CONSTRAINT PK_FAQ
		PRIMARY KEY (
			idx
		);

/* ��� */
CREATE TABLE att_bbs (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sts NUMBER NOT NULL, /* ��� ���� */
	att VARCHAR2(255) NOT NULL /* ��� */
);

COMMENT ON TABLE att_bbs IS '���';

COMMENT ON COLUMN att_bbs.id IS '���̵�';

COMMENT ON COLUMN att_bbs.sts IS '��� ����';

COMMENT ON COLUMN att_bbs.att IS '���';

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

COMMENT ON TABLE online_test IS '�¶����׽�Ʈ';

COMMENT ON COLUMN online_test.qnum IS '������ȣ';

COMMENT ON COLUMN online_test.question IS '����';

COMMENT ON COLUMN online_test.example IS '����';

COMMENT ON COLUMN online_test.answer IS '����';

COMMENT ON COLUMN online_test.edu IS '����';

ALTER TABLE online_test
	ADD
		CONSTRAINT PK_online_test
		PRIMARY KEY (
			qnum
		);

/* ����Ȯ�ΰԽ��� */
CREATE TABLE grade_check (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	edu VARCHAR2(255) NOT NULL, /* ����1 */
	COL VARCHAR2(255), /* ����2 */
	COL2 VARCHAR2(255), /* ����3 */
	grade NUMBER NOT NULL /* ���� */
);

COMMENT ON TABLE grade_check IS '����Ȯ�ΰԽ���';

COMMENT ON COLUMN grade_check.id IS '���̵�';

COMMENT ON COLUMN grade_check.edu IS '����1';

COMMENT ON COLUMN grade_check.COL IS '����2';

COMMENT ON COLUMN grade_check.COL2 IS '����3';

COMMENT ON COLUMN grade_check.grade IS '����';

ALTER TABLE grade_check
	ADD
		CONSTRAINT PK_grade_check
		PRIMARY KEY (
			id
		);

/* ������ �������� */
CREATE TABLE cos_notice (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE cos_notice IS '������ ��������';

COMMENT ON COLUMN cos_notice.idx IS '�۹�ȣ';

COMMENT ON COLUMN cos_notice.id IS '���̵�';

COMMENT ON COLUMN cos_notice.sub IS '����';

COMMENT ON COLUMN cos_notice.content IS '����';

COMMENT ON COLUMN cos_notice.hit IS '��ȸ��';

COMMENT ON COLUMN cos_notice.wdate IS '�ۼ���';

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
	id VARCHAR2(255) /* �̸� */
);

COMMENT ON TABLE lec_create IS '���ǰ���';

COMMENT ON COLUMN lec_create.lname IS '���Ǹ�';

COMMENT ON COLUMN lec_create.sday IS '������';

COMMENT ON COLUMN lec_create.eday IS '������';

COMMENT ON COLUMN lec_create.edu IS '����';

COMMENT ON COLUMN lec_create.tot IS '�ѿ�';

COMMENT ON COLUMN lec_create.id IS '�̸�';

/* �����ı� */
CREATE TABLE lec_after (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE lec_after IS '�����ı�';

COMMENT ON COLUMN lec_after.idx IS '�۹�ȣ';

COMMENT ON COLUMN lec_after.id IS '���̵�';

COMMENT ON COLUMN lec_after.sub IS '����';

COMMENT ON COLUMN lec_after.content IS '����';

COMMENT ON COLUMN lec_after.hit IS '��ȸ��';

COMMENT ON COLUMN lec_after.wdate IS '�ۼ���';

ALTER TABLE lec_after
	ADD
		CONSTRAINT PK_lec_after
		PRIMARY KEY (
			idx
		);

/* ������ */
CREATE TABLE Student (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(255) NOT NULL, /* �̸� */
	phone VARCHAR2(30), /* ��ȭ��ȣ */
	email VARCHAR2(40), /* �̸��� */
	birth VARCHAR2(13), /* ������� */
	address VARCHAR2(255) /* �ּ� */
);

COMMENT ON TABLE Student IS '������';

COMMENT ON COLUMN Student.id IS '���̵�';

COMMENT ON COLUMN Student.pw IS '��й�ȣ';

COMMENT ON COLUMN Student.name IS '�̸�';

COMMENT ON COLUMN Student.phone IS '��ȭ��ȣ';

COMMENT ON COLUMN Student.email IS '�̸���';

COMMENT ON COLUMN Student.birth IS '�������';

COMMENT ON COLUMN Student.address IS '�ּ�';

ALTER TABLE Student
	ADD
		CONSTRAINT PK_Student
		PRIMARY KEY (
			id
		);

/* �����Ȳ */
CREATE TABLE jop_cs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	eduCurri VARCHAR2(255), /* �������� */
	company VARCHAR2(255), /* �����ü�� */
	field VARCHAR2(255) /* ����о� */
);

COMMENT ON TABLE jop_cs IS '�����Ȳ';

COMMENT ON COLUMN jop_cs.idx IS '�۹�ȣ';

COMMENT ON COLUMN jop_cs.id IS '���̵�';

COMMENT ON COLUMN jop_cs.eduCurri IS '��������';

COMMENT ON COLUMN jop_cs.company IS '�����ü��';

COMMENT ON COLUMN jop_cs.field IS '����о�';

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

COMMENT ON TABLE app_bbs IS '���ΰԽ���';

COMMENT ON COLUMN app_bbs.idx IS '�۹�ȣ';

COMMENT ON COLUMN app_bbs.wdate IS '�ۼ���';

ALTER TABLE app_bbs
	ADD
		CONSTRAINT PK_app_bbs
		PRIMARY KEY (
			idx
		);

/* ���� */
CREATE TABLE Staff (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	pw VARCHAR2(255) NOT NULL, /* �н����� */
	name VARCHAR2(255) NOT NULL, /* �̸� */
	phone VARCHAR2(30) NOT NULL, /* ��ȭ��ȣ */
	email VARCHAR2(40), /* �̸��� */
	birth VARCHAR2(13), /* ������� */
	address VARCHAR2(255), /* �ּ� */
	emp_num NUMBER, /* ��� */
	affiliation VARCHAR2(255) /* �Ҽ� */
);

COMMENT ON TABLE Staff IS '����';

COMMENT ON COLUMN Staff.id IS '���̵�';

COMMENT ON COLUMN Staff.pw IS '�н�����';

COMMENT ON COLUMN Staff.name IS '�̸�';

COMMENT ON COLUMN Staff.phone IS '��ȭ��ȣ';

COMMENT ON COLUMN Staff.email IS '�̸���';

COMMENT ON COLUMN Staff.birth IS '�������';

COMMENT ON COLUMN Staff.address IS '�ּ�';

COMMENT ON COLUMN Staff.emp_num IS '���';

COMMENT ON COLUMN Staff.affiliation IS '�Ҽ�';

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

COMMENT ON TABLE member IS 'ȸ��';

COMMENT ON COLUMN member.id IS '���̵�';

COMMENT ON COLUMN member.pw IS '��й�ȣ';

COMMENT ON COLUMN member.name IS '�̸�';

COMMENT ON COLUMN member.phone IS '��ȭ��ȣ';

COMMENT ON COLUMN member.email IS '�̸���';

COMMENT ON COLUMN member.birth IS '�������';

COMMENT ON COLUMN member.address IS '�ּ�';

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			id
		);

/* �������� */
CREATE TABLE notice_bbs (
	idx NUMBER NOT NULL, /* �۹�ȣ */
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	sub VARCHAR2(255) NOT NULL, /* ���� */
	content VARCHAR2(255), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	wdate DATE /* �ۼ��� */
);

COMMENT ON TABLE notice_bbs IS '��������';

COMMENT ON COLUMN notice_bbs.idx IS '�۹�ȣ';

COMMENT ON COLUMN notice_bbs.id IS '���̵�';

COMMENT ON COLUMN notice_bbs.sub IS '����';

COMMENT ON COLUMN notice_bbs.content IS '����';

COMMENT ON COLUMN notice_bbs.hit IS '��ȸ��';

COMMENT ON COLUMN notice_bbs.wdate IS '�ۼ���';

ALTER TABLE notice_bbs
	ADD
		CONSTRAINT PK_notice_bbs
		PRIMARY KEY (
			idx
		);

ALTER TABLE jop_af
	ADD
		CONSTRAINT FK_Staff_TO_jop_af
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE job_bbs
	ADD
		CONSTRAINT FK_Staff_TO_job_bbs
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE free_bbs
	ADD
		CONSTRAINT FK_Staff_TO_free_bbs
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE free_bbs
	ADD
		CONSTRAINT FK_Student_TO_free_bbs
		FOREIGN KEY (
			id
		)
		REFERENCES Student (
			id
		);

ALTER TABLE lec_room
	ADD
		CONSTRAINT FK_Staff_TO_lec_room
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE FAQ
	ADD
		CONSTRAINT FK_Staff_TO_FAQ
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE att_bbs
	ADD
		CONSTRAINT FK_Student_TO_att_bbs
		FOREIGN KEY (
			id
		)
		REFERENCES Student (
			id
		);

ALTER TABLE att_bbs
	ADD
		CONSTRAINT FK_Staff_TO_att_bbs
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE grade_check
	ADD
		CONSTRAINT FK_Student_TO_grade_check
		FOREIGN KEY (
			id
		)
		REFERENCES Student (
			id
		);

ALTER TABLE grade_check
	ADD
		CONSTRAINT FK_Staff_TO_grade_check
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE cos_notice
	ADD
		CONSTRAINT FK_Staff_TO_cos_notice
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE lec_create
	ADD
		CONSTRAINT FK_Staff_TO_lec_create
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE lec_after
	ADD
		CONSTRAINT FK_Staff_TO_lec_after
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE jop_cs
	ADD
		CONSTRAINT FK_Staff_TO_jop_cs
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);

ALTER TABLE notice_bbs
	ADD
		CONSTRAINT FK_Staff_TO_notice_bbs
		FOREIGN KEY (
			id
		)
		REFERENCES Staff (
			id
		);