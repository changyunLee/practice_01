package co.kr.myapp.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.myapp.model.ManagerVO;
import co.kr.myapp.model.UserVO;

@Mapper
public interface MangerMapper {


	public int insert(ManagerVO mvo);

	//void detail(ManagerVO vo);

	public int update(ManagerVO mvo);

	public ManagerVO detail(int n_cnt);

	public int delete(ManagerVO mvo);

	public int cntUpdate(int n_cnt);

	public int noticeTotal(String type, String keyword);

	public int noticeTotal(HashMap<String, Object> noticeTotal);

	public List<ManagerVO> selectAll(HashMap<String, Object> show);

	public UserVO userDetail(String user_id);

	public int cntMax();

	

}
