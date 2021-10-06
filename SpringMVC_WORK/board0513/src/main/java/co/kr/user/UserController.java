package co.kr.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.user.service.UserService;
import co.kr.user.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	UserService service;
	
	@RequestMapping(value = "login.do" ,method = RequestMethod.GET)
	public String login_page() {
		
		return "login";
	}
	
	@RequestMapping(value = "logout.do" ,method = RequestMethod.GET)
	public String logout(HttpSession session) {
 
		 session.invalidate();
		  
		return "redirect:login.do";
	}
	@RequestMapping(value = "loginj.do" ,method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest req, RedirectAttributes rttr,String userid, String userpass) {
		ModelAndView json =new ModelAndView("jsonView");
		
		
		HttpSession session = req.getSession();
		
		UserVO user = service.login(userid ,userpass, session);
//		
//		if(user == null) {
//			session.setAttribute("member", null);
//			rttr.addFlashAttribute("msg", false);
//		}else {
//			session.setAttribute("member", user);
//		}
//		
		json.addObject("result",user);
		
		return json;
	}
	@RequestMapping(value = "joinus.do" ,method = RequestMethod.GET)
	public String joinus_page() {
		
		return "joinus";
	}
	@RequestMapping(value = "joinusJ.do" ,method = RequestMethod.POST)
	public ModelAndView joinus_ajax(UserVO vo) {
		ModelAndView json =new ModelAndView("jsonView");
		
		int user = service.joinus(vo);
		json.addObject("result", user);
		
		return json;
	}
	@RequestMapping(value = "/userUpdate.do" ,method = RequestMethod.GET)
	public String userUpdate_page() {
		
		return "userUpdate";
	}
	@RequestMapping(value = "/userUpdate.do" ,method = RequestMethod.POST)
	public String userUpdate(UserVO vo, HttpSession session) {
		System.out.println(vo);
		service.userUpdate(vo);
		
		session.invalidate();
		
		return "redirect:login.do";
	}
	@RequestMapping(value = "/userdelete.do" ,method = RequestMethod.GET)
	public String userdelete_page() {
		
		
		
		return "userDelete";
	}
	@RequestMapping(value = "/userdeleteJ.do" ,method = RequestMethod.POST)
	public ModelAndView userdelete(UserVO vo) {
		ModelAndView json =new ModelAndView("jsonView");
		
		//int passChk = service.passCheck(vo);
		
		
		
		json.addObject("result",service.userDelete(vo));
		
		return json;
	}
}
