package com.project.jobfair.model;

public class editProfile {
	public editProfile() {
		
	}
 
public editProfile(String comEmail, String comWebsite, String comName, String comPhno, String comAddress,
			String comId) {
		super();
		this.comEmail = comEmail;
		this.comWebsite = comWebsite;
		this.comName = comName;
		this.comPhno = comPhno;
		this.comAddress = comAddress;
		this.comId = comId;
	}

private String comEmail;
private String comWebsite;
private String comName;
private String comPhno;
private String comAddress;
private String comId;
public String getComId() {
	return comId;
}
public void setComId(String comId) {
	this.comId = comId;
}
public String getComEmail() {
	return comEmail;
}
public void setComEmail(String comEmail) {
	this.comEmail = comEmail;
}
public String getComWebsite() {
	return comWebsite;
}
public void setComWebsite(String comWebsite) {
	this.comWebsite = comWebsite;
}
public String getComName() {
	return comName;
}
public void setComName(String comName) {
	this.comName = comName;
}
public String getComPhno() {
	return comPhno;
}
public void setComPhno(String comPhno) {
	this.comPhno = comPhno;
}
public String getComAddress() {
	return comAddress;
}
public void setComAddress(String comAddress) {
	this.comAddress = comAddress;
}

}
