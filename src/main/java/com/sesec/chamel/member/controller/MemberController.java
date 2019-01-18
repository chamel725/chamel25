package com.sesec.chamel.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sesec.chamel.member.dao.MemberDAO;
import com.sesec.chamel.member.vo.Member;

@Controller
@SessionAttributes("member")
public class MemberController {
	@Autowired
	MemberDAO memberDAO;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "joinForm", method = RequestMethod.GET)
	public String joinForm(Model model){
		Member m = new Member();
		model.addAttribute("member",m);
		return "member/joinForm";
	}
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(Model model,@ModelAttribute("member") Member member){
		memberDAO.insertMember(member);
		return "member/joinComplete";
	}
	@RequestMapping(value = "idCheck", method = RequestMethod.GET)
	public String idCheck(){
		return "member/idCheck";
	}
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
	public String idCheck(Model model, String memberid){
		logger.info("아이디 체크 : {}",memberid);
		Member m = memberDAO.idCheck(memberid);
		logger.info("가져온 객체 : {}",m);
		if(m == null){
			model.addAttribute("amember","success");
		}else{
			model.addAttribute("amember","fail");
		}
		model.addAttribute("mem1",memberid);
		return "member/idCheck";
	}
	
	@RequestMapping(value = "joinComplete", method = RequestMethod.GET)
	public String joinComplete(Model model,@ModelAttribute("member") Member member,SessionStatus sessionStatus){
		model.addAttribute("id",member.getMemberid());
		sessionStatus.setComplete();
		return "member/joinComplete";
	}
}
