package org.comstudy21.account;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AccountController extends HttpServlet {

	private static final long serialVersionUID = -7522617273151848437L;
	//Map<String, Integer> map = new HashMap<String, Integer>();
	List<Integer> list = new ArrayList<>();
	List<Integer> list2 = new ArrayList<>();

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(":::doget:::");
		String filePath = (String) req.getAttribute("filePath");
		String viewName = "";
		HttpSession session = req.getSession();
		
		//String account_no = req.getParameter("account_no");
		//String password = req.getParameter("password");
		//String name = req.getParameter("name");

		if ("/list_menu.do".equals(filePath)) {//리스트 메뉴
			viewName = "/WEB-INF/views/board/list_menu.jsp";
		} else if ("/login.do".equals(filePath)) {
			viewName = "/WEB-INF/views/board/login.jsp";
		} else if ("/logout.do".equals(filePath)) {
			session.invalidate();
			viewName = "/WEB-INF/views/board/login.jsp";
		} else if ("/main.do".equals(filePath)) {
			viewName = "/WEB-INF/views/board/main.jsp";
		} else if ("/withdraw.do".equals(filePath)) {//출금
			viewName = "/WEB-INF/views/board/withdraw.jsp";
		} else if ("/account_input.do".equals(filePath)) {//회원가입
			viewName = "/WEB-INF/views/board/account_create.jsp";
		} else if ("/deposit.do".equals(filePath)) {//입금 페이지
//			accountDTO account = dao.findById(accountDto);
//			req.setAttribute("account", account);
			viewName = "/WEB-INF/views/board/deposit.jsp";
		} else if ("/myaccount.do".equals(filePath)) {//계좌정보페이지
			viewName = "/WEB-INF/views/board/myaccount.jsp";
			//int balance = Integer.parseInt(req.getParameter("balance"));
			//accountDTO account =dao.findbyId(new accountDTO(account_no, "", name, balance));
			//req.setAttribute("account", account);
			//System.out.println(account);
		} else if ("/inout.do".equals(filePath)) {
			req.setAttribute("list", list);
			req.setAttribute("list2", list2);
			viewName = "/WEB-INF/views/board/inout.jsp";
		}
		RequestDispatcher view = req.getRequestDispatcher(viewName);
		view.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("::::dopost::::");
		//List<accountDTO> list = new ArrayList<accountDTO>();
		String filePath = (String) req.getAttribute("filePath");
		HttpSession session = req.getSession();
		
		String account_no = req.getParameter("account_no");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		int balance = 0;

		if (req.getParameter("balance") != null) {
			balance = Integer.parseInt(req.getParameter("balance"));
		}

		accountDAO dao = new accountDAO();
		accountDTO dto = new accountDTO(account_no, password, name, balance);
		//accountDTO dto2 = new accountDTO(account_no, password, "", 0);

		if ("/input.do".equals(filePath)) {
			dao.createAccount(dto);
			req.setAttribute("accountNO", dto.getAccount_no());		
			resp.sendRedirect("login.do");
		} else if ("/login_action.do".equals(filePath)) {
			accountDTO account = dao.login(dto);
			// System.out.println(account);
			if (account == null) {
				System.out.println("로그인 실패");
				
			} else {
				session.setAttribute("account_no", account.getAccount_no());
				session.setAttribute("password", account.getPassword());
				session.setAttribute("name", account.getName());
				session.setAttribute("balance", account.getBalance());
				
				System.out.println("로그인성공");
				resp.sendRedirect("main.do");
			}
		} else if ("/deposit.do".equals(filePath)) {	
			dao.update(dto);
			int i = (int)session.getAttribute("balance");
			int j = dto.getBalance();
			int sumA= i+j;
			if(j>0) {
				System.out.println("입금 성공");
				list.add(dto.getBalance());
				req.setAttribute("list", list);
				session.setAttribute("balance", sumA);					
			}else {
				System.out.println("입금 실패 ");
			}resp.sendRedirect("main.do");
			//session.setAttribute("inmoney", j);
			//System.out.println(j);
			//list3.add(i+j);
			//req.setAttribute("list3", list3);
			//session.setAttribute("deposit", dto.getBalance());

		} else if ("/withdraw.do".equals(filePath)) {
			dao.update2(dto);
			int i = (int)session.getAttribute("balance");
			int j = dto.getBalance();
			int sumB= i-j;
			if(sumB<0) {
				System.out.println(":::::출금 실패::::");
			}else {
				System.out.println("::::출금 성공::::");
				list2.add(dto.getBalance());
				req.setAttribute("list2", list2);
				session.setAttribute("balance", sumB);

			}
			resp.sendRedirect("main.do");
			//session.setAttribute("deposit", dto.getBalance());
		}
	}
}
