package com.example;

import com.example.api.ResponseAddress;
import org.jbehave.core.model.ExamplesTable;

import java.util.Map;

/**
 * RestAPI-AddressValidation
 * Created by Chamila Ambahera on 12/30/2018.
 * chamila.ambahera@gmail.com
 */


public class Utils {

    public static Address ToAddress(ExamplesTable expectedResponse) {

        Address address = new Address();
        for (Map<String, String> row : expectedResponse.getRows()) {
            String key = row.get("key");
            String value = row.get("value");

            switch (key) {
                case "ErrorCode":
                    address.setErrorCode(Integer.valueOf(value));
                    break;
                case "ErrorMessage":
                    address.setErrorMessage(value);
                    break;
                case "AddressLine1":
                    address.setAddressLine1(value);
                    break;
                case "AddressLine2":
                    address.setAddressLine2(value);
                    break;
                case "Number":
                    address.setNumber(value);
                    break;
                case "PreDir":
                    address.setPreDir(value);
                    break;
                case "Street":
                    address.setStreet(value);
                    break;
                case "Suffix":
                    address.setSuffix(value);
                    break;
                case "PostDir":
                    address.setPostDir(value);
                    break;
                case "Sec":
                    address.setSec(value);
                    break;
                case "SecNumber":
                    address.setSecNumber(value);
                    break;
                case "City":
                    address.setCity(value);
                    break;
                case "State":
                    address.setState(value);
                    break;
                case "Zip":
                    address.setZip(value);
                    break;
                case "Zip4":
                    address.setZip4(value);
                    break;
                case "County":
                    address.setCounty(value);
                    break;
                case "StateFP":
                    address.setStateFP(value);
                    break;
                case "CountyFP":
                    address.setCountyFP(value);
                    break;
                case "CensusTract":
                    address.setCensusTract(value);
                    break;
                case "CensusBlock":
                    address.setCensusBlock(value);
                    break;
                case "Latitude":
                    address.setLatitude(Double.valueOf(value));
                    break;
                case "Longitude":
                    address.setLongitude(Double.valueOf(value));
                    break;
                case "GeoPrecision":
                    address.setGeoPrecision(Integer.valueOf(value));
                    break;
            }
        }
        return address;
    }


    public static void PrintResponse(ResponseAddress address) {
        System.out.println("####### Response ########");
        System.out.println("ErrorCode 	  ::: " + address.getErrorCode());
        System.out.println("ErrorMessage ::: " + address.getErrorMessage());
        System.out.println("AddressLine1 ::: " + address.getAddressLine1());
        System.out.println("AddressLine2 ::: " + address.getAddressLine2());
        System.out.println("Number 		  ::: " + address.getNumber());
        System.out.println("PreDir 		  ::: " + address.getPreDir());
        System.out.println("Street 	 	  ::: " + address.getStreet());
        System.out.println("Suffix 		  ::: " + address.getSuffix());
        System.out.println("PostDir 	  ::: " + address.getPostDir());
        System.out.println("Sec 		  ::: " + address.getSec());
        System.out.println("SecNumber 	  ::: " + address.getSecNumber());
        System.out.println("City 		  ::: " + address.getCity());
        System.out.println("State 		  ::: " + address.getState());
        System.out.println("Zip 		  ::: " + address.getZip());
        System.out.println("Zip4 		  ::: " + address.getZip4());
        System.out.println("County       ::: " + address.getCounty());
        System.out.println("StateFP      ::: " + address.getStateFP());
        System.out.println("CountyFP     ::: " + address.getCountyFP());
        System.out.println("CensusTract  ::: " + address.getCensusTract());
        System.out.println("CensusBlock  ::: " + address.getCensusBlock());
        System.out.println("Latitude     ::: " + address.getLatitude());
        System.out.println("Longitude    ::: " + address.getLongitude());
        System.out.println("GeoPrecision ::: " + address.getGeoPrecision());
        System.out.println("###############");
    }
}
