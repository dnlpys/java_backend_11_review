package test.com.project.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.project.board.model.BoardVO;
import test.com.project.board.service.BoardService;

@Slf4j
@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	@RequestMapping(value = "/b_selectAll.do", method = RequestMethod.GET)
	public String b_selectAll(Model model) {
		log.info("/b_selectAll.do");

		List<BoardVO> vos = service.selectAll();

		model.addAttribute("vos", vos);

		return "board/selectAll";
	}
	

}
