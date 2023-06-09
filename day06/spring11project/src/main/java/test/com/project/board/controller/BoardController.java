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
import test.com.project.comments.model.CommentsVO;
import test.com.project.comments.service.CommentsService;

@Slf4j
@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	@Autowired
	CommentsService commService;
	
	@RequestMapping(value = "/b_selectAll.do", method = RequestMethod.GET)
	public String b_selectAll(Model model) {
		log.info("/b_selectAll.do");

		List<BoardVO> vos = service.selectAll();

		model.addAttribute("vos", vos);

		return "board/selectAll";
	}
	
	
	@RequestMapping(value = "/b_searchList.do", method = RequestMethod.GET)
	public String b_searchList(Model model,
			String searchKey, String searchWord) {
		log.info("/b_searchList.do");
		log.info("searchKey:{}",searchKey);
		log.info("searchWord:{}",searchWord);
		
		List<BoardVO> vos = service.searchList(searchKey,searchWord);
		
		model.addAttribute("vos", vos);
		
		return "board/selectAll";
	}
	
	@RequestMapping(value = "/b_selectOne.do", method = RequestMethod.GET)
	public String b_selectOne(BoardVO vo, Model model) {
		log.info("/b_selectOne.do...{}", vo);

		service.vcountUp(vo);
		
		BoardVO vo2 = service.selectOne(vo);
		model.addAttribute("vo2", vo2);
		
		CommentsVO cvo = new CommentsVO();
		cvo.setWnum(vo.getWnum());
		List<CommentsVO> coms = commService.selectAll(cvo);
		log.info("{}",coms);
		
		model.addAttribute("coms", coms);

		return "board/selectOne";
	}
	
	@RequestMapping(value = "/b_insert.do", method = RequestMethod.GET)
	public String b_insert() {
		log.info("/b_insert.do...");
		
		return "board/insert";
	}
	
	
	@RequestMapping(value = "/b_insertOK.do", method = RequestMethod.POST)
	public String b_insertOK(BoardVO vo) {
		log.info("/b_insertOK.do...{}", vo);
		
		int result = service.insert(vo);
		log.info("result...{}", result);
		
		if(result==1) {
			return "redirect:b_selectAll.do";
		}else {
			return "redirect:b_insert.do";
		}
		
	}
	
	@RequestMapping(value = "/b_update.do", method = RequestMethod.GET)
	public String b_update(BoardVO vo, Model model) {
		log.info("/b_update.do...{}", vo);

		BoardVO vo2 = service.selectOne(vo);

		model.addAttribute("vo2", vo2);

		return "board/update";
	}
	
	@RequestMapping(value = "/b_updateOK.do", method = RequestMethod.POST)
	public String b_updateOK(BoardVO vo) {
		log.info("/b_updateOK.do...{}", vo);
		
		int result = service.update(vo);
		log.info("result...{}", result);
		
		if(result==1) {
			return "redirect:b_selectOne.do?wnum="+vo.getWnum();
		}else {
			return "redirect:b_update.do?wnum="+vo.getWnum();
		}
		
	}
	
	@RequestMapping(value = "/b_deleteOK.do", method = RequestMethod.GET)
	public String b_deleteOK(BoardVO vo) {
		log.info("/b_deleteOK.do...{}", vo);
		
		int result = service.delete(vo);
		log.info("result...{}", result);
		
		if(result==1) {
			return "redirect:b_selectAll.do";
		}else {
			return "redirect:b_selectOne.do?wnum="+vo.getWnum();
		}
		
	}
	

}
