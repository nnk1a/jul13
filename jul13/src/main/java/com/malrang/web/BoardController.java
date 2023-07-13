package com.malrang.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	//서비스와 연결하기
	@Autowired
	private BoardService boardService;
	
	//사용자가 /board라고 호출하면 동작할 메소드
	@GetMapping("/board")
	public ModelAndView board() {
		ModelAndView mv = new ModelAndView("board");
		//Service 동작
		List<BoardDTO> list = boardService.boardList();		
		mv.addObject("list", list);
		
		return mv;
	}
	
	@GetMapping("/board2")
	public String board2(Model model) {
		model.addAttribute("name", "말랭");
		
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		for (int i = 1; i < 0; i++) {
			BoardDTO dto = new BoardDTO(i, "제목", "말랭", "2023-07-13", i);
			list.add(dto);
		}
		model.addAttribute("list", list);
		return "board2";
	}
}
