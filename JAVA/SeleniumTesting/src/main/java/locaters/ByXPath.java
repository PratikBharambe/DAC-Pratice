package locaters;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class ByXPath {

	public static void main(String[] args) {

		WebDriverManager.edgedriver().setup();
		WebDriver driver = new EdgeDriver();

		driver.get("https://demo.guru99.com/test/selenium-xpath.html");
		driver.manage().window().maximize();
		
//		Relative XPath ...............................
		String str = driver.findElement(By.xpath("//*[@id=\"java_technologies\"]/li[10]/a")).getText();
		System.out.println("The string is " + str);
		driver.findElement(By.xpath("//*[@id=\"java_technologies\"]/li[10]/a")).click();
		
		driver.close();
		

	}

}
