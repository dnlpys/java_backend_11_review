package test.com.project.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.project.movie.service.MovieService;
import test.com.project.reservation.model.ReservationVO;
import test.com.project.reservation.service.ReservationService;

@Slf4j
@Controller
public class ReservationController {

	@Autowired
	ReservationService service;
	
	
	@RequestMapping(value = "/r_insert.do", method = RequestMethod.GET)
	public String r_insert() {
		log.info("/r_insert.do...");

		return "reservation/insert";
	}
	
	
	@RequestMapping(value = "/r_selectOne.do", method = RequestMethod.GET)
	public String r_selectOne() {
		log.info("/r_selectOne.do...");
		
		return "reservation/selectOne";
	}
	
	@RequestMapping(value = "/r_insertOK.do", method = RequestMethod.GET)
	public String r_insertOK(ReservationVO vo) {
		log.info("/r_insertOK.do...{}",vo);
		
		vo.setMovie_date(vo.getMovie_date().replace("T", " "));
		log.info("replace data:{}",vo.getMovie_date());
		
		int result = service.insert(vo);
		log.info("result:{}",result);
		if(result == 1) {
			return "redirect:r_selectAll.do?user_id="+vo.getUser_id();
		}else {
			return "redirect:r_selectOne.do?num="+vo.getMovie_num();
		}
	}
	
	@RequestMapping(value = "/r_selectAll.do", method = RequestMethod.GET)
	public String r_selectAll(ReservationVO vo) {
		log.info("/r_selectAll.do...{}",vo);
		
		
		
		return "reservation/selectAll";
	}

}
