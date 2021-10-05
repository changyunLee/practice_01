package co.kr.login;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.login.service.UuserService;
import co.kr.login.web.UserVO;
import co.kr.myapp.model.ManagerCookVO;
import co.kr.notice.web.NoticeVO;

@Controller
public class Uuser_Controller {
	
	@Autowired
	public UuserService service;
	//---------------------------로그인-------------------------------
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/login_ajax.do", method = RequestMethod.POST)
	public ModelAndView login_ajax(String user_id,String user_pw , HttpSession session) {
	ModelAndView json = new ModelAndView("jsonView");
	json.addObject("result",service.login(user_id,user_pw ,session));
	return json;
	}
	//---------------------------유저 홈-------------------------------
	@RequestMapping(value = "/user_home.do", method = RequestMethod.GET)
	public String user_home() {
		
		return "user/home/home";
	}
	
	//---------------------------로그 아웃-------------------------------
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	//---------------------------요리 홈페이지-------------------------------
	@RequestMapping(value = "/cookList.do", method = RequestMethod.GET)
	public String cookList() {
		return "user/cook/list/list";
	}
	@RequestMapping(value = "/cook_list.do",method = RequestMethod.GET)
	public ModelAndView cook_ajax(int page, String type, String keyword) {
		ModelAndView json = new ModelAndView("jsonView");
		List<ManagerCookVO> list = service.cookShow(page,type,keyword);
		int endPage = (int)(Math.ceil(page*1.0/10)*10);
		int startPage = endPage-9;
		if(startPage <=0 ) {
			startPage = 1;
		}
		int total = service.cookTotal(type,keyword);
		int totalPage = (int)(Math.ceil(total*1.0/10));
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		boolean prev = page > 1;
		boolean next = page < endPage;
		
		json.addObject("list", list);
		json.addObject("startPage", startPage);
		json.addObject("endPage", endPage);
		json.addObject("prev", prev);
		json.addObject("next", next);
		return json;
	}
	
	//---------------------------공지사항 홈페이지-------------------------------
	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public String noticeList() {
		return "user/notice/list/list";
	}
	@RequestMapping(value = "/notice_list.do",method = RequestMethod.GET)
	public ModelAndView notice_ajax(int page, String type, String keyword) {
		ModelAndView json = new ModelAndView("jsonView");
		List<ManagerCookVO> list = service.noticeShow(page,type,keyword);
		int endPage = (int)(Math.ceil(page*1.0/10)*10);
		int startPage = endPage-9;
		if(startPage <=0 ) {
			startPage = 1;
		}
		int total = service.noticeTotal(type,keyword);
		int totalPage = (int)(Math.ceil(total*1.0/10));
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		boolean prev = page > 1;
		boolean next = page < endPage;
		
		json.addObject("list", list);
		json.addObject("startPage", startPage);
		json.addObject("endPage", endPage);
		json.addObject("prev", prev);
		json.addObject("next", next);
		return json;
	}
	//---------------------------요리 상세 홈페이지-------------------------------
	@RequestMapping(value = "/cookDetail.do", method = RequestMethod.GET)
	public String cookDetail(int c_num,Model model , HttpSession session) {
		ManagerCookVO vo = service.cookDetail(c_num);
		String user = (String) session.getAttribute("id");
		vo.setC_cnt(vo.getC_cnt()+1);
		service.cookCntUP(vo);
		
		model.addAttribute("id",user);
		model.addAttribute("vo", vo);
		
		return "user/cook/detail/detail";
	}
	
	//---------------------------공지 상세 홈페이지-------------------------------
	@RequestMapping(value = "/noticeDetail.do", method = RequestMethod.GET)
	public String noticeDetail(int n_num,Model model) {
		NoticeVO vo = service.noticeDetail(n_num);
		vo.setN_cnt(vo.getN_cnt()+1);
		service.noticeCntUP(vo);
		
		model.addAttribute("vo", vo);
		return "user/notice/detail/detail";
	}
	//------------------------요리 리스트 추가 페이지----------------------------------
		@RequestMapping(value = "/cookInsert.do", method = RequestMethod.GET)
		public String userInsert(ManagerCookVO vo,Model model,HttpSession session) {
			String user = (String) session.getAttribute("id");
			int max = service.cntMax();
			model.addAttribute("max", max+1);
			model.addAttribute("id", user);
			return "user/cook/insert/insert";
		}
		
		//------------------------요리리스트 추가작성 페이지--------------------------------
		@RequestMapping(value = "/cookInsert.do", method = RequestMethod.POST)
		public String userInsert_post(ManagerCookVO vo) {
			service.insert(vo);
			
			return "redirect:cookList.do";
		}
		
