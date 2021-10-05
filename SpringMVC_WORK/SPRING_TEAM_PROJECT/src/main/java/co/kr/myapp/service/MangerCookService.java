package co.kr.myapp.service;

import java.util.List;

import co.kr.myapp.model.ManagerCookVO;


public interface MangerCookService {

	public List<ManagerCookVO> selectAll(String type, String keyword, int page);

	public ManagerCookVO selectOne(int c_num);
	
	public int cntUpdate(int c_num);

	public int insert(ManagerCookVO vo);

	public int lastcookboardnum();

	public int update(ManagerCookVO vo);

	public int delete(ManagerCookVO vo);

	public int noticeTotal(String type, String keyword);

	public int cntMax();



}
