package com.project.jobfair.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.project.jobfair.db.DBFactory;
import com.project.jobfair.db.comp;
import com.project.jobfair.db.eventInterface;
import com.project.jobfair.db.schedule;
import com.project.jobfair.model.Event;

public class eventDao {
	private DBFactory dbFactory;
	
	private final String[] columns1 = new String[] {eventInterface.scheduleId,eventInterface.comId,eventInterface.comName,eventInterface.sdate_time,eventInterface.location,eventInterface.event,eventInterface.status};
	private final String[] columns2 = new String[] {schedule.status};
		
		
	public eventDao() {
		dbFactory = new DBFactory();
	}
	
	public List<Event> readEvents() throws ParseException {
		List<Event> events = new ArrayList<Event>();
		
		List<String[]> data = dbFactory.selectObjectList(eventInterface.table, columns1,"schedule.comId=company.comId and company.current='yes' and schedule.status='yes'");
		for(String[] d : data) {
			System.out.println(d[3]);
			String sDate1=d[3];
			Date date1=new SimpleDateFormat("MM/dd/yyyy").parse(sDate1);
			System.out.println(sDate1+"\t"+date1);
			
			
			Date current = new Date();//currentDate
			
			if(date1.before(current)){
	            System.out.println("The date is older than current day");
	        } else {
	            System.out.println("The date is future day");
	            events.add(Event.parse(columns1, d));
	        }
			
			
			
			
		}
		
		return events;
	}
	
	
	public List<Event> readEventHistory() throws ParseException {
		List<Event> events = new ArrayList<Event>();
		
		List<String[]> data = dbFactory.selectObjectList(eventInterface.table, columns1,"schedule.comId=company.comId and company.current='yes' and schedule.status='yes'");
		for(String[] d : data) {
			System.out.println(d[3]);
			String sDate1=d[3];
			Date date1=new SimpleDateFormat("MM/dd/yyyy").parse(sDate1);
			System.out.println(sDate1+"\t"+date1);
			
			
			Date current = new Date();//currentDate
			
			if(date1.before(current)){
	            System.out.println("The date is older than current day");
	            events.add(Event.parse(columns1, d));
	        } else {
	            System.out.println("The date is future day");
	           
	        }
			
			
			
			
		}
		
		return events;
	}
	
	
	public List<Event> readRequestedSchedule() throws ParseException {
		List<Event> events = new ArrayList<Event>();
		
		List<String[]> data = dbFactory.selectObjectList(eventInterface.table, columns1,"schedule.comId=company.comId and company.current='yes' and schedule.status='no'");
		for(String[] d : data) {
			
			
	            events.add(Event.parse(columns1, d));
	        
			
			
			
			
		}
		
		return events;
	}
	


public boolean approveShedule(Integer scheduleId) {
	// TODO Auto-generated method stub
	
	String statusValue="yes";
	
	Object[] data = new Object[] {statusValue};
	return dbFactory.update(schedule.table,columns2,data,"scheduleId='"+scheduleId+"'");
}
	
	
}
