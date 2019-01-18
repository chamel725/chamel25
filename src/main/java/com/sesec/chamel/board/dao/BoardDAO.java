package com.sesec.chamel.board.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesec.chamel.board.vo.Board;
@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int writeBoard(Board board) {
		int check = 0;
		BoardMapper mapper = 
				sqlSession.getMapper(BoardMapper.class);
		check = mapper.writeBoard(board);
		return check;
	}

	public int getTotal(String searchText) {
		BoardMapper m = sqlSession.getMapper(BoardMapper.class);
		return m.getTotal(searchText);
	}

	public ArrayList<Board> listBoard(String searchText, int startRecord, int countPerPage) {
		BoardMapper m = sqlSession.getMapper(BoardMapper.class);
		RowBounds rb = new RowBounds(startRecord,countPerPage);
		return m.listBoard(searchText,rb);
	}

	public void addHits(String boardnum) {
		BoardMapper m = sqlSession.getMapper(BoardMapper.class);
		m.addHits(boardnum);
	}

	public Board readBoard(String boardnum) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		 return mapper.readBoard(boardnum);
	}

	public int deleteWrite(Board boardnum) {
		int check=0;
		
		BoardMapper m = sqlSession.getMapper(BoardMapper.class);
		check = m.deleteWrite(boardnum);
		return check;
	}

	public void updateBoard(Board board) {
		BoardMapper m = sqlSession.getMapper(BoardMapper.class);
		m.updateBoard(board);
	}

}
