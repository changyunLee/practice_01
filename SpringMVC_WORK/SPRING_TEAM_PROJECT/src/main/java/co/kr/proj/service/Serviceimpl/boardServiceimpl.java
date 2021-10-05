package co.kr.proj.service.Serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.login.web.UserVO;
import co.kr.proj.service.boardService;
import co.kr.proj.service.mapper.boardMapper;


@Service
public class boardServiceimpl implements boardService {

	@Autowired
	public boardMapper mapper;

	@Override
	public List<UserVO> selectALL() {
		// TODO Auto-generated method stub
		return mapper.selectALL();
	}

	@Override
	public List<UserVO> myinfo(String myID) {
		// TODO Auto-generated method stub
		return mapper.myinfo(myID);
	}

	@Override
	public int getLatestUserNum() {
		// TODO Auto-generated method stub
		return mapper.getLatestUserNum();
	}

	@Override
	public int insertVO(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.insertVO(vo);
	}

	@Override
	public int getMyNum(String myID) {
		// TODO Auto-generated method stub
		return mapper.getMyNum(myID);
	}


	@Override
	public int userDelete(int getMyNum) {
		// TODO Auto-generated method stub
		return mapper.userDelete(getMyNum);
	}


	@Override
	public int userUdate(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	








	
}
