package test.com.project.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {

	@RequestMapping(value = "/m_selectAll.do", method = RequestMethod.GET)
	public String m_selectAll() {
		log.info("/m_selectAll.do");

		return "member/selectAll";
	}

	@RequestMapping(value = "/m_searchList.do", method = RequestMethod.GET)
	public String m_searchList() {
		log.info("/m_searchList.do");

		return "member/selectAll";
	}

	@RequestMapping(value = "/m_insert.do", method = RequestMethod.GET)
	public String m_insert() {
		log.info("/m_insert.do");

		return "member/insert";
	}

	@RequestMapping(value = "/m_insertOK.do", method = RequestMethod.POST)
	public String m_insertOK() {
		log.info("/m_insertOK.do");

		return "redirect:m_selectAll.do";
	}

	@RequestMapping(value = "/m_updateOK.do", method = RequestMethod.POST)
	public String m_updateOK() {
		log.info("/m_updateOK.do");

		return "redirect:m_selectOne.do";
	}
	@RequestMapping(value = "/loginOK.do", method = RequestMethod.POST)
	public String loginOK() {
		log.info("/loginOK.do");
		
		return "redirect:m_selectAll.do";
	}

	@RequestMapping(value = "/m_deleteOK.do", method = RequestMethod.GET)
	public String m_deleteOK() {
		log.info("/m_deleteOK.do");

		return "redirect:m_selectAll.do";
	}
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout() {
		log.info("/logout.do");
		
		return "redirect:home.do";
	}

	@RequestMapping(value = "/m_selectOne.do", method = RequestMethod.GET)
	public String m_selectOne() {
		log.info("/m_selectOne.do");

		return "member/selectOne";
	}

	@RequestMapping(value = "/m_update.do", method = RequestMethod.GET)
	public String m_update() {
		log.info("/m_update.do");

		return "member/update";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		log.info("/login.do");

		return "member/login";
	}

}
