package co.kr.proj;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.kr.proj.service.boardService;

@Controller
public class BoardController {

	@Autowired
	public boardService boardservice;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Model model, HttpSession session) {
//		session.setAttribute("myID", "rlqjal1234");
//		return "home";
//	}
//	
//	@RequestMapping(value="/list.do", method = RequestMethod.GET)
//	public String asd(Model model) {
//		List<UserVO> list = boardservice.selectALL();
//		model.addAttribute("list",list);
//		return "list_onlyAdmin";
//	}
//	
//	@RequestMapping(value = "/myinfo.do", method = RequestMethod.GET)
//	public String myinfo(Model model,HttpSession session) {
//		
//		List<UserVO> myinfo_list = boardservice.myinfo((String)session.getAttribute("myID"));
//		model.addAttribute("myinfo_list",myinfo_list);
//		return "myinfo";
//	}
//	
//	@RequestMapping(value = "/joinus.do", method = RequestMethod.GET)
//	public String joinus(Model model) {
//		
//		return "joinus";
//	}
//	
//	@RequestMapping(value = "/joinus.do", method = RequestMethod.POST)
//	public String joinus1(Model model,UserVO vo) {
//		
//		int latestUserNum = boardservice.getLatestUserNum();
//		vo.setUser_num(latestUserNum+1);
//		System.out.println(vo);
//		int i = boardservice.insertVO(vo);
//		
//		return "home";
//	}
//	
//	@RequestMapping(value = "/user_update.do",method = RequestMethod.GET)
//	public String user_update(Model model,HttpSession session) {
//		System.out.println(boardservice.getMyNum((String)session.getAttribute("myID")));
//		return"userUpdate";
//	}
//	
//	@RequestMapping(value = "/user_update.do", method = RequestMethod.POST)
//	public String user_update(Model model, UserVO vo, HttpSession session ) {
//		
//		int getMyNum = boardservice.getMyNum((String)session.getAttribute("myID"));
//		vo.setUser_num(getMyNum);
//		System.out.println(vo);
//		int user_update = boardservice.userUdate(vo);
//		
//		return "home";
//	}
//	
//	@RequestMapping(value = "/user_delete.do", method = RequestMethod.GET)
//	public String user_delete(Model model, HttpSession session) {
//		int getMyNum = boardservice.getMyNum((String)session.getAttribute("myID"));
//		int user_delete = boardservice.userDelete(getMyNum);
//		
//		return "home";
//	}
	
	
}
