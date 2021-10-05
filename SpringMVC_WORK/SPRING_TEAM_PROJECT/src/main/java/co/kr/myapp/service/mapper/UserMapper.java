package co.kr.myapp.service.mapper;

import org.apache.ibatis.annotations.Mapper;

import co.kr.myapp.model.UserVO;
@Mapper
public interface UserMapper {

	public int join(UserVO user);

	public int cntMax();

	public int idCheck(String user_id);

}
