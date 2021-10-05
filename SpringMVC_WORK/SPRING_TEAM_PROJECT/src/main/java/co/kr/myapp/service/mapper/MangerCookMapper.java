package co.kr.myapp.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.myapp.model.ManagerCookVO;

@Mapper
public interface MangerCookMapper {

	public List<ManagerCookVO> selectAll(String type, String keyword, int page);

	public ManagerCookVO selectOne(int c_num);

	public int cntUpdate(int c_num);

	public int insert(ManagerCookVO vo);

	public int lastcookboardnum();

	public int update(ManagerCookVO vo);

	public int delete(ManagerCookVO vo);

	public int noticeTotal(HashMap<String, Object> noticeTotal);
	
	public List<ManagerCookVO> selectAll(HashMap<String, Object> show);

	public int cntMax();

}
