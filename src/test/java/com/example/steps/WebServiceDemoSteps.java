package com.example.steps;

import com.example.GetResponse;
import com.example.Utils;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;
import org.jbehave.core.model.ExamplesTable;

/**
 * RestAPI-AddressValidation
 * Created by Chamila Ambahera on 12/23/2018.
 * chamila.ambahera@gmail.com
 */

public class WebServiceDemoSteps {
    @Given("URL : $url")
    public void setEndPoint(String url){
        GetResponse.setRestURI(url);
    }

    @When("Send Request with  AddressLine1 : $addressLines and AddressLine2 : $addressLine2")
    public void setRequest(String addressLine1, String addressLine2){
        if (addressLine1.equalsIgnoreCase("<not provided>"))
            addressLine1 = "";

        if (addressLine2.equalsIgnoreCase("<not provided>"))
            addressLine2 = "";
        GetResponse.sendRequest(addressLine1 , addressLine2);
    }

    @Then("Validate Response : $response")
    public void validateResponse(ExamplesTable response){
        GetResponse.validateResponse(Utils.ToAddress(response));
    }



}
