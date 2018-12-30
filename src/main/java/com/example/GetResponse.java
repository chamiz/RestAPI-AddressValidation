package com.example;

import com.example.api.ResponseAddress;
import org.junit.Assert;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

/**
 * RestAPI-AddressValidation
 * Created by Chamila Ambahera on 12/23/2018.
 * chamila.ambahera@gmail.com
 */

public class GetResponse {

    private static String REST_URI;
    private static ResponseAddress responseAddress = new ResponseAddress();
    private static Client client = ClientBuilder.newClient();

    /**
     * Set Rest Endpoint
     *
     * @param restURI endpoint
     */

    public static void setRestURI(String restURI) {
        REST_URI = restURI;
    }

    /**
     * Send request
     */

    public static void sendRequest(String addressLine1, String addressLine2) {
            responseAddress = client
                    .target(REST_URI)
                    .queryParam("AddressLine1", addressLine1)
                    .queryParam("AddressLine2", addressLine2)
                    .request(MediaType.APPLICATION_JSON)
                    .get(ResponseAddress.class);
    }


    public static void validateResponse(Address ExpectedAddress) {
        Utils.PrintResponse(responseAddress);
        Assert.assertEquals("Error Code validation failed", ExpectedAddress.getErrorCode(), responseAddress.getErrorCode());
    }


//    public static void main(String args[]) {
//        REST_URI = "https://www.yaddress.net/api/responseAddress";
//        sendRequest("122, Donald Lynch", "Marlborough, MA 01752");
//        Utils.PrintResponse(responseAddress);
//    }




}
