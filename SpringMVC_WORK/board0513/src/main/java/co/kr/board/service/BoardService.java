package co.kr.board.service;

import java.util.List;

import co.kr.board.vo.BoardVO;
import co.kr.board.vo.ReplyVO;

public interface BoardService {

	List<BoardVO> list(int page, String type, String keyword);

	int total();

	int insert(BoardVO dto);

	BoardVO detail(int bnum);

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
