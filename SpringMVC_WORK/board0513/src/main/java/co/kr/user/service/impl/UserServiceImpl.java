package co.kr.user.service.impl;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.user.service.UserService;
import co.kr.user.service.mapper.UserMapper;
import co.kr.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired

	UserMapper mapper;

	@Override
	public UserVO joinus(UserVO vo) {
		int i = mapper.idCheck(vo);
		if(i==1) {
			vo = new UserVO();
			vo.setMsg("중복된 아이디 있음");
			return vo;
		}else if(i==0) {
			return mapper.joinus(vo);
		}else {
			return vo;
		}
		
	}
	
		

	@Override
	public UserVO login(String userid, String userpass, HttpSession session) {
		HashMap<String, Object> login = new HashMap<String, Object>();
		UserVO vo = new UserVO();
		int i = mapper.loginCheck(userid);
		if( i > 0 ) {
			login.put("userid", userid);
			login.put("userpass", userpass);
			vo = mapper.login(login);
			if(vo == null) {
				vo = new UserVO();
				vo.setMsg("잘못된 비밀번호");
				return vo;
			}else {
				session.setAttribute("id", userid);
				return vo;
			}
			
		}else {
			vo.setMsg("없는 아이디 입니다.");
			return vo;
		}
	}



	@Override
	public int idCheck(UserVO vo) {
		return mapper.idCheck(vo);
	}



	@Override
	public int userUpdate(UserVO vo) {
		return mapper.userUpdate(vo);
	}


	
	
}
