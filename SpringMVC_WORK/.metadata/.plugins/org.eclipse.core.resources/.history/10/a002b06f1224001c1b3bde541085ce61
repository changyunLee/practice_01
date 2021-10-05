package org.comstudy21.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.comstudy21.dbcp.JdbcUtill;
import org.comstudy21.account.accountDTO;

public class accountDAO {
	private Connection conn ;
	private PreparedStatement pstmt ;
	private ResultSet rs ;

	private String INSERT_AC = "INSERT INTO ACCOUNT VALUES(account_seq.nextVal,?,?,?)";
	private String SELECT_ONE = "SELECT PASSWORD,BALANCE FORM ACCOUNT WHERE ACCOUNT_NO?";
	private String SELECT_LOGIN = "SELECT*FROM ACCOUNT WHERE ACCOUNT_NO=?AND PASSWORD=?";
	private String SELECT_ALL = "SELECT*FROM ACCOUNT";
	private String SELECT_1 = "SELECT*FROM ACCOUNT WHERE ACCOUNT_NO=?";
	private String UPDATE_PLUS = "UPDATE ACCOUNT SET BALANCE=BALANCE+? WHERE ACCOUNT_NO=?";
	private String UPDATE_MIN = "UPDATE ACCOUNT SET BALANCE=BALANCE-? WHERE ACCOUNT_NO=?AND PASSWORD=?";

	public List<accountDTO> selectAll(){
		System.out.println(";;;;----select ALL----;;;");
		List<accountDTO>list = new ArrayList<accountDTO>();
		conn = JdbcUtill.getConnection();
		try {
			pstmt=conn.prepareStatement(SELECT_ALL);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				String account_no = rs.getString(1);
				String password = rs.getString(2);
				String name = rs.getString(3);
				int balance  = rs.getInt(4);
				list.add(new accountDTO(account_no,password, name,balance));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtill.close(conn, pstmt, rs);
		}
		return list;
	}
	
	
	public void createAccount(accountDTO dto) {

		conn = JdbcUtill.getConnection();
		try {
			pstmt = conn.prepareStatement(INSERT_AC);
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getBalance());
			int cnt= pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("입력 성공");
			} else {
				System.out.println("입력 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtill.close(conn, pstmt, rs);
		}

	}


		
		
	public accountDTO login(accountDTO dto) {
		System.out.println("-------------::login::----------------");
		accountDTO account = null;
		conn = JdbcUtill.getConnection();
		try {
			pstmt = conn.prepareStatement(SELECT_LOGIN);
			pstmt.setString(1, dto.getAccount_no());
			pstmt.setString(2, dto.getPassword());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				account= new accountDTO();
//				account.setAccount_no(rs.getString("account_no"));
//				account.setPassword(rs.getString("password"));
//				account.setName(rs.getString("name"));				
				String account_no = rs.getString(1);
				String password = rs.getString(2);
				String name = rs.getString(3);
				int balance  = rs.getInt(4);
				
				account = new accountDTO(account_no, password, name, balance);
			}
//				System.out.println(";;;;;;;로그인 성공;;;;;;");
//			} else {
//				System.out.println(";;;;;;로그인 실패;;;;;;;");
//				conn.rollback();
//			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtill.close(conn, pstmt, rs);
		}
		return account;
	}
	
	public accountDTO findbyId(accountDTO dto) {
		System.out.println(":::deposit::::");
		//if(dto.getBalance()>0);
//		findAccount("account_no","password");
		accountDTO account = new accountDTO();
		conn = JdbcUtill.getConnection();
		try {
			pstmt = conn.prepareStatement(SELECT_1);
			pstmt.setString(1, dto.getAccount_no());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				String account_no =rs.getString(1);
				String password =rs.getString(2);
				String name =rs.getString(3);
				int balance =rs.getInt(4);
				account = new accountDTO(account_no, "", name, balance);
			}
			
		
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtill.close(conn, pstmt, rs);
		}
		return account;

	}
	public void update(accountDTO dto) {
		System.out.println(";;;;;;update;;;;;;");

		conn=JdbcUtill.getConnection();
		try {
			pstmt = conn.prepareStatement(UPDATE_PLUS);
			pstmt.setInt(1, dto.getBalance());
			pstmt.setString(2, dto.getAccount_no());
			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				dto.setBalance(dto.getBalance());
				System.out.println("입력 성공");
			} else {
				System.out.println("입력 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtill.close(conn, pstmt, rs);
		}
		
	}
	public void update2(accountDTO dto) {
		System.out.println(";;;;;;update;;;;;;");

		conn=JdbcUtill.getConnection();
		try {
			pstmt = conn.prepareStatement(UPDATE_MIN);
			pstmt.setInt(1, dto.getBalance());
			pstmt.setString(2, dto.getAccount_no());
			pstmt.setString(3, dto.getPassword());
			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("입력 성공");
			} else {
				System.out.println("입력 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtill.close(conn, pstmt, rs);
		}
		
	}
}
