package net.ed.yahoofinancescraper.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHomePage() {
//		String message = getScraper();
		return "index";
	}
	
	@RequestMapping("/index")
	public String showIndexPage() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String showLoginForm() {
		return "login";
	}
	
	@RequestMapping("/about_me")
	public String showAboutMe() {
		return "about_me";
	}
	
	@RequestMapping("/message")
	public String getScraper(Model model) {
		
		// create the message
		String message = "A CareerDevs Student Application";
		
		// add message to the model
		model.addAttribute("message", message);
		
		return "list-stocks";
	}
}