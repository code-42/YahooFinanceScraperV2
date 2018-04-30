package net.ed.downloader.controllers;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.springframework.beans.factory.annotation.Value;

public class LoginController implements ILoginService {
	
	private IWebDriverService webDriverService;
	
	// field-level injection
	@Value("${username}")
	private String username;
	
	@Value("${password}")
	private String password;
	
	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
	
	WebDriver driver;
	
	public LoginController(IWebDriverService theWebDriverService) {
		webDriverService = theWebDriverService;
	}

	@Override
	public String getURL() {
		
		// add support for chrome driver
		String keyx = "webdriver.chrome.driver";
		String valuex = "/Users/melocal/Applications/lib/chromedriver";
		System.setProperty(keyx, valuex);
		
		driver = new ChromeDriver(); // launch chrome

		try {
			Thread.sleep(500);
			String url = "https://login.yahoo.com";
			System.out.print("38. getting URL... ");
			System.out.println(url);
			driver.get(url);
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "list-totals";
	}
	
	@Override
	public String getLogin() {
		
		try {
			Thread.sleep(200);
			System.out.print("56. ");
			System.out.println(username);
			driver.findElement(By.id("login-username")).sendKeys(username); // fill in the blanks
			Thread.sleep(500);
			driver.findElement(By.id("login-signin")).click();
			Thread.sleep(500);
			driver.findElement(By.id("login-passwd")).sendKeys(password);
			Thread.sleep(500);
			driver.findElement(By.id("login-signin")).click();
			Thread.sleep(500);
			getMyPortfolioPage();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return "logged in to yahoo";
	}

	// go to My Portfolio page
	public void getMyPortfolioPage() {
		try {
			Thread.sleep(500);
			// now that i got my cookies, open to my account page
			String url = "https://finance.yahoo.com/portfolio/p_0/view/v1";
			driver.get(url);
			Thread.sleep(500);
	        System.out.println("89. opened My Portfolio page");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}	

