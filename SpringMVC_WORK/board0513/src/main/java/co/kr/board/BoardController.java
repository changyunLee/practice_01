package co.kr.board;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.board.service.BoardService;
import co.kr.board.vo.BoardVO;
import co.kr.board.vo.ReplyVO;

@Controller
public class BoardController {

	@Autowired
	public BoardService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home() {

		System.out.println("게시판 홈...");

		return "login";

	}

	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String boardHome() {

		System.out.println("게시판 홈...");

		return "home";

	}

	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public ModelAndView boardList(int page, String type, String keyword) {

		// 이름을 jsonView
		ModelAndView json = new ModelAndView("jsonView");

		List<BoardVO> list = service.list(page, type, keyword);
		// 날짜형식 맞춰주기
		SimpleDateFormat simple = new SimpleDateFormat("yyyy년 MM월 dd일");
		Date date = new Date();

		for (int i = 0; i < list.size(); i++) {
			list.get(i).setBdate(simple.format(date));
		}

		// 소수점까지 나오기위해 1.0을곱한다
		// 끝페이지
		int endPage = (int) (Math.ceil(page * 1.0 / 5) * 5);

		// 처음
		int startPage = endPage - 4;

		if (startPage <= 0) {
			startPage = 1;
		}

		// 총 게시글 갯수
		int total = service.total();

		// 전체페이지
		int totalPage = (int) Math.ceil(total * 1.0 / 10);

		if (endPage > totalPage) {
			endPage = totalPage;
		}
		// 이전
		boolean prev = page > 1;
		// 다음
		boolean next = page < endPage;

		json.addObject("list", list);
		json.addObject("endPage", endPage);
		json.addObject("startPage", startPage);
		json.addObject("prev", prev);
		json.addObject("next", next);

		return json;

	}

	@RequestMapping(value = "/insert.do", method = RequestMethod.GET)
	public String insert_page(Model model) {
		
		int max = service.cntmax();
		
		model.addAttribute("max",max+1);
		
		return "insert";
	}

	@RequestMapping(value = "insertj.do", method = RequestMethod.POST)
	public ModelAndView insert_ajax(BoardVO dto) {

		ModelAndView json = new ModelAndView("jsonView");

		json.addObject("result", service.insert(dto));
		
		return json;
	}

	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String detail_page(int bnum, Model model,BoardVO vo) {
		
		
		int cnt = service.count(bnum);
		BoardVO board = service.detail(bnum);
		model.addAttribute("board", board);

		List<ReplyVO> replyList = service.readReply(vo.getBnum());	
		SimpleDateFormat simple = new SimpleDateFormat("yyyy년 MM월 dd일");
		Date date = new Date();
		for (int i = 0; i < replyList.size(); i++) {
			replyList.get(i).setRegdate(simple.format(date));
			}
		
		model.addAttribute("replyList",replyList);
		
		
		return "detail";
	}
	@RequestMapping(value = "reply.do", method = RequestMethod.POST)
	public ModelAndView inputReply(ReplyVO dto) {
		
		ModelAndView json = new ModelAndView("jsonView");
		
		json.addObject("result", service.writereply(dto));
	
		
		return json;
	}

	@RequestMapping(value = "/update.do", method = RequestMethod.GET)
	public String update_page(int bnum, Model model) {
		BoardVO board = service.detail(bnum);
		model.addAttribute("board", board);

		return "update";
	}

	@RequestMapping(value = "/updatej.do", method = RequestMethod.POST)
	public ModelAndView update(BoardVO dto) {
		ModelAndView json = new ModelAndView("jsonView");
		
		json.addObject("result",service.update(dto));
		return json;
	}

	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String delete_page(int bnum, Model model) {
		BoardVO board = service.detail(bnum);
		model.addAttribute("board", board);

		return "delete";
	}

	@RequestMapping(value = "/deletej.do", method = RequestMethod.POST)
	public ModelAndView delete(int bnum) {
		ModelAndView json = new ModelAndView("jsonView");

		json.addObject("result",service.delete(bnum));
		return json;
	}

}
