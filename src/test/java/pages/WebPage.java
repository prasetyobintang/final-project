package pages;

import org.openqa.selenium.By;

import static helper.Utility.driver;

public class WebPage {

    By input_username = By.name("username");
    By input_pwd = By.name("password");
    By btn_login = By.xpath("//button[@type = 'submit']");
    By sidenav_my_indo = By.xpath("//*[text() = 'My Info']");

    public void goToLoginPage() {
        driver.get("https://www.demoblaze.com/");
    }

    public void inputUsername(String username) {
        driver.findElement(input_username).sendKeys(username);
    }

    public void inputPwd(String pwd) {
        driver.findElement(input_pwd).sendKeys(pwd);
    }

    public void clickBtnLogin(){
        driver.findElement(btn_login).click();
    }

    public void assert_show_sidebar_my_info(){
        driver.findElement(sidenav_my_indo).isDisplayed();
    }
}