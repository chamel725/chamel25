package com.sesec.chamel.board.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import com.sesec.chamel.board.vo.Board;

public interface BoardMapper {

	public int writeBoard(Board board);

	public int getTotal(String searchText);

	public ArrayList<Board> listBoard(String searchText, RowBounds rb);

	public void addHits(String boardnum);

	public Board readBoard(String boardnum);

	public int deleteWrite(Board boardnum);

	public void updateBoard(Board board);


}
