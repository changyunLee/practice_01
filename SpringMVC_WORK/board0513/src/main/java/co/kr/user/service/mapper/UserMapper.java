package co.kr.user.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.user.vo.UserVO;

@Mapper
public interface UserMapper {

	int joinus(UserVO vo);
	
	int loginCheck(String userid);

	UserVO login(HashMap<String, Object> login);

	int idCheck(String userid);

	int userUpdate(UserVO vo);

	int passCheck(UserVO vo);

	int userDelete(UserVO vo);

	List<UserVO> userCheck(UserVO vo);


	

}
