package com.employee;

public class Employee {
	private int pid;
	private String name;
	private String gender;
	private String mobile;
	private String email;
	private int age;
	private String quali;
	private String other;
	private String userName;
	private String passsword;
	
	public Employee(int id,String name, String gender, String mobile, String email, int age,String quali, String other, String userName,
			String passsword) {
		super();
		this.pid=id;
		this.name = name;
		this.gender = gender;
		this.mobile = mobile;
		this.email = email;
		this.age = age;
		this.quali=quali;
		this.other=other;
		this.userName = userName;
		this.passsword = passsword;
	}

	public String getQuali() {
		return quali;
	}

	public String getOther() {
		return other;
	}

	public int getPid() {
		return pid;
	}

	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}

	public String getMobile() {
		return mobile;
	}

	public String getEmail() {
		return email;
	}

	public int getAge() {
		return age;
	}

	public String getUserName() {
		return userName;
	}

	public String getPasssword() {
		return passsword;
	}
	
}
