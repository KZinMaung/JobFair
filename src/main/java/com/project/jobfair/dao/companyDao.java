package com.project.jobfair.dao;

import java.util.List;
import java.util.ArrayList;

import com.project.jobfair.db.DBFactory;
import com.project.jobfair.db.comp;
import com.project.jobfair.model.company;

public class companyDao {
private DBFactory dbFactory;
	
	private final String[] columns1 = new String[] {comp.comId,comp.comPwd,comp.comName,comp.comPhno,comp.comAddress,comp.comWebsite,comp.isApproved,comp.comPhoto,comp.comEmail};
	
	private final String[] columns2 = new String[] {comp.isApproved,comp.current};
	
	
	public companyDao() {
		dbFactory = new DBFactory();
	}

	public List<company> readCompanies() {
		List<company> comps = new ArrayList<company>();
		
		List<String[]> data = dbFactory.selectObjectList(comp.table, columns1,"isApproved='yes'and current='yes'");
		for(String[] d : data) {
			comps.add(company.parse(columns1, d));
		}
		
		return comps;
	}
	public List<company> readCompanyHistory() {
		List<company> comps = new ArrayList<company>();
		
		List<String[]> data = dbFactory.selectObjectList(comp.table, columns1,"isApproved='yes'and current='no'");
		for(String[] d : data) {
			comps.add(company.parse(columns1, d));
		}
		
		return comps;
	}
	
	public List<company> readCompaniesToApprove() {
		List<company> comps = new ArrayList<company>();
		
		List<String[]> data = dbFactory.selectObjectList(comp.table, columns1,"isApproved='no'and current='no'");
		for(String[] d : data) {
			comps.add(company.parse(columns1, d));
		}
		
		return comps;
	}
	
	
public boolean approveCompany(int comId) {
		
		String isApprovedValue="yes";
		String currentValue="yes";
		Object[] data = new Object[] {isApprovedValue,currentValue};
		return dbFactory.update(comp.table,columns2,data,"comId='"+comId+"'");
		
	}
	

}
