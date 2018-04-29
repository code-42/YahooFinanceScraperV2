package net.ed.downloader.controllers;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:login.properties")
public class DownloadConfig {
	
	// define a bean for NewWebDriverService
	@Bean
	public IWebDriverService newWebDriverService() {
		System.out.println("16. return new NewWebDriverService");
		return new NewWebDriverService();
	}
	
	// define a bean for myWebDriver and DI
	@Bean
	public ILoginService chromeWebDriver() {
		System.out.println("23. return new ChromeWebDriver");
		return new LoginController(newWebDriverService());
	}
}
