package locaters;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class RadioButton {
	
	public static void main(String[] args) throws InterruptedException {
		
		WebDriverManager.edgedriver().setup();
		WebDriver driver = new EdgeDriver();
		
		driver.get("https://demo.guru99.com/test/ajax.html");
		driver.manage().window().maximize();
		
		Thread.sleep(3000);
		
		driver.findElement(By.id("yes")).click();
		driver.findElement(By.id("buttoncheck")).click();
		
		Thread.sleep(3000);
		
		driver.findElement(By.id("no")).click();
		driver.findElement(By.id("buttoncheck")).click();	
		
		Thread.sleep(3000);
		
		
		driver.close();
		
	}

}
