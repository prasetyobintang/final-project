package stepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class ApiStep {
    @Given("prepare url for {string}")
    public void prepareUrlFor(String url) {
    }

    @And("hit api get list users")
    public void hitApiGetListUsers() {

    }

    @Then("validation status code is equals {int}")
    public void validationStatusCodeIsEquals(int status_code) {
    }

    @Then("validation response body get list users")
    public void validationResponseBodyGetListUsers() {
        
    }

    @And("hit api post create new users")
    public void hitApiPostCreateNewUsers() {
        
    }

    @Then("validation response body post create new user")
    public void validationResponseBodyPostCreateNewUser() {
        
    }

    @And("hit api delete new")
    public void hitApiDeleteNew() {
    }
}
