package guru99TestCases;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Locaters {

	public static void main(String[] args) {

		WebDriverManager.edgedriver().setup();
		WebDriver driver = new EdgeDriver();
		
//		Find by name  .........................
		driver.get("http://demo.guru99.com/test/newtours/");

		driver.findElement(By.name("userName")).sendKeys("PratikBharambe");
		driver.findElement(By.name("password")).sendKeys("HelloWorld");
		driver.findElement(By.name("submit")).click();
		
		driver.get("http://demo.guru99.com/test/newtours/");
		driver.findElement(By.name("submit")).click();

		driver.close();

	}

}
