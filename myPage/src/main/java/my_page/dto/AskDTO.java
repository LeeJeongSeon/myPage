package my_page.dto;

import java.util.Date;

public class AskDTO {
	private int num;
	private String userid;
	private String subject;
	private String content;
	private Date ask_date;
	private String target;

	@Override
	public String toString() {
		return "AskDTO [num=" + num + ", userid=" + userid + ", subject=" + subject + ", content=" + content
				+ ", ask_date=" + ask_date + ", target=" + target + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAsk_date() {
		return ask_date;
	}

	public void setAsk_date(Date ask_date) {
		this.ask_date = ask_date;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
}
