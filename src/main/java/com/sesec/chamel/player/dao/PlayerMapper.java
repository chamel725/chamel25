package com.sesec.chamel.player.dao;

import java.util.ArrayList;

import com.sesec.chamel.player.vo.Better;
import com.sesec.chamel.player.vo.Pitcher;

public interface PlayerMapper {

	public ArrayList<Better> betterList(); // 타자 전체 목록

	public ArrayList<Pitcher> pitcherList(); // 투수 전체 목록

	public ArrayList<Better> searchBetter(String name);

	public ArrayList<Pitcher> searchPitcher(String name);
	
	public ArrayList<Better> searchBetterList(String team);

	public ArrayList<Pitcher> searchPitcherList(String team);

	public ArrayList<Better> searchBetterList2();

	public ArrayList<Pitcher> searchPitcherList2();

}
