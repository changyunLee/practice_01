package co.kr.board.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.board.service.BoardService;
import co.kr.board.service.mapper.BoardMapper;
import co.kr.board.vo.BoardVO;
import co.kr.board.vo.ReplyVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	public BoardMapper mapper;

	@Override
	public List<BoardVO> list(int page, String type, String keyword) {
	
		//String -> 보내줄값의이름
		//Object-> 넣어줄값의이름 
		HashMap<String, Object> hashMap= new HashMap<String,Object>();
		//한페이지에서 10개의 게시물을 보여줄거라고 선언
		int amount=10;
		
		hashMap.put("startRn", (page-1)*amount);
		hashMap.put("endRn", page*amount);
		hashMap.put("type", type);
		hashMap.put("keyword", keyword);
		
		return mapper.list(hashMap);
	}

	@Override
	public int total() {
		return mapper.total();
	}

	@Override
	public int insert(BoardVO dto) {
		return mapper.insert(dto);
	}

	@Override
	public BoardVO detail(int bnum) {
		return mapper.detail(bnum);
	}

	@Override
	public int count(int bnum) {

		return mapper.count(bnum);
	}

	@Override
	public int update(BoardVO dto) {
		return mapper.update(dto);
	}

	@Override
	public int delete(int bnum) {
		return mapper.delete(bnum);
	}

	@Override
	public int cntmax() {
		return mapper.cntmax();
	}

	@Override
	public List<ReplyVO> readReply(int bnum) {
		return mapper.readReply(bnum);
		
	}

	@Override
	public int writereply(ReplyVO dto) {
		return mapper.writereply(dto);
	}

	@Override
	public ReplyVO selectReply(int rno) {
		return mapper.selectReply(rno);
	}

	@Override
	public int deleteReply(int rno) {
		return mapper.deleteReply(rno);
	}

	@Override
	public int updateReply(ReplyVO vo) {

		return mapper.updateReply(vo);
	}
	
	

}
