package co.kr.login.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.login.service.UuserService;
import co.kr.login.service.mapper.UuserMapper;
import co.kr.login.web.UserVO;
import co.kr.myapp.model.ManagerCookVO;
import co.kr.notice.web.NoticeVO;

@Service
public class UuserServiceimpl implements UuserService{
	
	@Autowired
	public UuserMapper mapper;
	//-----------------------------로그인 유효성 검사---------------------------
	@Override
	public UserVO login(String user_id, String user_pw , HttpSession session) {
		HashMap<String, Object> login = new HashMap<String, Object>();
		UserVO vo = new UserVO();
		int i = mapper.loginChick(user_id);
		if( i > 0 ) {
			login.put("user_id", user_id);
			login.put("user_pw", user_pw);
			vo = mapper.login(login);
			if(vo == null) {
				vo = new UserVO();
				vo.setMsg("잘못된 비밀번호");
				return vo;
			}else {
				session.setAttribute("id", user_id);
				return vo;
			}
			
		}else {
			vo.setMsg("없는 아이디 입니다.");
			return vo;
		}
	}
	//---------------------------요리 페이지 list------------------------------
	@Override
	public List<ManagerCookVO> cookShow(int page, String type, String keyword) {
		int amount = 10;
		HashMap<String, Object> cookList = new HashMap<String, Object>();
		
		cookList.put("startRn", (page-1)*amount);
		cookList.put("endRn", page*amount);
		cookList.put("type", type);
		cookList.put("keyword", keyword);
		
		return mapper.cookShow(cookList);
	}
	//---------------------------요리 테이블 총 개수-----------------------------
	@Override
	public int cookTotal(String type, String keyword) {
		HashMap<String, Object> cookTotal = new HashMap<String, Object>();
		
		cookTotal.put("type", type);
		cookTotal.put("keyword", keyword);
		return mapper.cookTotal(cookTotal);
	}
	//---------------------------공지 페이지 list------------------------------
	@Override
	public List<ManagerCookVO> noticeShow(int page, String type, String keyword) {
		int amount = 10;
		HashMap<String, Object> show = new HashMap<String, Object>();
		
		show.put("startRn", (page-1)*amount);
		show.put("endRn", page*amount);
		show.put("type", type);
		show.put("keyword", keyword);
		return mapper.noticeShow(show);
	}
	//---------------------------공지 테이블 총 개수-----------------------------
	@Override
	public int noticeTotal(String type, String keyword) {
		HashMap<String, Object> noticeTotal = new HashMap<String, Object>();
		
		noticeTotal.put("type", type);
		noticeTotal.put("keyword", keyword);
		return mapper.noticeTotal(noticeTotal);
	}
	//---------------------------요리 상세보기----------------------------------
	@Override
	public ManagerCookVO cookDetail(int c_num) {
		return mapper.cookDetail(c_num);
	}
	//---------------------------요리 조회수 증가----------------------------------
	@Override
	public int cookCntUP(ManagerCookVO cVO) {
		return mapper.cookCntUP(cVO);
	}
	//---------------------------공지 상세보기----------------------------------
	@Override
	public NoticeVO noticeDetail(int n_num) {
		return mapper.noticeDetail(n_num);
	}
	//---------------------------공지 조회수 증가----------------------------------
	@Override
	public int noticeCntUP(NoticeVO vo) {
		return mapper.noticeCntUP(vo);
	}
	//---------------------------요리번호 자동증가----------------------------------
	@Override
	public int cntMax() {
		return mapper.cntMax();
	}
	//---------------------------요리 리스트 추가----------------------------------
	@Override
	public int insert(ManagerCookVO vo) {
		return mapper.insert(vo);
	}
	//--------------------------- 내 요리 리스트 수정----------------------------------
	@Override
	public int update(ManagerCookVO vo) {
		return mapper.update(vo);
	}
	//--------------------------- 내 요리 리스트 삭제----------------------------------
	@Override
	public int delete(int user_num) {
		return mapper.delete(user_num);
	}
	//--------------------------- 유저 전체 리스트----------------------------------
	@Override
	public List<UserVO> selectALL(int page,String type,String keyword) {
		int amount = 10;
		HashMap<String, Object> ListAll = new HashMap<String, Object>();
		
		ListAll.put("startRn", (page-1)*amount);
		ListAll.put("endRn", page*amount);
		ListAll.put("type", type);
		ListAll.put("keyword", keyword);
		
		return mapper.selectAll(ListAll);
	}
	//--------------------------- 유저 개인정보 찾기----------------------------------
	@Override
	public UserVO userDetail(String user_id) {
		return mapper.userDetail(user_id);
	}
	//--------------------------- 유저  정보 수정----------------------------------
	@Override
	public int userUdate(UserVO vo) {
		return mapper.userUdate(vo);
	}
	//--------------------------- 유저  숫자 자동증가----------------------------------
	@Override
	public int userMax() {
		return mapper.userMax();
	}
	//--------------------------- 유저  회원 가입----------------------------------
	@Override
	public int userInsert(UserVO vo) {
		return mapper.userInsert(vo);
	}
	@Override
	public int userDelete(String user_id) {
		return mapper.userDelete(user_id);
	}
	@Override
	public int userTotal(String type,String keyword) {
		HashMap<String, Object> userTotal = new HashMap<String, Object>();
		
		userTotal.put("type", type);
		userTotal.put("keyword", keyword);
		
		return mapper.userTotal(userTotal);
	}
	@Override
	public int user_delete(String user_id) {
		return mapper.user_delete(user_id);
	}
	@Override
	public int user_modify(UserVO vo) {
		return mapper.user_modify(vo);
	}

	
}
