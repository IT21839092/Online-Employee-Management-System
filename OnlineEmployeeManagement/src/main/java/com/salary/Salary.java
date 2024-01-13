package com.salary;

public class Salary {
	private static int sid;
	private static double basic_sal;
	private static double ETF;
	private static double EPF;
	private static double OT_bonus;
	private static double other_bonus;
	private  static double total_salary;
	
	public Salary(int sid, double basic_sal, double eTF, double ePF, double oT_bonus, double other_bonus,double total_salary) {
		super();
		Salary.sid = sid;
		Salary.basic_sal = basic_sal;
		Salary.ETF = eTF;
		Salary.EPF = ePF;
		Salary.OT_bonus = oT_bonus;
		Salary.other_bonus = other_bonus;
		Salary.total_salary = total_salary;
	}

	public static double getTotal_salary(double basic_sal, double ETF, double EPF, double OT_bonus, double other_bonus) {
		total_salary=basic_sal+ETF+EPF+OT_bonus+other_bonus;
		
		return total_salary;
	}

	public void setTotal_salary(double total_salary) {
		Salary.total_salary = total_salary;
	}

	public static int getSid() {
		return sid;
	}

	public static double getBasic_sal() {
		return basic_sal;
	}

	public static double getETF() {
		return ETF;
	}

	public static double getEPF() {
		return EPF;
	}

	public static double getOT_bonus() {
		return OT_bonus;
	}

	public static double getOther_bonus() {
		return other_bonus;
	}
	
	public static void printSlip() {
		
	}
	
}
