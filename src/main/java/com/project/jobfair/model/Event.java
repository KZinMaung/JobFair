package com.project.jobfair.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.project.jobfair.db.eventInterface;
import com.project.jobfair.db.totalRegisteredStds;

public class Event {
	public Event(String scheduleId, String comId, String comName, String sdate_time, String location, String event,
			String status) {
		super();
		this.scheduleId = scheduleId;
		this.comId = comId;
		this.comName = comName;
		this.sdate_time = sdate_time;
		this.location = location;
		this.event = event;
		this.status = status;
	}
	public Event() {
		
	}

private String scheduleId;
private String comId;
private String comName;
private String sdate_time;
private String location;
private String event;
private String status;
public String getScheduleId() {
	return scheduleId;
}
public void setScheduleId(String scheduleId) {
	this.scheduleId = scheduleId;
}
public String getComId() {
	return comId;
}
public void setComId(String comId) {
	this.comId = comId;
}
public String getComName() {
	return comName;
}
public void setComName(String comName) {
	this.comName = comName;
}
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
public String getEvent() {
	return event;
}
public void setEvent(String event) {
	this.event = event;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public static Event parse(String[] fields, String[] values) {
	Event events= null;
	if(values != null) {
		events= new Event();
		for(int i=0; i<fields.length; i++) {
			String v = values[i];
			if(fields[i].equals(eventInterface.scheduleId)) events.scheduleId = v;
			else if(fields[i].equals(eventInterface.comId))  events.comId=v;
			else if(fields[i].equals(eventInterface.comName)) events.comName = v;
			else if(fields[i].equals(eventInterface.sdate_time)) events.sdate_time=v;
			else if(fields[i].equals(eventInterface.location)) events.location = v;
			else if(fields[i].equals(eventInterface.event)) events.event = v;
			else if(fields[i].equals(eventInterface.status)) events.status = v;
			
			
		}
	}
	return events;
}

}
