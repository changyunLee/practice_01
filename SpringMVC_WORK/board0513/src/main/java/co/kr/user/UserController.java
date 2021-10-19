package co.kr.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		if(service.joinus(vo)>0) {
			json.addObject("msg", "회원가입 성공");
			json.addObject("result", "1");
		}else {
			json.addObject("msg", "이미 등록된 아이디입니다");
			json.addObject("reuslt", "2");
		}
		
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
		

		json.addObject("result",service.userDelete(vo));
		
		return json;
	}
	@GetMapping("/test")
	public String posttest(@RequestParam(name="userid")String userid,Model model,HttpSession session) {
		System.out.println("\n\n\n\n\n");
		System.out.println("userid =="+userid);
		//model.addAttribute("userid", userid );
		session.setAttribute("ssID", userid);
		
		return userid;
	}
	@RequestMapping(value="/kakaoLogin.do",method = RequestMethod.POST)
	public ModelAndView kakaoLogin(String userid, HttpSession session ) {
		ModelAndView json = new ModelAndView("jsonView");
		
	    json.addObject("result",service.idCheck(userid));
		
		return json;
	}
	@RequestMapping(value = "slogin.do" ,method = RequestMethod.GET)
	public String slogin_page() {
		
		return "socialLogin";
	}
		
	}

