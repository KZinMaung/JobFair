package com.project.jobfair.dao;

import java.util.ArrayList;
import java.util.List;

import com.project.jobfair.db.DBFactory;
import com.project.jobfair.db.totalRegisteredStds;
import com.project.jobfair.model.student;



public class totalRegisteredStdsDao {
private DBFactory dbFactory;
	
	private final String[] columns1 = new String[] {totalRegisteredStds.stuId,totalRegisteredStds.stdEmail,totalRegisteredStds.stdPwd,totalRegisteredStds.stdFname,totalRegisteredStds.stdLname,totalRegisteredStds.currentLocation,totalRegisteredStds.gender,totalRegisteredStds.stuPhno};
	
	
	public totalRegisteredStdsDao() {
		dbFactory = new DBFactory();
	}

	public List<student> readRegisteredStds() {
		List<student> registeredStds = new ArrayList<student>();
		
		List<String[]> data = dbFactory.selectObjectList(totalRegisteredStds.table, columns1,"true");
		for(String[] d : data) {
			registeredStds.add(student.parse(columns1, d));
		}
		
		return registeredStds;
	}

	
}
