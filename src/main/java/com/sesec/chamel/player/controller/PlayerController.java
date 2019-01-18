package com.sesec.chamel.player.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sesec.chamel.board.vo.Board;
import com.sesec.chamel.player.dao.PlayerDAO;
import com.sesec.chamel.player.vo.Better;
import com.sesec.chamel.player.vo.Pitcher;


@Controller
@SessionAttributes("player")
public class PlayerController {
	@Autowired
	PlayerDAO playerDAO;
	//타자 목록
	@RequestMapping(value = "/betterlist", method = RequestMethod.GET)
	public String view(Model model,Better better){
		model.addAttribute("blist",playerDAO.betterList());
		return "betterlist";
	}
	//투수 목록
	@RequestMapping(value = "/pitcherList", method = RequestMethod.GET)
	public String view2(Model model){
		model.addAttribute("plist",playerDAO.pitcherList());
		return "betterlist";
	}
	//search
	@RequestMapping(value = "search", method = RequestMethod.POST)
	public String searchPlayer(Model model, String player,String name){
		if(player.equals("better")){
			ArrayList<Better> result = playerDAO.searchBetter(name);
			model.addAttribute("list",result);
		}else if(player.equals("pitcher")){
			ArrayList<Pitcher> result = playerDAO.searchPitcher(name);
			model.addAttribute("list",result);
		}
		model.addAttribute("player",player);
		
		return "player/player";
	}

	@RequestMapping (value="/playerList", method = RequestMethod.GET)
	public String playerList(Board board,String team, String boardnum,HttpSession session,Model model){
		ArrayList<Better> resultB = playerDAO.searchBetterList(team);
		ArrayList<Pitcher> resultP = playerDAO.searchPitcherList(team);
		model.addAttribute("player","all");
		model.addAttribute("listB",resultB);
		model.addAttribute("listP",resultP);
		return "player/player";
	}
	
	@RequestMapping(value = "/allplayer", method = RequestMethod.GET)
	public String all(Model model,Board board){
		ArrayList<Better> resultB = playerDAO.searchBetterList();
		ArrayList<Pitcher> resultP = playerDAO.searchPitcherList();
		
		model.addAttribute("listB",resultB);
		model.addAttribute("listP",resultP);
		model.addAttribute("player","all");
		return "player/player";
	}
	
	
}
