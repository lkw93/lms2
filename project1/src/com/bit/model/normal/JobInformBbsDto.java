package com.bit.model.normal;

import java.sql.Date;

public class JobInformBbsDto {//��������Խ���
	private int idx;//��ȣ
	private String company;//��ü��
	private String local;//����
	private int people;//�����ο�
	private String status;//�������
	private Date wDay;//�ۼ�����
	private Date eDay;//��������
	private String right;//�����ڰ�
	private String email;//�̸���
	private String content;//����
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getwDay() {
		return wDay;
	}
	public void setwDay(Date wDay) {
		this.wDay = wDay;
	}
	public Date geteDay() {
		return eDay;
	}
	public void seteDay(Date eDay) {
		this.eDay = eDay;
	}
	public String getRight() {
		return right;
	}
	public void setRight(String right) {
		this.right = right;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
