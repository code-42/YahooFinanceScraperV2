package net.ed.yahoofinancescraper.mvc;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.ed.downloader.controllers.IWebdriverService;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showPage() {
		return "main-menu";
	}
	

	
//	@Override
//	@RequestMapping("/getWD")
//	public String getWebDriver() {
//
//		// add support for chrome driver
//		String keyx = "webdriver.chrome.driver";
//		String valuex = "/Users/melocal/Applications/lib/chromedriver";
//		System.setProperty(keyx, valuex);
//		
//		WebDriver driver = new ChromeDriver(); // launch chrome
////		driver.switchTo().window(driver.getTitle()).manage().window().maximize();
//
//		// open login.jsp
//		String url = "https://login.yahoo.com/";
//		driver.get(url);
//			
//		return url;
//	}
}