package co.kr.user.service;

import javax.servlet.http.HttpSession;

import co.kr.user.vo.UserVO;


public interface UserService {

	int joinus(UserVO vo);

	UserVO login(String userid, String userpass, HttpSession session);

	int idCheck(String userid);

	int userUpdate(UserVO vo);

	int passCheck(UserVO vo);

	int userDelete(UserVO vo);

	
}
