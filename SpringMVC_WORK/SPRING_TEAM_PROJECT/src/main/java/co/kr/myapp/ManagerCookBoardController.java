package co.kr.myapp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.myapp.model.ManagerCookVO;
import co.kr.myapp.service.MangerCookService;

@Controller
public class ManagerCookBoardController {

	@Autowired
	MangerCookService service;
	
	
	
	@RequestMapping(value = "/cookB_list.do", method = RequestMethod.GET)
	public String list_get(Model model) {
		
		return "board/list";
	}

	@RequestMapping(value = "/listd.do", method = RequestMethod.GET)
	public ModelAndView list_ajax(String type,String keyword,int page) {
		ModelAndView mav = new ModelAndView("jsonView");
	
		List<ManagerCookVO> boardList = service.selectAll(type , keyword, page);
		System.out.println(boardList);
		int endPage = (int)(Math.ceil(page *1.0/10)*10);
		int startPage =endPage -9;
		if(startPage <=0) {
			startPage= 1;
		}
		int total = service.noticeTotal(type,keyword);
		int totalPage =(int)(Math.ceil(total *1.0/10));
		if(endPage > totalPage) {
			endPage= totalPage;
		}
		boolean prev =page> 1;
		boolean next =page<endPage;
			
		System.out.println(boardList);
		mav.addObject("list", boardList);
		mav.addObject("startPage",startPage);
		mav.addObject("endPage",endPage);
		mav.addObject("prev",prev);
		mav.addObject("next",next);
		return mav;
	}

	@RequestMapping(value = "/cookB_detail.do", method = RequestMethod.GET)
	public String detail_get(Model model, int c_num) {
		int cnt = service.cntUpdate(c_num);
		ManagerCookVO board = service.selectOne(c_num);

		model.addAttribute("board", board);

		return "board/detail";
	}	
	
	@RequestMapping(value = "/cookB_insert.do", method = RequestMethod.GET)
	public String insertpage(HttpSession session, Model model) {
		String user = (String) session.getAttribute("id");
		int max = service.cntMax();
		model.addAttribute("max", max+1);
		model.addAttribute("id", user);
		return "board/insert";
	}
	
	@RequestMapping(value = "/cookB_insert.do", method = RequestMethod.POST)
	public String insert(Model model, ManagerCookVO vo) {
		int c_max = service.lastcookboardnum();
		vo.setC_num(c_max+1);
		
//		System.out.println(vo);	
		service.insert(vo);
	
		return "redirect:cookB_list.do";
	}	
	
	@RequestMapping(value = "/cookB_modify.do", method = RequestMethod.GET)
	public String update(Model model, int c_num) {
		ManagerCookVO board = service.selectOne(c_num);

		model.addAttribute("board", board);
		
		return "board/update";
	}
	
	@RequestMapping(value = "/cookB_modify.do", method = RequestMethod.POST)
	public String update(Model model, ManagerCookVO vo) {
		service.update(vo);
		
		return "redirect:cookB_list.do";
	}
	
	@RequestMapping(value = "/cookB_delete.do", method = RequestMethod.GET)
	public String delete(ManagerCookVO vo) {
		System.out.println(vo);
		service.delete(vo);
		
		return "redirect:cookB_list.do";
	}
	
}
