package com.project.jobfair.model;

public class Admin {
	public Admin() {
		
	}
	public Admin(String admEmail, String admPwd, String admFname, String admLname, String faculty, String position) {
		super();
		this.admEmail = admEmail;
		this.admPwd = admPwd;
		this.admFname = admFname;
		this.admLname = admLname;
		this.faculty = faculty;
		this.position = position;
	}
	private String admEmail;
	private String admPwd;
	private String admFname;
	private String admLname;
	private String faculty;
	private String position;
	public String getAdmEmail() {
		return admEmail;
	}
	public void setAdmEmail(String admEmail) {
		this.admEmail = admEmail;
	}
	public String getAdmPwd() {
		return admPwd;
	}
	public void setAdmPwd(String admPwd) {
		this.admPwd = admPwd;
	}
	public String getAdmFname() {
		return admFname;
	}
	public void setAdmFname(String admFname) {
		this.admFname = admFname;
	}
	public String getAdmLname() {
		return admLname;
	}
	public void setAdmLname(String admLname) {
		this.admLname = admLname;
	}
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
}
