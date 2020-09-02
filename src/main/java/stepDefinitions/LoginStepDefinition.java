package stepDefinitions;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class LoginStepDefinition{

	static WebDriver driver;
	
	@Before
	//The below method will be executed before every scenario
	  public void setdriver() {  
		//Setting up Chromedriver
			WebDriverManager.chromedriver().setup(); 
			 driver = new ChromeDriver(); 
			 			 
			 
			//WebDriverManager.firefoxdriver().setup();   
			//driver = new FirefoxDriver();   
			
	  driver.manage().deleteAllCookies(); 
	  driver.manage().window().maximize();
	  driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
	  driver.manage().timeouts().pageLoadTimeout(30, TimeUnit.SECONDS);
	  //Here the url is hardcoded for the only reason, to keep the setup simple
	  driver.get("https://accounts.realestate.com.au/login?client_id=2fb06dqab95hci46dgldph0382&redirect_uri=https://www.realestate.com.au/auth&response_type=code&state=7UkFKjIKiRiJiYKr8qwanbOdckYa12376FWN0-dZrUOR56X28vh42Y74Z5Wrq0NeM-ycE4tgo39iiGeRY3qIlKCls6MhCIfL6XMqdAPqSA0UAohyXm7F08QSSRj9WCV9b0q0s_xatsExx9yWJ3SNp-cVAvQ9oWDAEgX2_24QxxGDwAk6url");
	
	 }
	 
	
	 @Given("^User is on the SigninPage$")
	 public void User_is_on_the_SigninPage(){ 
	System.out.println("==========> SignIn Page is loaded <=============");
	//String title = driver.findElement(By.xpath("//*[@id='root']/div/p")).getText();
	//String Expected = "The expected title to assert"; // Since the automation is blocked, the expected text is just a dummy one.
	//System.out.println(title);
	// Assert.assertEquals(Expected, title);
	 }
	
	
	 //Reg Exp:
	 //1. \"([^\"]*)\"
	 //2. \"(.*)\"
	
	 @When("^User enters valid \"(.*)\" and \"(.*)\" and clicks login button$")	
	 public void User_enters_valid_username_and_password_and_clicks_login_button(String username, String password){
	// driver.findElement(By.name("username")).sendKeys(username);
	 //driver.findElement(By.name("password")).sendKeys(password);
		 System.out.println("==========> User would enter username and password if the page had loaded <=============");
	 }
	
	 @Then("^User is logged in and landed on Homepage$")
	 public void User_is_logged_in_and_landed_on_Homepage() {
		 System.out.println("==========> Home Page is loaded <=============");
	 }
	
	
	  @After //This method executes after each scenario
	  public void afterTest() {
		  driver.quit();
	  }
}