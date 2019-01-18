package com.sesec.chamel.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sesec.chamel.member.dao.MemberDAO;
import com.sesec.chamel.member.vo.Member;

@SessionAttributes ("member")
@Controller
public class LoginController {
	@Autowired
	MemberDAO memberDAO;
	
	@RequestMapping(value ="/loginForm", method = RequestMethod.GET )
	public String login(HttpSession session){
		
		return "member/loginForm";
	}
	@RequestMapping(value ="/login", method = RequestMethod.POST )
	public String login(String id, String password, Model model ,HttpSession session){
		Member m = memberDAO.getMember(id);
		if(m == null){
			model.addAttribute("messageid","please check your id");
			
			return "member/loginForm";
		}else if(m.getPassword().equals(password)){
			session.setAttribute("id", id);
			return "redirect:./";
		}else{
			model.addAttribute("messagepw","id와password가 일치하지 않습니다");
			return "member/loginForm";
		}
	}
	
	@RequestMapping(value ="/logout", method = RequestMethod.GET )
	public String logout(HttpSession session){
		session.removeAttribute("id");
		return "redirect:./";
	}
	
	@RequestMapping(value ="/updateForm", method = RequestMethod.GET )
	public String updateForm(HttpSession session,Model model){
		Member m = memberDAO.idCheck((String)session.getAttribute("id"));
		model.addAttribute("member",m);
		
		return "member/updateForm";
	}
	
	@RequestMapping(value ="/update", method = RequestMethod.POST )
	public String logout(@ModelAttribute("member")Member member){
		memberDAO.update(member);
		return "redirect:./";
	}
}
