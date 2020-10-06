package com.project.jobfair.model;

public class studentapplylist {
	public studentapplylist() {
		
	}
public studentapplylist(String comId, String stdId, String cvform, String stdIsApproved) {
		super();
		this.comId = comId;
		this.stdId = stdId;
		this.cvform = cvform;
		this.stdIsApproved = stdIsApproved;
	}
private String comId;
private String stdId;
private String cvform;
private String stdIsApproved;
public String getComId() {
	return comId;
}
public void setComId(String comId) {
	this.comId = comId;
}
public String getStdId() {
	return stdId;
}
public void setStdId(String stdId) {
	this.stdId = stdId;
}
public String getCvform() {
	return cvform;
}
public void setCvform(String cvform) {
	this.cvform = cvform;
}
public String getStdIsApproved() {
	return stdIsApproved;
}
public void setStdIsApproved(String stdIsApproved) {
	this.stdIsApproved = stdIsApproved;
}
}
