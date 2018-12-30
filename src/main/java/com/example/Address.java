package com.example;

/**
 * RestAPI-AddressValidation
 * Created by Chamila Ambahera on 12/23/2018.
 * chamila.ambahera@gmail.com
 */

public class Address {

    private Integer errorCode;
    private String errorMessage;
    private String addressLine1;
    private String addressLine2;
    private String number;
    private String preDir;
    private String street;
    private String suffix;
    private String postDir;
    private String sec;
    private String secNumber;
    private String city;
    private String state;
    private String zip;
    private String zip4;
    private String county;
    private String stateFP;
    private String countyFP;
    private String censusTract;
    private String censusBlock;
    private Double latitude;
    private Double longitude;
    private Integer geoPrecision;

    public Integer getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(Integer errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPreDir() {
        return preDir;
    }

    public void setPreDir(String preDir) {
        this.preDir = preDir;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public String getPostDir() {
        return postDir;
    }

    public void setPostDir(String postDir) {
        this.postDir = postDir;
    }

    public String getSec() {
        return sec;
    }

    public void setSec(String sec) {
        this.sec = sec;
    }

    public String getSecNumber() {
        return secNumber;
    }

    public void setSecNumber(String secNumber) {
        this.secNumber = secNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getZip4() {
        return zip4;
    }

    public void setZip4(String zip4) {
        this.zip4 = zip4;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getStateFP() {
        return stateFP;
    }

    public void setStateFP(String stateFP) {
        this.stateFP = stateFP;
    }

    public String getCountyFP() {
        return countyFP;
    }

    public void setCountyFP(String countyFP) {
        this.countyFP = countyFP;
    }

    public String getCensusTract() {
        return censusTract;
    }

    public void setCensusTract(String censusTract) {
        this.censusTract = censusTract;
    }

    public String getCensusBlock() {
        return censusBlock;
    }

    public void setCensusBlock(String censusBlock) {
        this.censusBlock = censusBlock;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Integer getGeoPrecision() {
        return geoPrecision;
    }

    public void setGeoPrecision(Integer geoPrecision) {
        this.geoPrecision = geoPrecision;
    }
}
