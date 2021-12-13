package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.Keys;

import java.util.List;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private Scenario scenario;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "/Users/Carles/Downloads/chromedriver.exe");
        driver = new ChromeDriver();
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
        driver.manage().window().maximize();
    }

    @Given("I go to the home page")
    public void iGoToTheHomePage() {
        driver.get("https://www.eneba.com/es/");
    }

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButton(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_text) {
        driver.findElement(By.linkText(button_text)).click();
    }


    @When("Submit form {string}")
    public void submitForm(String button_text) {

        driver.findElement(By.cssSelector("button."+button_text)).click();
    }
    @When("I Click in link {string}")
    public void submitLink(String button_text) {

        driver.findElement(By.cssSelector("a."+button_text)).click();
    }

    @And("I take a screenshot with filename {string}")
    public void iTakeAScreenshotWithFilename(String filename) {
        byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", "filename");
    }
    @And("I fill the field {string} with the information {string}")
    public void fillField(String field, String value){
        By byXPath = By.xpath("//*[contains(text(),'" + field + "')]");
       // WebElement ele = driver.findElement(By.id("username").sendKeys("abc@gmail.com");
        WebElement ele = driver.findElement(By.id(field));
        ele.sendKeys(value);

    }
    @And("I fill the field with name {string} with the information {string}")
    public void fillFieldType(String field, String value){
        By byXPath = By.xpath("//*[contains(text(),'" + field + "')]");
        // WebElement ele = driver.findElement(By.id("username").sendKeys("abc@gmail.com");
        WebElement ele = driver.findElement(By.cssSelector(field));
        ele.sendKeys(value);
    }
    @When("Press Enter of field {string}")
    public void pressEnter(String field){
        WebElement ele = driver.findElement(By.cssSelector(field));
        ele.sendKeys(Keys.ENTER);
    }

    @And("Wait {int}")
    public void wait(int time){
        try {
            Thread.sleep(time);
        }catch(InterruptedException ie){ System.out.println("Sleep need to be positive");}
    }

    @When("Select from list the item {int}")
    public void selectFromGrid(int item){
      WebElement grid = driver.findElement(By.cssSelector("div.JZCH_t"));
      By locAllRows = By.xpath(".//*[contains(@class,'oSVLlh')]//*[contains(@class,'oSVLlh')]");
      List<WebElement> allRows = grid.findElements(By.cssSelector("a.oSVLlh"));
      allRows.get(item).click();
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
