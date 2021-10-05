package co.kr.myapp.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.myapp.model.ManagerVO;
import co.kr.myapp.model.UserVO;
import co.kr.myapp.service.MangerService;
import co.kr.myapp.service.mapper.MangerMapper;

@Service
public class ManagerServiceImpl implements MangerService {
	
	@Autowired
	public MangerMapper mapper;

	@Override
	public List<ManagerVO> selectAll(String type, String keyword,int page) {
		int amount = 10;
		HashMap<String, Object> show = new HashMap<String, Object>();
		
		show.put("startRn", (page-1)*amount);
		show.put("endRn", page*amount);
		show.put("type", type);
		show.put("keyword", keyword);
		return mapper.selectAll(show);
	}
	
	@Override
	public List<ManagerVO> selectAll(String condition, String type, String keyword, int page) {
		int amount = 10;
		HashMap<String, Object> show = new HashMap<String, Object>();
		
		show.put("startRn", (page-1)*amount);
		show.put("endRn", page*amount);
		show.put("keyword",  keyword);
		show.put("type",  type);
		show.put("condition", condition);
		return mapper.selectAll(show);
	}

	@Override
	public int insert(ManagerVO mvo) {
		
		return mapper.insert(mvo);
		
	}



	@Override
	public int update(ManagerVO mvo) {
		
		return mapper.update(mvo);
		
	}

	@Override
	public ManagerVO detail(int n_cnt) {
		return mapper.detail(n_cnt);
	}

	@Override
	public int delete(ManagerVO mvo) {
		
		return mapper.delete(mvo);
		
	}

	@Override
	public int cntUpdate(int n_cnt) {
		
		mapper.cntUpdate(n_cnt);
		
		return n_cnt;
		
	}

	@Override
	public int noticeTotal(String type, String keyword) {
     HashMap<String, Object> noticeTotal = new HashMap<String, Object>();
		
		noticeTotal.put("type", type);
		noticeTotal.put("keyword", keyword);
		return mapper.noticeTotal(noticeTotal);
	}

	@Override
	public UserVO userDetail(String user_id) {
		return mapper.userDetail(user_id);
	}

	@Override
	public int cntMax() {
		return mapper.cntMax();
	}

	

}