		//------------------------요리리스트 수정 페이지-------------------------------
		@RequestMapping(value = "/cookUpdate.do", method = RequestMethod.GET)
		public String userUpdate(Model model, int c_num) {
			ManagerCookVO vo = service.cookDetail(c_num);
			
			model.addAttribute("vo", vo);
			
			return "user/cook/update/update";
		}
		
		//-----------------------요리리스트 수정 작성페이지----------------------------
		@RequestMapping(value = "/cookUpdate.do", method = RequestMethod.POST)
		public String userUpdate_post(ManagerCookVO vo) {
			
			service.update(vo);
			
			return "redirect:cookList.do";
		}
		
		//-----------------------요리리스트 삭제 페이지-------------------------------
		@RequestMapping(value = "/cookDelete.do", method = RequestMethod.GET)
		public String userDelete(Model model, int c_num) {
			
			service.delete(c_num);
			
			return "redirect:cookList.do";
		}
		//-----------------------회원 정보 페이지-------------------------------
		@RequestMapping(value = "/user.do", method = RequestMethod.GET)
		public String home(Model model, HttpSession session) {
			
			return "user/user/home";
		}
		@RequestMapping(value = "/user_ajax.do", method = RequestMethod.GET)
		public ModelAndView home_ajax(HttpSession session) {
			ModelAndView json = new ModelAndView("jsonView");
			String user = (String) session.getAttribute("id");
			
			json.addObject("id", user);
			return json;
		}
		//-----------------------회원 전체 리스트-------------------------------
		@RequestMapping(value="/user_list.do", method = RequestMethod.GET)
		public String asd(Model model) {
			
			return "user/user/list_onlyAdmin";
		}
		@RequestMapping(value = "/user_list_ajax.do", method = RequestMethod.GET)
		public ModelAndView userList_ajax(Model model,int page, String type, String keyword) {
			ModelAndView json = new ModelAndView("jsonView");
			List<UserVO> list = service.selectALL(page,type,keyword);
			int endPage = (int)(Math.ceil(page/10.0))*10;
			int startPage = endPage - 9;
			if(startPage <= 0) {
				startPage = 1;
			}
			int total = service.userTotal(type,keyword);
			int totalPage = (int)Math.ceil((total*1.0/10));
			if(endPage>totalPage) {
				endPage = totalPage;
			}
			boolean prev = page > 1;
			boolean next = page < endPage;
			
			json.addObject("list", list);
			json.addObject("endPage", endPage);
			json.addObject("startPage", startPage);
			json.addObject("prev", prev);
			json.addObject("next", next);
			return json;
		}
		//-----------------------회원 정보 삭제-------------------------------
		@RequestMapping(value = "/user_List_delete.do", method = RequestMethod.GET)
		public String user_list_delete(String user_id) {
			service.user_delete(user_id);
			return "redirect:user_list.do";
		}		
		//-----------------------회원 정보 수정-------------------------------
		@RequestMapping(value = "/user_modify.do", method = RequestMethod.GET)
		public String user_list_modify(Model model, String user_id) {
			UserVO vo = service.userDetail(user_id);
			model.addAttribute("vo", vo);
			return "user/user/userModify";
		}
		@RequestMapping(value = "/user_modify.do", method = RequestMethod.POST)
		public String user_list_update(UserVO vo) {
			service.user_modify(vo);
			
			return "redirect:user_list.do";
		}
		
		
		//-----------------------회원 정보 확인 리스트-------------------------------
		@RequestMapping(value = "/user_myinfo.do", method = RequestMethod.GET)
		public String myinfo(Model model,HttpSession session,String user_id) {
			UserVO vo = service.userDetail(user_id);
			String user = (String) session.getAttribute("id");
			model.addAttribute("id",user);
			model.addAttribute("vo", vo);
			return "user/user/myinfo";
		}		
		//------------------------회원 정보 수정----------------------------------
		@RequestMapping(value = "/user_update.do",method = RequestMethod.GET)
		public String user_update(Model model,HttpSession session,String user_id) {
			UserVO vo = service.userDetail(user_id);
			String user = (String) session.getAttribute("id");
			model.addAttribute("id",user);
			model.addAttribute("vo", vo);
			return"user/user/userUpdate";
		}
		@RequestMapping(value = "/user_update.do", method = RequestMethod.POST)
		public String user_update(Model model, UserVO vo, HttpSession session ) {
			
			service.userUdate(vo);
			
			return "user/user/home";
		}

		//------------------------회원 삭제 페이지----------------------------------
		@RequestMapping(value = "/user_delete.do", method = RequestMethod.GET)
		public String user_delete(Model model, String user_id) {

			service.userDelete(user_id);			
			return "redirect:login.do";
		}
}
