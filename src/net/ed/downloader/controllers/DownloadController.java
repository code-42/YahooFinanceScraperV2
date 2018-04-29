package net.ed.downloader.controllers;

import java.io.IOException;
import org.openqa.selenium.WebDriver;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.openqa.selenium.chrome.ChromeDriver;

@Component
@Controller
public class DownloadController implements IWebDriverService {
	
	private IWebDriverService webDriverService;
	
	public DownloadController() {
	}

	public DownloadController(IWebDriverService theWebDriverService) {
		webDriverService = theWebDriverService;
	}

	@Override
	@RequestMapping("/getWebDriver")
	public String getWebDriver() {
		
		System.out.println("30. inside /getWebDriver");
		
		// read spring config java class
		AnnotationConfigApplicationContext context = 
				new AnnotationConfigApplicationContext(DownloadConfig.class);
		
		// get the bean from spring container
		System.out.println("38. getting bean chromeWebDriver...");
		ILoginService theLogin = context.getBean("chromeWebDriver", ILoginService.class);
		
		// call a method on the bean
		System.out.println("42. calling getURL() on the bean");
		System.out.println(theLogin.getURL());
		System.out.println("44. calling getLogin() on the bean");
		System.out.println(theLogin.getLogin());
		
		// close the context
		context.close();
		
		return "list-stocks";
	}
}	 

	

