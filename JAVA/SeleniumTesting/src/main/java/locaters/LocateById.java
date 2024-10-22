package locaters;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class LocateById {
	
	public static void main(String[] args) {
		
		WebDriverManager.edgedriver().setup();
		WebDriver driver = new EdgeDriver();
		
		driver.manage().window().maximize();
		
		driver.get("https://demo.guru99.com/test/facebook.html");
		driver.findElement(By.id("email")).sendKeys("1234567890");
		driver.findElement(By.id("pass")).sendKeys("testDemo");
		driver.findElement(By.id("u_0_b")).click();
		
		driver.close();
			
	}

}
