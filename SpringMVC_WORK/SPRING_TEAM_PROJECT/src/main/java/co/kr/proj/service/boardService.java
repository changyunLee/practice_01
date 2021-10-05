package co.kr.proj.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.kr.login.web.UserVO;


public interface boardService {

	List<UserVO> selectALL();

	List<UserVO> myinfo(String myID);

	int getLatestUserNum();

	int insertVO(UserVO vo);

	int getMyNum(String myID);

	int userUdate(UserVO vo);

	int userDelete(int getMyNum);







}
