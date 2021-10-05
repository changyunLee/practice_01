package co.kr.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.myapp.model.UserVO;
import co.kr.myapp.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	public UserService service;
	
	@RequestMapping(value = "/user_join.do",method = RequestMethod.GET)
	public String joinForm(Model model,String user_id) {
		
		System.out.println("회원가입페이지 이동 ");
//		UserVO vo = service.idCheck(user_id);
		int max = service.cntMax();
		
		model.addAttribute("max", max+1);
		return"member/join";
	}
	
	@RequestMapping(value = "/user_join.do",method = RequestMethod.POST)
	public String join(UserVO user) {
		System.out.println("user = " +user);
		//System.out.println("회원가입페이지 이동 ");
	
		service.join(user);
		System.out.println(user+"회원가입완료!");
		return "redirect:login.do";
	}
	
	
	

}
