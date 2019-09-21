package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseStudent")
public class Student extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String uid;
	private String uname;
	private String tel;
	private String age;
	private String sex;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String uid, String uname, String tel, String age, String sex) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.tel = tel;
		this.age = age;
		this.sex = sex;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Student [uid=" + uid + ", uname=" + uname + ", tel=" + tel
				+ ", age=" + age + ", sex=" + sex + "]";
	}
}
