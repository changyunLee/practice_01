package co.kr.myapp.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import co.kr.myapp.model.ManagerVO;
import co.kr.myapp.model.UserVO;


public interface MangerService {

	public List<ManagerVO> selectAll(String type, String keyword,int page);
	
	public List<ManagerVO> selectAll(String condition, String type, String keyword, int page);

	public int insert(ManagerVO mvo);

	//ManagerVO detail(ManagerVO vo);

	public int update(ManagerVO mvo);

	ManagerVO detail(int n_cnt );

	public int delete(ManagerVO mvo);
	
	public int cntUpdate(int n_cnt );

	public int noticeTotal(String type, String keyword);

	public UserVO userDetail(String user_id);

	public int cntMax();

}
