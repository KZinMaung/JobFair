package com.project.jobfair.model;

import com.project.jobfair.db.comp;

public class company {
public company() {
		
	}
	
	public company(String comName, String comPwd, String comPhno, String comAddress, String comWebsite,
			String isApproved, String comPhoto, String comEmail) {
		super();
		this.comName = comName;
		this.comPwd = comPwd;
		this.comPhno = comPhno;
		this.comAddress = comAddress;
		this.comWebsite = comWebsite;
		this.isApproved = isApproved;
		this.comPhoto = comPhoto;
		this.comEmail = comEmail;
	}

	private int comId;
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getComPwd() {
		return comPwd;
	}
	public void setComPwd(String comPwd) {
		this.comPwd = comPwd;
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
	public String getComWebsite() {
		return comWebsite;
	}
	public void setComWebsite(String comWebsite) {
		this.comWebsite = comWebsite;
	}
	public String getIsApproved() {
		return isApproved;
	}
	public void setIsApproved(String isApproved) {
		this.isApproved = isApproved;
	}
	public String getComPhoto() {
		return comPhoto;
	}
	public void setComPhoto(String comPhoto) {
		this.comPhoto = comPhoto;
	}
	public String getComEmail() {
		return comEmail;
	}
	public void setComEmail(String comEmail) {
		this.comEmail = comEmail;
	}
	
	public static company parse(String[] fields, String[] values) {
		company c= null;
		if(values != null) {
			c= new company();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
				if(fields[i].equals(comp.comId)) c.comId = Integer.parseInt(v.trim());
				else if(fields[i].equals(comp.comPwd)) c.comPwd =v;
				else if(fields[i].equals(comp.comName)) c.comName = v;
				else if(fields[i].equals(comp.comPhno)) c.comPhno= v;
				else if(fields[i].equals(comp.comAddress)) c.comAddress = v;
				else if(fields[i].equals(comp.comWebsite)) c.comWebsite = v;
				else if(fields[i].equals(comp.isApproved)) c.isApproved = v;
				else if(fields[i].equals(comp.comPhoto)) c.comPhoto= v;
				else if(fields[i].equals(comp.comEmail)) c.comEmail= v;
			}
		}
		return c;
	}
    private String comlist;
	private String comName;
	private String comPwd;
	private String comPhno;
	private String comAddress;
	private String comWebsite;
	private String isApproved;
	private String comPhoto;
	private String comEmail;
	public String getComlist() {
		return comlist;
	}

	public void setComlist(String comlist) {
		this.comlist = comlist;
	}

}
