package com.sesec.chamel.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sesec.chamel.board.dao.BoardDAO;
import com.sesec.chamel.board.vo.Board;
import com.sesec.chamel.util.PageNavigator;


@Controller
@SessionAttributes("board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	BoardDAO boardDAO;
	
	@RequestMapping(value = "writeform", method = RequestMethod.GET)
	public String board(){
		
		return "board/writeform";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeform(Board board,HttpSession session){
		
		board.setId(((String)session.getAttribute("id")));
		boardDAO.writeBoard(board);
		return "redirect:listform";
	}
	@RequestMapping(value = "listform", method = RequestMethod.GET)
	public String listform(Model model,@RequestParam(value="searchText",defaultValue="")String searchText
			,@RequestParam(value="page",defaultValue="1")int page){
		
		int total = boardDAO.getTotal(searchText);
		
		PageNavigator navi = new PageNavigator(10, 5, page, total);
		
		ArrayList<Board> boardlist = boardDAO.listBoard(searchText,navi.getStartRecord(),navi.getCountPerPage());
		
		model.addAttribute("list",boardlist);
		model.addAttribute("searchText",searchText);
		model.addAttribute("navi",navi);
		
		return "board/listform";
	}
	
	@RequestMapping(value = "/boardList", method = RequestMethod.POST)
	public String view(Board board,HttpSession session,Model model){
		return "redirect:listform";
	}
	
	@RequestMapping(value = "content", method = RequestMethod.GET)
	public String content(Model model,String boardnum,String page){
		//전달된 글 번호로 해당 글 저보 읽기
		boardDAO.addHits(boardnum);
		Board board = boardDAO.readBoard(boardnum);
		if(board == null){
			
			return "redirect:listform";
		}
		//현재 글에 달린 리플목록 읽기
		
		//본문 글 정보와 리플목록을 모델에 저장하고 이동
		model.addAttribute("list",board);
		model.addAttribute("page",page);
		return "board/contentform";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(Board boardnum,HttpSession session,Model model){
		//다오로 정보 전달
		boardnum.setId((String)session.getAttribute("id"));
		boardDAO.deleteWrite(boardnum);
		return "redirect:listform";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(String boardnum,HttpSession session,Model model){
		model.addAttribute("list",boardDAO.readBoard(boardnum));
		return "board/updateboard";
	}
	@RequestMapping(value = "/updateBoard", method = RequestMethod.POST)
	public String updateBoard(Board board, String boardnum,HttpSession session,Model model){
		boardDAO.updateBoard(board);
		return "redirect:content?boardnum="+board.getBoardnum();
	}
	

}
