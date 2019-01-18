package com.sesec.chamel.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesec.chamel.member.vo.Member;
@Repository
public class MemberDAO {
	@Autowired
	SqlSession sqlSession;
	
	public void insertMember(Member member) {
		MemberMapper mapper = 
				sqlSession.getMapper(MemberMapper.class);
		mapper.insertMember(member);
	}

	public Member idCheck(String memberid) {
		MemberMapper mapper = 
				sqlSession.getMapper(MemberMapper.class);
		Member result = mapper.idCheck(memberid);
		return result;
	}

	public Member getMember(String id) {
		MemberMapper mapper = 
				sqlSession.getMapper(MemberMapper.class);
		Member result = mapper.getMember(id);
		return result;
	}

	public void update(Member member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		mapper.update(member);
		
	}


}
