	package job1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class jobinsertutil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

public static List<job> getjob(int jid){
		
		ArrayList<job> job = new ArrayList<>();
		
		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String getDocQuery = "select * from job where jid = '"+jid+"'";
			rs = stmt.executeQuery(getDocQuery);
			
			if(rs.next()) {
				int jid1=rs.getInt(1);
				String title=rs.getString(2);
				String description=rs.getString(2);
				String start_date=rs.getString(2);
				String end_date=rs.getString(2);
				job j = new job(jid1,title,description,start_date,end_date);
				job.add(j);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return job;
	}
	
	
    public static boolean insertjob(String title, String description, String start_date, String end_date) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = dbconnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into job values (0,'"+title+"','"+description+"','"+start_date+"','"+end_date+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatejob(String jid,String title, String description, String start_date, String end_date) {
    	
    	try {
    		
    		con = dbconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update job set title='"+title+"',description='"+description+"',start_date='"+start_date+"',end_date='"+end_date+"'"
    				+ "where jid='"+jid+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<job> getjobDetails(String jid) {
    	
    	int convertedID = Integer.parseInt(jid);
    	
    	ArrayList<job> cus = new ArrayList<>();
    	
    	try {
    		
    		con = dbconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from job where jid='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int jid1 = rs.getInt(1);
    			String title= rs.getString(2);
    			String description= rs.getString(3);
    			String start_date= rs.getString(4);
    			String end_date = rs.getString(5);
    			//String password = rs.getString(6);
    			
    	job c = new job(jid1,title,description,start_date,end_date);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deletejob(String jid) {
    	
    	int convId = Integer.parseInt(jid);
    	
    	try {
    		
    		con = dbconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from job where jid='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }}

	//public static List<job> getjob(String userName) {
		// TODO Auto-generated method stub
		//return null;
	//}
    
    
    
    
    
    
    
    
    
    
    
    
    
