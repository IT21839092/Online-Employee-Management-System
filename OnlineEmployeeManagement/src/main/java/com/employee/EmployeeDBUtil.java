package com.employee;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class EmployeeDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stat=null;
	private static ResultSet rs=null;
	
	public static boolean validateAdmin(String username,String password) {
		
		try {
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="select username,password from admin where id=1";
			rs=stat.executeQuery(sql);
			
			if(rs.next()) {
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
	
	public static List<Employee> validate(String userName,String password){
		
		ArrayList<Employee> emp=new ArrayList<>();
		
		//validate
		
		try {
			
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="select * from profile where username='"+userName+"' and password='"+password+"'";
			rs=stat.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String gender=rs.getString(3);
				String mobile=rs.getString(4);
				String email=rs.getString(5);
				int age=rs.getInt(6);
				String quali=rs.getString(7);
				String other=rs.getString(8);
				String uname=rs.getString(9);
				String pas=rs.getString(10);
				
				Employee e=new Employee(id,name,gender,mobile,email,age,quali,other,uname,pas);
				
				emp.add(e);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return emp;
	}
	
	public static boolean insertEmployee(String name,String gender,String mobile,String email,int age,String quali,String other,String userName,String password) {
		
		boolean isSuccess=false;
		
		try {
			
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="insert into profile values (0,'"+name+"','"+gender+"','"+mobile+"','"+email+"','"+age+"','"+quali+"','"+other+"','"+userName+"','"+password+"')";
			
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
	
	public static boolean updateEmployee(String id,String name,String phone,String email,String qualification,String user,String password) {
		
		try {
			
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="update profile set name='"+name+"',phone='"+phone+"',email='"+email+"',higehstqualification='"+qualification+"',username='"+user+"',password='"+password+"' "
					+ "where id='"+id+"'";
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
	
	public static List<Employee> getEmployeeDetails(String id){
		
		int convertedID=Integer.parseInt(id);
		
		ArrayList<Employee> emp=new ArrayList<Employee>();
		
		try {
			
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="select * from profile where id='"+convertedID+"'";
			rs=stat.executeQuery(sql);
			
			while(rs.next()) {
				
				int pid=rs.getInt(1);
				String name=rs.getString(2);
				String gender=rs.getString(3);
				String mobile=rs.getString(4);
				String email=rs.getString(5);
				int age=rs.getInt(6);
				String quali=rs.getString(7);
				String other=rs.getString(8);
				String username=rs.getString(9);
				String password=rs.getString(10);
				
				Employee e=new Employee(pid,name,gender,mobile,email,age,quali,other,username,password);
				
				emp.add(e);
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return emp;
		
	}
	
	public static boolean deleteEmployee(String id) {
		
		int convID=Integer.parseInt(id);
		
		try {
			
			con=DBconnect.getConnection();
			stat=con.createStatement();
			String sql="delete from profile where id='"+convID+"'";
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
