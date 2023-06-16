package test.com.tileslayout;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home.do" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("/home.do");

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return ".home";
	}

	@RequestMapping(value = "/m_insert.do", method = RequestMethod.GET)
	public String m_insert() {
		logger.info("/m_insert.do");

		return ".m_insert";
	}

	@RequestMapping(value = "/b_insert.do", method = RequestMethod.GET)
	public String b_insert() {
		logger.info("/b_insert.do");

		return ".b_insert";
	}

	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("/test.do");

		model.addAttribute("title", "test");
		return ".test";
	}

	@RequestMapping(value = "/test2.do", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {
		logger.info("/test2.do");

		model.addAttribute("title", "test2");
		return ".test/test";
	}

}
