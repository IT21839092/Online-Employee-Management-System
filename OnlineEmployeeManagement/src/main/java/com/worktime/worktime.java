package com.worktime;

public class worktime {
   private int wid;
   private int defaulthours;
   private int workinghours;
   private int OThours;
   private double OTbonuses;
   
   
   
public worktime(int wid, int defaulthours,int workinghours, int oThours, double oTbonuses) {
	
	this.wid = wid;
	this.defaulthours = defaulthours;
	this.workinghours = workinghours;
	this.OThours = oThours;
	this.OTbonuses = oTbonuses;
}

public int getwid() {
	return wid;
}

public int getdefaulthours() {
	return defaulthours;
}

public int getworkinghours() {
	return workinghours;
}


public int getOThours() {
	return OThours;
}


public double getOTbonuses() {
	return OTbonuses;
}

   
}
