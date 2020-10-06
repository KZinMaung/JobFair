package com.project.jobfair.dao;

import java.util.ArrayList;
import java.util.List;

import com.project.jobfair.db.ApplyedStudents;
import com.project.jobfair.db.DBFactory;
import com.project.jobfair.db.comp;
import com.project.jobfair.db.totalRegisteredStds;
import com.project.jobfair.model.company;
import com.project.jobfair.model.student;

public class ApplyedStudentsDao {
private DBFactory dbFactory;
	
private final String[] columns1 = new String[] {ApplyedStudents.stuId,ApplyedStudents.stdEmail,ApplyedStudents.stdPwd,ApplyedStudents.stdFname,ApplyedStudents.stdLname,ApplyedStudents.currentLocation,ApplyedStudents.gender,ApplyedStudents.stuPhno};

	
	
	public ApplyedStudentsDao() {
		dbFactory = new DBFactory();
	}
	
	
	
	
	public List<student> readAppliedStudents(company com) {
		List<student> appliedStudents = new ArrayList<student>();
		String optionName=com.getComlist();
		List<String[]> data=null;
		
			data = dbFactory.selectObjectList(ApplyedStudents.table, columns1,"company.comName='"+optionName+"' and company.comId=studentapplylist.comId and studentapplylist.stdId=student.stuId");
			for(String[] d : data) {
				appliedStudents.add(student.parse(columns1, d));	
		}
		
		return appliedStudents;
	}
	
	
	
	public List<student> readApprovedStudents(company com) {
		List<student> approvedStudents = new ArrayList<student>();
		String optionName=com.getComlist();
		List<String[]> data=null;
		
			data = dbFactory.selectObjectList(ApplyedStudents.table, columns1,"company.comName='"+optionName+"' and company.comId=studentapplylist.comId and stdIsApproved='yes' and studentapplylist.stdId=student.stuId");
			for(String[] d : data) {
				approvedStudents.add(student.parse(columns1, d));	
		}
		
		return approvedStudents;
	}
}
