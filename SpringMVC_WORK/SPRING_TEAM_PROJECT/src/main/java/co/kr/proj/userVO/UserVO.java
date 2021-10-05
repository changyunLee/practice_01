package co.kr.proj.userVO;



public class UserVO {
	
	int user_num;
	String user_id;
	String user_pw;
	String user_name;
	int user_age;
	String user_email;
	
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public UserVO(int user_num, String user_id, String user_pw, String user_name, int user_age, String user_email) {

		this.user_num = user_num;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_age = user_age;
		this.user_email = user_email;
	}
	
	public UserVO() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserVO [user_num=" + user_num + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_age=" + user_age + ", user_email=" + user_email + "]";
	}

}
