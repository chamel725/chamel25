package com.sesec.chamel.member.dao;

import com.sesec.chamel.member.vo.Member;

public interface MemberMapper {

	public void insertMember(Member member);

	public Member idCheck(String memberid);

	public Member getMember(String id);

	public void update(Member member);

}
