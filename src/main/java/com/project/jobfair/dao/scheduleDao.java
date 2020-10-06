package com.project.jobfair.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class scheduleDao {
	public int postSchedule(String sdate_time,String location ) {
		
				int result=0;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobfair","root","root");
				Statement st=con.createStatement();

				String sql="insert into schedule(location,sdate_time) values('"+location+"','"+sdate_time+"')";
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
