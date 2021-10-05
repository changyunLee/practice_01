package co.kr.user.service;

import javax.servlet.http.HttpSession;

import co.kr.user.vo.UserVO;


public interface UserService {

	UserVO joinus(UserVO dto);

	UserVO login(String userid, String userpass, HttpSession session);

	int idCheck(UserVO vo);

	int userUpdate(UserVO vo);
}
