package testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class TestCustom {

	public static void main(String[] args) {
		WebDriver driver = new FirefoxDriver();
		driver.get("https://agility-agility-7016-dev-ed.cs70.my.salesforce.com/secur/frontdoor.jsp?sid=00D3D000000Cudh!ASAAQDvPYzeQKAMZU3rKRoROmpBzL6NIjvyW3mklixECZCa6Tv98I8NKIqULNoh6c4bus3c4yq_O8DiKguWfHYSHa0g67OHR");
		String anotherpage="https://agility-agility-7016-dev-ed--c.cs70.visual.force.com/apex/Login_VF";
		if(anotherpage != null)
		{
			driver.get(anotherpage);
			driver.findElement(By.id("j_id0:j_id2:username")).sendKeys("raja");
			driver.findElement(By.id("j_id0:j_id2:passkey")).sendKeys("admin");
			driver.findElement(By.id("j_id0:j_id2:Submit")).click();
		}
	}

}
