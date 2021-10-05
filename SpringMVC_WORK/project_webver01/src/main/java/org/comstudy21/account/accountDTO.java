package org.comstudy21.account;

import java.util.Objects;

public class accountDTO {
	private String account_no;
	private String password;
	private String name;
	private int balance;
	
	public accountDTO() {
		this("","","",0);
	}

	public accountDTO(String account_no, String password, String name, int balance) {
	
	this.account_no=account_no;
	this.password=password;
	this.name=name;
	this.balance=balance;
	}

	public String getAccount_no() {
		return account_no;
	}

	@Override
	public int hashCode() {
		return Objects.hash(account_no);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		accountDTO other = (accountDTO) obj;
		return account_no == other.account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "accountDTO [account_no=" + account_no + ", password=" + password + ", name=" + name + ", balance="
				+ balance + "]";
	}
	
}
