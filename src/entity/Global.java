package entity;

import java.sql.Date;

public class Global {
	
	Date date;
	String con;
	String rec;
	String death;
	
	
	public Global() {
		super();
	}


	public Global(Date date, String con, String rec, String death) {
		super();
		this.date = date;
		this.con = con;
		this.rec = rec;
		this.death = death;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getCon() {
		return con;
	}


	public void setCon(String con) {
		this.con = con;
	}


	public String getRec() {
		return rec;
	}


	public void setRec(String rec) {
		this.rec = rec;
	}


	public String getDeath() {
		return death;
	}


	public void setDeath(String death) {
		this.death = death;
	}


	@Override
	public String toString() {
		return "Global [date=" + date + ", con=" + con + ", rec=" + rec + ", death=" + death + "]";
	}
	
	

}
