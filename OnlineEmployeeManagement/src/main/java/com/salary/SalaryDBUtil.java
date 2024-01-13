package com.salary;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SalaryDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stat=null;
	private static ResultSet rs=null;
	
	public static boolean insertSalary(String basic_sal,String ETF,String EPF,String OT_bonus,String other_bonus) {
	
		boolean isSuccess=false;
		double total=Salary.getTotal_salary( Double.parseDouble(basic_sal),Double.parseDouble(ETF), Double.parseDouble(EPF), Double.parseDouble(OT_bonus), Double.parseDouble(other_bonus));
		try {
		con=DBconnect.getConnection();
		stat=con.createStatement();
		String sql="insert into salary values(0,'"+basic_sal+"','"+ETF+"','"+EPF+"','"+OT_bonus+"','"+other_bonus+"','"+total+"')";
		int rs=stat.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}
		else {
			isSuccess=false;
		}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateSalary(String id,String basic_sal,String ETF,String EPF,String OT_bonus,String other_bonus,double total_salary) {
		
		try {
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="update salary set basic_sal='"+basic_sal+"',ETF='"+ETF+"',EPF='"+EPF+"',OT_bonus='"+OT_bonus+"',other_bonus='"+other_bonus+"',total_salary='"+total_salary+"'"
					+"where sid='"+id+"'";
			int rs=stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Salary> getSalaryDetails(String id){
		int convertedID=Integer.parseInt(id);
		
		ArrayList<Salary> sal=new ArrayList<Salary>();
		
		try {
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="select * from salary where sid='"+convertedID+"'";
			rs=stat.executeQuery(sql);
			
			while(rs.next()) {
				int sid=rs.getInt(1);
				double bsal=rs.getDouble(2);
				double etf=rs.getDouble(3);
				double epf=rs.getDouble(4);
				double otBonus=rs.getDouble(5);
				double other=rs.getDouble(6);
				double total=rs.getDouble(7);
				
				Salary s=new Salary(sid,bsal,etf,epf,otBonus,other,total);
				
				sal.add(s);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return sal;
	}
	
	public static boolean deleteSalary(String id) {
		
		int convertedID=Integer.parseInt(id);
		
		try {
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="delete from salary where sid='"+convertedID+"'";
			int rs=stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
