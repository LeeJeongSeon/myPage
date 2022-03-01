package my_page.dto;

import java.util.Date;

//mypage_post - 게시글 테이블  **회원테이블의 아이디 상속** => num(게시글 번호)
public class MyPostDTO {
	private int num;
	private String userid;
	private String name;
	private String subject;
	private String content;
	private Date reg_date;
	private int readcount;
	private String ip;
	private String filename;
	private int filesize;
	private int downcount;
	private int recommendcount;
	private int commentcount;
	private String edited;

	@Override
	public String toString() {
		return "MppDTO [num=" + num + ", userid=" + userid + ", name=" + name + ", subject=" + subject + ", content="
				+ content + ", reg_date=" + reg_date + ", readcount=" + readcount + ", ip=" + ip + ", filename="
				+ filename + ", filesize=" + filesize + ", downcount=" + downcount + ", recommendcount="
				+ recommendcount + ", commentcount=" + commentcount + ", edited=" + edited + "]";
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getFilesize() {
		return filesize;
	}

	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}

	public int getDowncount() {
		return downcount;
	}

	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}

	public int getRecommendcount() {
		return recommendcount;
	}

	public void setRecommendcount(int recommendcount) {
		this.recommendcount = recommendcount;
	}

	public int getCommentcount() {
		return commentcount;
	}

	public void setCommentcount(int commentcount) {
		this.commentcount = commentcount;
	}

	public String getEdited() {
		return edited;
	}

	public void setEdited(String edited) {
		this.edited = edited;
	}
}
