package com.project.jobfair.model;

public class updateProfile {
	private String com_Email;
	private String com_Website;
	private String com_Name;
	private String com_Phno;
	private String com_Address;
	private String com_Id;
	public updateProfile() {
		
	}
	public updateProfile(String com_Email, String com_Website, String com_Name, String com_Phno, String com_Address,
			String com_Id) {
		super();
		this.com_Email = com_Email;
		this.com_Website = com_Website;
		this.com_Name = com_Name;
		this.com_Phno = com_Phno;
		this.com_Address = com_Address;
		this.com_Id = com_Id;
	}
	public String getCom_Email() {
		return com_Email;
	}
	public void setCom_Email(String com_Email) {
		this.com_Email = com_Email;
	}
	public String getCom_Website() {
		return com_Website;
	}
	public void setCom_Website(String com_Website) {
		this.com_Website = com_Website;
	}
	public String getCom_Name() {
		return com_Name;
	}
	public void setCom_Name(String com_Name) {
		this.com_Name = com_Name;
	}
	public String getCom_Phno() {
		return com_Phno;
	}
	public void setCom_Phno(String com_Phno) {
		this.com_Phno = com_Phno;
	}
	public String getCom_Address() {
		return com_Address;
	}
	public void setCom_Address(String com_Address) {
		this.com_Address = com_Address;
	}
	public String getCom_Id() {
		return com_Id;
	}
	public void setCom_Id(String com_Id) {
		this.com_Id = com_Id;
	}
}
