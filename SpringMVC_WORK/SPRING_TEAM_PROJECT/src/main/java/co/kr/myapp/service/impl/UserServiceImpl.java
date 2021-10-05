package co.kr.myapp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.myapp.model.UserVO;
import co.kr.myapp.service.UserService;
import co.kr.myapp.service.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	public UserMapper mapper;

	@Override
	public int join(UserVO user) {
		
		return mapper.join(user);
		
	}

	@Override
	public int cntMax() {
		return mapper.cntMax();
	}

	@Override
	public UserVO idCheck(String user_id) {
		UserVO vo = new UserVO();
		int i = mapper.idCheck(user_id);
		if(i > 0) {
			vo = new UserVO();
			vo.setMag("이미 사용된 아이디입니다.");
			return vo;
		}
		return vo;
		
	}

	

}
