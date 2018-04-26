package net.ed.yahoofinancescraper.controllers;

import java.io.IOException;
import org.openqa.selenium.WebDriver;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.openqa.selenium.chrome.ChromeDriver;


@Component
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
		return "list-stocks";
	}
	
	
	// add support for chrome driver
//	String keyx = "webdriver.chrome.driver";
//	String valuex = "/Users/melocal/Applications/lib/chromedriver";
//	System.setProperty(keyx, valuex);
	
//	final WebDriver driver;
	
//	WebDriver driver = new ChromeDriver(); // launch chrome
////	driver.manage().window().maximize(); // maximize chrome browser
//	driver.switchTo().window(driver.getTitle()).manage().window().maximize();
//	driver.manage().deleteAllCookies(); // exactly what it says
//	
////	// dynamic wait
//	driver.manage().timeouts().pageLoadTimeout(40, TimeUnit.SECONDS);
//	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

//	String username = "edwd42@yahoo.com";
//	String password = "@nc!rr#ct";

//	LoginInfo loginInfo = new LoginInfo();
//	username = loginInfo.getUsername();
//	password = loginInfo.getPassword();
//	System.out.println("216. inside StockControllerServlet.launcher() " + username + " " + password);
	
//	try {
//		// open login.jsp
//		String url = "http://localhost:8080/YahooFinanceScraper/login.jsp";
//		driver.get(url);
//		Thread.sleep(2000);
//		driver.findElement(By.name("username")).sendKeys(username); // fill in the blanks
//		Thread.sleep(2000);
//		driver.findElement(By.name("password")).sendKeys(password);
//		Thread.sleep(2000);
//		String driver_url = driver.getCurrentUrl();
//		String session_id = driver.getWindowHandle().toString();
//		System.out.println("59. " + driver_url + " " + session_id);
//		
//		driver.findElement(By.tagName("button")).click();
//		// after button is clicked, control passes to StockControllerServlet 
//		// because of login.jsp <form action=StockControllerServlet
//	} catch (InterruptedException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}

	
}
