package dto;

import java.util.Date;

public class GlobalDTO {
	
	Date date;
	String con;
	String rec;
	String death;
	
	
	public GlobalDTO() {
		
	}


	public GlobalDTO(Date date, String con, String rec, String death) {
		
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
		return "GlobalDTO [date=" + date + ", con=" + con + ", rec=" + rec + ", death=" + death + "]";
	}
	
	

}
