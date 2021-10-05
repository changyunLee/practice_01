package co.kr.myapp.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.myapp.model.ManagerCookVO;
import co.kr.myapp.service.MangerCookService;
import co.kr.myapp.service.mapper.MangerCookMapper;

@Service
public class ManagerCookServiceImpl implements MangerCookService {
	
	@Autowired
	public MangerCookMapper mapper;


	@Override
	public ManagerCookVO selectOne(int c_num) {
		return mapper.selectOne(c_num);
	}
	
	public int cntUpdate(int c_num) {
		return mapper.cntUpdate(c_num);
	}

	@Override
	public int insert(ManagerCookVO vo) {
		
		return mapper.insert(vo);
	}

	@Override
	public int lastcookboardnum() {
		
		return mapper.lastcookboardnum();
	}

	@Override
	public int update(ManagerCookVO vo) {

		return mapper.update(vo);
	}

	@Override
	public int delete(ManagerCookVO vo) {
		
		return mapper.delete(vo);
	}

	@Override
	public List<ManagerCookVO> selectAll(String type, String keyword, int page) {
		int amount=10;
		HashMap<String, Object> show = new HashMap<String,Object>();
		
		show.put("startRn", (page-1)*amount);
		show.put("endRn", page*amount);
		show.put("type", type);
		show.put("keyword", keyword);
		
		return mapper.selectAll(show);
	}

	@Override
	public int noticeTotal(String type, String keyword) {
		HashMap<String, Object> noticeTotal = new HashMap<String,Object>();
		noticeTotal.put("type", type);
		noticeTotal.put("keyword", keyword);
		
		return mapper.noticeTotal(noticeTotal);
	}

	@Override
	public int cntMax() {
		return mapper.cntMax();
	}


}
