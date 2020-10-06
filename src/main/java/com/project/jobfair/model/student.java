package com.project.jobfair.model;

import com.project.jobfair.db.totalRegisteredStds;

public class student {
	public student() {
		
	}
	public student(String stuId, String stdEmail, String stdPwd, String stdFname, String stdLname,
			String currentLocation, String gender, String stuPhno) {
		super();
		this.stuId = stuId;
		this.stdEmail = stdEmail;
		this.stdPwd = stdPwd;
		this.stdFname = stdFname;
		this.stdLname = stdLname;
		this.currentLocation = currentLocation;
		this.gender = gender;
		this.stuPhno = stuPhno;
	}
	private String stuId;
	private String stdEmail;
	private String stdPwd;
	private String stdFname;
	private String stdLname;
	private String currentLocation;
	private String gender;
	private String stuPhno;
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getStdEmail() {
		return stdEmail;
	}
	public void setStdEmail(String stdEmail) {
		this.stdEmail = stdEmail;
	}
	public String getStdPwd() {
		return stdPwd;
	}
	public void setStdPwd(String stdPwd) {
		this.stdPwd = stdPwd;
	}
	public String getStdFname() {
		return stdFname;
	}
	public void setStdFname(String stdFname) {
		this.stdFname = stdFname;
	}
	public String getStdLname() {
		return stdLname;
	}
	public void setStdLname(String stdLname) {
		this.stdLname = stdLname;
	}
	public String getCurrentLocation() {
		return currentLocation;
	}
	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStuPhno() {
		return stuPhno;
	}
	public void setStuPhno(String stuPhno) {
		this.stuPhno = stuPhno;
	}
	public static student parse(String[] fields, String[] values) {
		student registeredStds= null;
		if(values != null) {
			registeredStds= new student();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
				if(fields[i].equals(totalRegisteredStds.stuId)) registeredStds.stuId = v;
				else if(fields[i].equals(totalRegisteredStds.stdEmail))  registeredStds.stdEmail=v;
				else if(fields[i].equals(totalRegisteredStds.stdPwd)) registeredStds.stdPwd = v;
				else if(fields[i].equals(totalRegisteredStds.stdFname)) registeredStds.stdFname= v;
				else if(fields[i].equals(totalRegisteredStds.stdLname)) registeredStds.stdLname = v;
				else if(fields[i].equals(totalRegisteredStds.currentLocation)) registeredStds.currentLocation = v;
				else if(fields[i].equals(totalRegisteredStds.gender)) registeredStds.gender = v;
				else if(fields[i].equals(totalRegisteredStds.stuPhno)) registeredStds.stuPhno= v;
				
			}
		}
		return registeredStds ;
	}
	
}
