# RestAPI-AddressValidation demo code
Demo project using JBehave,JUnit,Jersey,Gradle for testing **webservices using JBehave**

This project was written using YAddress, https://www.yaddress.net/api/address  URI

**Prerequisites**
1. Java 8 
2. Gradle latest
3. InteliJ IDEA / Eclipse IDE

**Package Structure**

|    |          |Package/Class name       | Description                                      |
|----|----------|--------------------------|-------------------------------------------------|
|main| Java     | com.example.api          | Contains classes related to response            |
|main|          | GetResponse Class        | Contains actual methods which calls webservice  |
|main| Resource | WebServiceDemo_steps.xml | Sprint file which initiate application context  |
|test| Java     | com.exmaple.steps        | Story definition                                |  
|test|          | WebServiceDemoStories    | Execution class                                 | 
|test| Resource | com.example.stories      | JBehave story file which describes the test case|
|    |          |.travis.yml               | Travis CI config file                           |
|    |          | build.gradle             | Gradle build file                               |

YAddress Test Cases.xls file contains test cases covered in the story file



**Import project**

If you need to import project files to your IDE please run commands

gradle idea (for IDEA IDE) or
gradle eclipse (for Eclipse IDE)


**Build Project**

gradle clean build or use your IDE


**Test Execution**

1. Using JUnit
Right click on WebServiceDemoStories and run as JUnit test.

2. Using Gradle
Execute command "gradle test"


**View Test Execution Reports**

1. Gradle report
    Navigate to build\reports\tests\test and open index.html file using any web browser or double click to open using default web browser.
2. JBehave report
    Navigate to build\classes\jbehave and open com.example.stories.webServiceDemo.html file using any web browser or double click to open using default web browser. 


**CI support**

This project has enabled Travis CI support using travis-ci.org. Report
https://travis-ci.org/chamiz/RestAPI-AddressValidation


 
If you need further clarifications or enhancement requests on this project please contact me via email.

Cheers

Chamila Ambahera
chamila.ambahera@gmail.com
