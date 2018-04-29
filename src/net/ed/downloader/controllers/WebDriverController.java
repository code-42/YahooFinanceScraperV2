package net.ed.downloader.controllers;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.openqa.selenium.chrome.ChromeDriver;


@Component
@Controller
@PropertySource("classpath:login.properties")
public class WebDriverController implements IWebdriverService {
	
	private IWebdriverService webDriverService;
	
	public WebDriverController() {
	}

	public WebDriverController(IWebdriverService theWebDriverService) {
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
	
//	try {
//		Thread.sleep(2000);
//		driver.findElement(By.name("username")).sendKeys(${username}); // fill in the blanks
//		Thread.sleep(2000);
//		driver.findElement(By.name("password")).sendKeys(${password});
//		Thread.sleep(2000);
//		driver.findElement(By.tagName("button")).click();
//
//	} catch (InterruptedException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}


		
	return url;
	}
}
