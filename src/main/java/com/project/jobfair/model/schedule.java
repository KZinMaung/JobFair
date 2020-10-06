package com.project.jobfair.model;

public class schedule {
	
	
public schedule() {
	
}
 public schedule(String sdate_time, String location) {
		super();
		this.sdate_time = sdate_time;
		this.location = location;
	}
private String sdate_time;
 private String location;
public String getSdate_time() {
	return sdate_time;
}
public void setSdate_time(String sdate_time) {
	this.sdate_time = sdate_time;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
 
}
