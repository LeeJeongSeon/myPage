package my_page.dto;
//mypage_member - 회원 테이블 => userid(아이디)
public class MyMemberDTO {
	private String userid;
	private String passwd;
	private String name;
	private String email;
	private String introduce;
	private boolean admin;

	@Override
	public String toString() {
		return "MpmDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", email=" + email
				+ ", introduce=" + introduce + ", admin=" + admin + "]";
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public boolean getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		if(admin.equals("true")) {
			this.admin=true;
		}else {
			this.admin=false;
		}
	}
}
