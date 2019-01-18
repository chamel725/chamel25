package com.sesec.chamel.player.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesec.chamel.player.vo.Better;
import com.sesec.chamel.player.vo.Pitcher;

@Repository
public class PlayerDAO {
	@Autowired
	SqlSession sqlSession;

	public ArrayList<Better> betterList() {
		// 세션만들고 세션에 넣고 커밋 그리고 클로즈
		PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);

		return m.betterList();
	}

	public ArrayList<Pitcher> pitcherList() {
		// 세션만들고 세션에 넣고 커밋 그리고 클로즈
		PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);

		return m.pitcherList();
	}

	public ArrayList<Better> searchBetter(String name) {
		ArrayList<Better> result = new ArrayList<>();
		try {
			PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);
			result = m.searchBetter(name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public ArrayList<Pitcher> searchPitcher(String name) {
		ArrayList<Pitcher> result = null;
		try {
			PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);
			result = m.searchPitcher(name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public ArrayList<Better> searchBetterList(String team) {
		ArrayList<Better> result = new ArrayList<>();
		try {
			PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);
			result = m.searchBetterList(team);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<Pitcher> searchPitcherList(String team) {
		ArrayList<Pitcher> result = null;
		try {
			PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);
			result = m.searchPitcherList(team);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<Better> searchBetterList() {
		ArrayList<Better> result = new ArrayList<>();
		try {
			PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);
			result = m.searchBetterList2();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<Pitcher> searchPitcherList() {
		ArrayList<Pitcher> result = null;
		try {
			PlayerMapper m = sqlSession.getMapper(PlayerMapper.class);
			result = m.searchPitcherList2();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
