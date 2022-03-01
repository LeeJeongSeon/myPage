package my_page.dto;

import java.util.Date;

//post_comment - 댓글 테이블  **회원테이블의 아이디 상속 / 게시글 테이블의 게시글번호 상속** => num(댓글번호)
public class PostCommentDTO {
	private int num;
	private String userid;
	private String name;
	private String content;
	private int post_num;
	private Date reg_date;
	private int recommendcount;
	private String edited;

	@Override
	public String toString() {
		return "PcDTO [num=" + num + ", userid=" + userid + ", name=" + name + ", content=" + content + ", post_num="
				+ post_num + ", reg_date=" + reg_date + ", recommendcount=" + recommendcount + ", edited=" + edited + "]";
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getRecommendcount() {
		return recommendcount;
	}

	public void setRecommendcount(int recommendcount) {
		this.recommendcount = recommendcount;
	}

	public String getEdited() {
		return edited;
	}

	public void setEdited(String edited) {
		this.edited = edited;
	}
}
