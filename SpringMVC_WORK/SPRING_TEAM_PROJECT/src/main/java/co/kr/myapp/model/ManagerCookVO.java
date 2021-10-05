package co.kr.myapp.model;

public class ManagerCookVO {

	private int c_num;
	private String c_title;
	private String c_content;
	private String c_date;
	private String c_writer;
	private int c_cnt;

	public ManagerCookVO() {
	}
	
	public ManagerCookVO(int c_num, String c_title, String c_content, String c_date, String c_writer, int c_cnt) {
		this.c_num = c_num;
		this.c_title = c_title;
		this.c_content = c_content;
		this.c_date = c_date;
		this.c_writer = c_writer;
		this.c_cnt = c_cnt;
	}

	public int getC_num() {
		return c_num;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	public String getC_writer() {
		return c_writer;
	}

	public void setC_writer(String c_writer) {
		this.c_writer = c_writer;
	}

	public int getC_cnt() {
		return c_cnt;
	}

	public void setC_cnt(int c_cnt) {
		this.c_cnt = c_cnt;
	}

	@Override
	public String toString() {
		return "ManagerVO [c_num=" + c_num + ", c_title=" + c_title + ", c_content=" + c_content + ", c_date=" + c_date
				+ ", c_writer=" + c_writer + ", c_cnt=" + c_cnt + "]";
	}

	
	
	

}
