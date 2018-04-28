package net.ed.yahoofinancescraper.controllers;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.openqa.selenium.chrome.ChromeDriver;


@Component
@Controller
public class WebDriverController implements IWebDriverService {
	
	private IWebDriverService webDriverService;
	
	public WebDriverController() {
	}

	public WebDriverController(IWebDriverService theWebDriverService) {
		webDriverService = theWebDriverService;
	}

	@Override
	@RequestMapping("/getWD")
	public String getWebDriver() {
	
	// add support for chrome driver
	String keyx = "webdriver.chrome.driver";
	String valuex = "/Users/melocal/Applications/lib/chromedriver";
	System.setProperty(keyx, valuex);
	
	WebDriver driver = new ChromeDriver(); // launch chrome
//	driver.switchTo().window(driver.getTitle()).manage().window().maximize();

	// open login.jsp
	String url = "https://login.yahoo.com/";
	driver.get(url);
		
	return url;
	}
}
