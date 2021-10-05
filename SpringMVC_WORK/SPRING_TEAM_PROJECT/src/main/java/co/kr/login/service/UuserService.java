package co.kr.login.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import co.kr.login.web.UserVO;
import co.kr.myapp.model.ManagerCookVO;
import co.kr.notice.web.NoticeVO;

public interface UuserService {

	public UserVO login(String user_id, String user_pw , HttpSession session);

	public List<ManagerCookVO> cookShow(int page, String type, String keyword);

	public int cookTotal(String type, String keyword);

	public List<ManagerCookVO> noticeShow(int page, String type, String keyword);
	
	public int noticeTotal(String type, String keyword);

	public ManagerCookVO cookDetail(int c_num);

	public int cookCntUP(ManagerCookVO cVO);

	public NoticeVO noticeDetail(int n_num);

	public int noticeCntUP(NoticeVO vo);
	
	public int cntMax();

	public int update(ManagerCookVO vo);

	public int delete(int c_num);

	public int insert(ManagerCookVO vo);

	public List<UserVO> selectALL(int page, String type, String keyword);

	public UserVO userDetail(String user_id);
	
	int userUdate(UserVO vo);

	public int userMax();

	public int userInsert(UserVO vo);

	public int userDelete(String user_id);

	public int userTotal(String type,String keyword);

	public int user_delete(String user_id);

	public int user_modify(UserVO vo);

}
