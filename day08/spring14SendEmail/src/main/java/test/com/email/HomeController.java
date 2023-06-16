package test.com.email;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
    private EmailSender emailSender;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		Email email = new Email();
        
        String reciver = "받을사람의 이메일@naver.com"; //받을사람의 이메일입니다.
        String subject = "이메일 제목";
        String content = "이메일 내용입니다.";
         
        email.setReciver(reciver);
        email.setSubject(subject);
        email.setContent(content);


        try {
			emailSender.SendEmail(email);
			logger.info("SendEmail...successed");
		} catch (Exception e) {
			logger.info("SendEmail...failed");
			e.printStackTrace();
		}
		
		
		return "home";
	}
	
}
