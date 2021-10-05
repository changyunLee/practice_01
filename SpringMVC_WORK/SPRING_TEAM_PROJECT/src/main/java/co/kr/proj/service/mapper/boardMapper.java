package co.kr.proj.service.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import co.kr.login.web.UserVO;


@Mapper
public interface boardMapper {

	List<UserVO> selectALL();

	List<UserVO> myinfo(@Param("_myID") String myID);

	int getLatestUserNum();

	int insertVO(@Param("_vo")UserVO vo);

	int getMyNum(@Param("_myID") String myID);

	int userUpdate(@Param("_vo") UserVO vo);

	int userDelete(@Param("_myNum") int getMyNum);







}
