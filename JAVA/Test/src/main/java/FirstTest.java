import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class FirstTest {

	public static void main(String[] args) {

		WebDriverManager.edgedriver().setup();
		WebDriver driver = new EdgeDriver();

		driver.manage().window().maximize();

		driver.get("https://novoresume.com/");

		driver.findElement(By.className("n-btn-e n-btn-txt-icon btn-cta")).click();

		driver.close();
	}

}
