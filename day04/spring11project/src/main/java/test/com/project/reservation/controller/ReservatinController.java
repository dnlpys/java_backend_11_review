package test.com.project.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.project.movie.service.MovieService;

@Slf4j
@Controller
public class ReservatinController {

	@Autowired
	MovieService service;
	
	
	@RequestMapping(value = "/r_insert.do", method = RequestMethod.GET)
	public String r_insert() {
		log.info("/r_insert.do...");

		return "reservation/insert";
	}

}
