package co.kr.board.vo;

import java.util.Date;

public class ReplyVO {
	private int bnum;
	private int rno;
	private String content;
	private String writer;
	private String regdate;
	
	
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ReplyVO [bnum=" + bnum + ", rno=" + rno + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + "]";
	}
	
	

}
