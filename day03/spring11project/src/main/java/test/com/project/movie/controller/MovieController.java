package test.com.project.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.project.movie.model.MovieVO;
import test.com.project.movie.service.MovieService;

@Slf4j
@Controller
public class MovieController {

	@Autowired
	MovieService service;

	@RequestMapping(value = "/mv_selectAll.do", method = RequestMethod.GET)
	public String mv_selectAll(Model model) {
		log.info("/mv_selectAll.do");

		List<MovieVO> vos = service.selectAll();

		model.addAttribute("vos", vos);

		return "movie/selectAll";
	}

	

}
