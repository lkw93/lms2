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

DROP INDEX PK_jop_af;

DROP INDEX PK_job_bbs;

DROP INDEX PK_free_bbs;

DROP INDEX PK_lec_room;

DROP INDEX PK_FAQ;

DROP INDEX PK_att_bbs;

DROP INDEX PK_online_test;

DROP INDEX PK_grade_check;

DROP INDEX PK_cos_notice;

DROP INDEX PK_lec_after;

DROP INDEX PK_Student;

DROP INDEX PK_jop_cs;

DROP INDEX PK_app_bbs;

DROP INDEX PK_Staff;

DROP INDEX PK_member;

DROP INDEX PK_notice_bbs;

/* 취업후기 */
DROP TABLE jop_af 
	CASCADE CONSTRAINTS;

/* 취업정보 */
DROP TABLE job_bbs 
	CASCADE CONSTRAINTS;

/* 자유게시판 */
DROP TABLE free_bbs 
	CASCADE CONSTRAINTS;

/* 수업자료실 */
DROP TABLE lec_room 
	CASCADE CONSTRAINTS;

/* FAQ */
DROP TABLE FAQ 
	CASCADE CONSTRAINTS;

/* 출결 */
DROP TABLE att_bbs 
	CASCADE CONSTRAINTS;

/* 온라인테스트 */
DROP TABLE online_test 
	CASCADE CONSTRAINTS;

/* 성적확인게시판 */
DROP TABLE grade_check 
	CASCADE CONSTRAINTS;

/* 고객센터 공지사항 */
DROP TABLE cos_notice 
	CASCADE CONSTRAINTS;

/* 강의개설 */
DROP TABLE lec_create 
	CASCADE CONSTRAINTS;

/* 교육후기 */
DROP TABLE lec_after 
	CASCADE CONSTRAINTS;

/* 수강생 */
DROP TABLE Student 
	CASCADE CONSTRAINTS;

/* 취업현황 */
DROP TABLE jop_cs 
	CASCADE CONSTRAINTS;

/* 승인게시판 */
DROP TABLE app_bbs 
	CASCADE CONSTRAINTS;

/* 직원 */
DROP TABLE Staff 
	CASCADE CONSTRAINTS;

/* 회원 */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE notice_bbs 
	CASCADE CONSTRAINTS;