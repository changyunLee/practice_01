package co.kr.myapp.service;

import co.kr.myapp.model.UserVO;

public interface UserService {

	public int join(UserVO user);

	public int cntMax();

	public UserVO idCheck(String user_id);


}
