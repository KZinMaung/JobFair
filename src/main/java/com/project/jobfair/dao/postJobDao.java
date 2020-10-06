package com.project.jobfair.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.Statement;

public class postJobDao {
	public int pJob(String jobTitle,int noOfOpening,String salary,String requirement,String description ) {
		// postJob job=new postJob();
				int result=0;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobfair","root","root");
				Statement st=con.createStatement();

				String sql="insert into job(jobTitle,noOfOpening,salary,requirement,description) values('"+jobTitle+"','"+noOfOpening+"','"+salary+"','"+requirement+"','"+description+"')";
				result=st.executeUpdate(sql);
				
				
				con.close();
				
				
				
				
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return result;
		}
}
