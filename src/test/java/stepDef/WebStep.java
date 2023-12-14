package stepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class WebStep {
    @Given("user go to login page")
    public void userGoToLoginPage() {
    }

    @And("user input username {}")
    public void userInputUsername(String username) {
    }

    @And("user input pwd {}")
    public void userInputPwd(String pwd) {
    }

    @And("user click button login")
    public void userClickButtonLogin() {
    }

    @Then("validation users can show side nav")
    public void validationUsersCanShowSideNav() {
    }

    @And("user click sign up button")
    public void clickSignUpButton() {
    }
}
