package jp.routine.webstudy;
import java.io.Serializable;
public class Day implements Serializable{
	private String Dayname;
	private String morningtask;
	private String daytask;
	private String eveningtask;
	public String getDayname() {
		return Dayname;
	}
	public void setDayname(String dayname) {
		Dayname = dayname;
	}
	public String getMorningtask() {
		return morningtask;
	}
	public void setMorningtask(String morningtask) {
		this.morningtask = morningtask;
	}
	public String getDaytask() {
		return daytask;
	}
	public void setDaytask(String daytask) {
		this.daytask = daytask;
	}
	public String getEveningtask() {
		return eveningtask;
	}
	public void setEveningtask(String eveningtask) {
		this.eveningtask = eveningtask;
	}


}
