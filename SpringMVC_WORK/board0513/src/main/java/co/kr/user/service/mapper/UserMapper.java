package co.kr.user.service.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import co.kr.user.vo.UserVO;

@Mapper
public interface UserMapper {

	UserVO joinus(UserVO vo);
	
	int loginCheck(String userid);

	UserVO login(HashMap<String, Object> login);

	int idCheck(UserVO vo);

	int userUpdate(UserVO vo);


	

}
