package co.kr.board.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.board.vo.BoardVO;
import co.kr.board.vo.ReplyVO;

@Mapper
public interface BoardMapper {

	List<BoardVO> list(HashMap<String, Object> hashMap);

	BoardVO detail(int bnum);
	
	int total();

	int insert(BoardVO dto);

	int count(int bnum);

	int update(BoardVO dto);

	int delete(int bnum);

	int cntmax();

	List<ReplyVO> readReply(int bnum);

	int writereply(ReplyVO dto);

	ReplyVO selectReply(int rno);

	int deleteReply(int rno);

	int updateReply(ReplyVO vo);

}
