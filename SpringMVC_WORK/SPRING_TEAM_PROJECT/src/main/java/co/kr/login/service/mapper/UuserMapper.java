package co.kr.login.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.login.web.UserVO;
import co.kr.myapp.model.ManagerCookVO;
import co.kr.notice.web.NoticeVO;

@Mapper
public interface UuserMapper {

	public UserVO login(HashMap<String, Object> login);
	
	public int loginChick(String user_id);

	public List<ManagerCookVO> cookShow(HashMap<String, Object> cookList);

	public int cookTotal(HashMap<String, Object> cookTotal);

	public List<ManagerCookVO> noticeShow(HashMap<String, Object> show);

	public int noticeTotal(HashMap<String, Object> noticeTotal);

	public ManagerCookVO cookDetail(int c_num);

	public int cookCntUP(ManagerCookVO cVO);

	public NoticeVO noticeDetail(int n_num);

	public int noticeCntUP(NoticeVO vo);
	
	public int cntMax();

	public int update(ManagerCookVO vo);

	public int delete(int user_num);

	public int insert(ManagerCookVO vo);

	public UserVO userDetail(String user_id);

	public int userUdate(UserVO vo);

	public int userMax();

	public int userInsert(UserVO vo);

	public int userDelete(String user_id);

	public int userTotal(HashMap<String, Object> userTotal);

	public int user_delete(String user_id);

	public int user_modify(UserVO vo);

	public List<UserVO> selectAll(HashMap<String, Object> listAll);

}
