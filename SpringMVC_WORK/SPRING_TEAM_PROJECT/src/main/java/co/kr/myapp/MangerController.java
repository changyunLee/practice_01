package co.kr.myapp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.myapp.model.ManagerVO;
import co.kr.myapp.model.UserVO;
import co.kr.myapp.service.MangerService;

@Controller
public class MangerController {

	@Autowired
	MangerService service;

	@RequestMapping(value = "/manager_list.do", method = RequestMethod.GET)
	public String listPage() {

		return "manager/list";
	}

	@RequestMapping(value = "/list_ajax.do", method = RequestMethod.GET)
	public ModelAndView selectAll(String type, String keyword, int page) {

		ModelAndView json = new ModelAndView("jsonView");
		List<ManagerVO> managerlist = service.selectAll(type, keyword, page);
		int endPage = (int) (Math.ceil(page * 1.0 / 10) * 10);
		int startPage = endPage - 9;
		if (startPage <= 0) {
			startPage = 1;
		}
		int total = service.noticeTotal(type, keyword);
		int totalPage = (int) (Math.ceil(total * 1.0 / 10));
		if (endPage > totalPage) {
			endPage = totalPage;
		}

		boolean prev = page > 1;
		boolean next = page < endPage;

		json.addObject("list", managerlist);
		json.addObject("startPage", startPage);
		json.addObject("endPage", endPage);
		json.addObject("prev", prev);
		json.addObject("next", next);

		return json;

	}

	@RequestMapping(value = "/manager_insert.do", method = RequestMethod.GET)
	public String insertForm(Model model, HttpSession session,String user_id) {

//		String id = (String) session.getAttribute("user_id");
		System.out.println("공지사항 글쓰기 이동");
		String user = (String) session.getAttribute("id");
		int max = service.cntMax();
		model.addAttribute("max", max+1);
		model.addAttribute("id", user);
		
		return "manager/insert";
	}

	@RequestMapping(value = "/manager_insert.do", method = RequestMethod.POST)
	public String insert(Model model, ManagerVO mvo) {

		service.insert(mvo);

		return "redirect:manager_list.do";

	}

	@RequestMapping(value = "/manager_detail.do", method = RequestMethod.GET)
	public String getBoard(Model model, int n_num) {
		// logger.info("글상세보기");

		service.cntUpdate(n_num);
		ManagerVO manager = service.detail(n_num);
		model.addAttribute("manager", manager);

		return "manager/detail";
	}

	// 수정페이지이동
	@RequestMapping(value = "/manager_update.do", method = RequestMethod.GET)
	public String updateForm(Model model, int n_num) {

		ManagerVO manager = service.detail(n_num);

		model.addAttribute("manager", manager);
		System.out.println("수정페이지 이동");

		// return vo;
		return "manager/update";
	}

	// 수정
	@RequestMapping(value = "/manager_update.do", method = RequestMethod.POST)
	public String update(Model model, ManagerVO mvo, int n_num) {

		service.update(mvo);
		// return vo;
		return "redirect:manager_list.do";

	}

	// 삭제
	@RequestMapping(value = "/manager_delete.do", method = RequestMethod.GET)
	public String deleteForm(Model model, int n_num) {
		ManagerVO manager = service.detail(n_num);

		model.addAttribute("manager", manager);
		System.out.println("공지사항 삭제페이지 이동 ");
		
		return "manager/delete";
	}

	@RequestMapping(value = "/manager_delete.do", method = RequestMethod.POST)
	public String delete(Model model, ManagerVO mvo) {

		service.delete(mvo);
		// return vo;
		return "redirect:manager_list.do";

	}

}
