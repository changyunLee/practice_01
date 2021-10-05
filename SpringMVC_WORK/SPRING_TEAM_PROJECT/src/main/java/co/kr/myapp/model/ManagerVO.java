package co.kr.myapp.model;


public class ManagerVO {

	private int n_num;
	private String n_title;
	private String n_content;
	private String n_date;
	private String n_writer;
	private int n_cnt;

	public ManagerVO() {
		// TODO Auto-generated constructor stub
	}

	public int getN_num() {
		return n_num;
	}

	public void setN_num(int n_num) {
		this.n_num = n_num;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public String getN_date() {
		return n_date;
	}

	public void setN_date(String n_date) {
		this.n_date = n_date;
	}

	public String getN_writer() {
		return n_writer;
	}

	public void setN_writer(String n_writer) {
		this.n_writer = n_writer;
	}

	public int getN_cnt() {
		return n_cnt;
	}

	public void setN_cnt(int n_cnt) {
		this.n_cnt = n_cnt;
	}

	public ManagerVO(int n_num, String n_title, String n_content, String n_date, String n_writer, int n_cnt) {
		// super();
		this.n_num = n_num;
		this.n_title = n_title;
		this.n_content = n_content;
		this.n_date = n_date;
		this.n_writer = n_writer;
		this.n_cnt = n_cnt;
	}

	@Override
	public String toString() {
		return "ManagerVO [n_num=" + n_num + ", n_title=" + n_title + ", n_content=" + n_content + ", n_date=" + n_date
				+ ", n_writer=" + n_writer + ", n_cnt=" + n_cnt + "]";
	}
	
	

}
