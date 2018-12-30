YAddress Web service validation stories

Narrative:
In order to validate response from https://www.yaddress.net/api/address
As a developer, QA
I want to validate response

Scenario: #1 Verify success code for valid all inputs
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : Marlborough, MA 01752
Then Validate Response :
| key          | value                      |
| ErrorCode    | 0                          |
| ErrorMessage |                            |
| AddressLine1 | 122 DONALD LYNCH BLVD      |
| AddressLine2 | MARLBOROUGH, MA 01752-4720 |
| Number       | 122                        |
| PreDir       |                            |
| Street       | DONALD LYNCH               |
| Suffix       | BLVD                       |
| PostDir      |                            |
| Sec          |                            |
| SecNumber    |                            |
| City         | MARLBOROUGH                |
| State        | MA                         |
| Zip          | 01752                      |
| Zip4         | 4720                       |
| County       | MIDDLESEX                  |
| StateFP      | 25                         |
| CountyFP     | 017                        |
| CensusTract  |                            |
| CensusBlock  |                            |
| Latitude     | 42.349157                  |
| Longitude    | -71.544146                 |
| GeoPrecision | 3                          |


Scenario: #2 Verify success code for valid AddressLine2
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : <not provided> and AddressLine2 : Marlborough, MA 01752
Then Validate Response :
| key          | value                 |
| ErrorCode    | 0                     |
| ErrorMessage |                       |
| AddressLine1 |                       |
| AddressLine2 | MARLBOROUGH, MA 01752 |
| Number       |                       |
| PreDir       |                       |
| Street       |                       |
| Suffix       |                       |
| PostDir      |                       |
| Sec          |                       |
| SecNumber    |                       |
| City         | MARLBOROUGH           |
| State        | MA                    |
| Zip          | 01752                 |
| Zip4         |                       |
| County       | MIDDLESEX             |
| StateFP      | 25                    |
| CountyFP     | 017                   |
| CensusTract  |                       |
| CensusBlock  |                       |
| Latitude     | 42.349157             |
| Longitude    | -71.544146            |
| GeoPrecision | 3                     |


Scenario: #3 Verify error code for empty AddressLine2
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : <not provided>
Then Validate Response :
| key          | value                                        |
| ErrorCode    | 2                                            |
| ErrorMessage | Invalid address: invalid City-State-Zip line |
| AddressLine1 | 122,DONALD LYNCH BLVD                        |
| AddressLine2 |                                              |
| Number       |                                              |
| PreDir       |                                              |
| Street       |                                              |
| Suffix       |                                              |
| PostDir      |                                              |
| Sec          |                                              |
| SecNumber    |                                              |
| City         |                                              |
| State        |                                              |
| Zip          |                                              |
| Zip4         |                                              |
| County       |                                              |
| StateFP      |                                              |
| CountyFP     |                                              |
| CensusTract  |                                              |
| CensusBlock  |                                              |
| Latitude     | 0.0                                          |
| Longitude    | 0.0                                          |
| GeoPrecision | 0                                            |


Scenario: #4 Verify error code for empty Address lines
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : <not provided> and AddressLine2 : <not provided>
Then Validate Response :
| key          | value                                        |
| ErrorCode    | 2                                            |
| ErrorMessage | Invalid address: invalid City-State-Zip line |
| AddressLine1 |                                              |
| AddressLine2 |                                              |
| Number       |                                              |
| PreDir       |                                              |
| Street       |                                              |
| Suffix       |                                              |
| PostDir      |                                              |
| Sec          |                                              |
| SecNumber    |                                              |
| City         |                                              |
| State        |                                              |
| Zip          |                                              |
| Zip4         |                                              |
| County       |                                              |
| StateFP      |                                              |
| CountyFP     |                                              |
| CensusTract  |                                              |
| CensusBlock  |                                              |
| Latitude     | 0.0                                          |
| Longitude    | 0.0                                          |
| GeoPrecision | 0                                            |

Scenario: #5 Verify success code for empty zip
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : Marlborough, MA
Then Validate Response :
| key          | value                      |
| ErrorCode    | 0                          |
| ErrorMessage |                            |
| AddressLine1 | 122 DONALD LYNCH BLVD      |
| AddressLine2 | MARLBOROUGH, MA 01752-4720 |
| Number       | 122                        |
| PreDir       |                            |
| Street       | DONALD LYNCH               |
| Suffix       | BLVD                       |
| PostDir      |                            |
| Sec          |                            |
| SecNumber    |                            |
| City         | MARLBOROUGH                |
| State        | MA                         |
| Zip          | 01752                      |
| Zip4         | 4720                       |
| County       | MIDDLESEX                  |
| StateFP      | 25                         |
| CountyFP     | 017                        |
| CensusTract  |                            |
| CensusBlock  |                            |
| Latitude     | 42.349157                  |
| Longitude    | -71.544146                 |
| GeoPrecision | 3                          |

Scenario: #6 Verify success code for State code
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : Marlborough, 01752
Then Validate Response :
| key          | value                      |
| ErrorCode    | 0                          |
| ErrorMessage |                            |
| AddressLine1 | 122 DONALD LYNCH BLVD      |
| AddressLine2 | MARLBOROUGH, MA 01752-4720 |
| Number       | 122                        |
| PreDir       |                            |
| Street       | DONALD LYNCH               |
| Suffix       | BLVD                       |
| PostDir      |                            |
| Sec          |                            |
| SecNumber    |                            |
| City         | MARLBOROUGH                |
| State        | MA                         |
| Zip          | 01752                      |
| Zip4         | 4720                       |
| County       | MIDDLESEX                  |
| StateFP      | 25                         |
| CountyFP     | 017                        |
| CensusTract  |                            |
| CensusBlock  |                            |
| Latitude     | 42.349157                  |
| Longitude    | -71.544146                 |
| GeoPrecision | 3                          |

Scenario: #7 Verify success code for empty State code and City
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : 01752
Then Validate Response :
| key          | value                      |
| ErrorCode    | 0                          |
| ErrorMessage |                            |
| AddressLine1 | 122 DONALD LYNCH BLVD      |
| AddressLine2 | MARLBOROUGH, MA 01752-4720 |
| Number       | 122                        |
| PreDir       |                            |
| Street       | DONALD LYNCH               |
| Suffix       | BLVD                       |
| PostDir      |                            |
| Sec          |                            |
| SecNumber    |                            |
| City         | MARLBOROUGH                |
| State        | MA                         |
| Zip          | 01752                      |
| Zip4         | 4720                       |
| County       | MIDDLESEX                  |
| StateFP      | 25                         |
| CountyFP     | 017                        |
| CensusTract  |                            |
| CensusBlock  |                            |
| Latitude     | 42.349157                  |
| Longitude    | -71.544146                 |
| GeoPrecision | 3                          |


Scenario: #8 Verify error code for empty Zip code and State code
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : Marlborough
Then Validate Response :
| key          | value                                  |
| ErrorCode    | 2                                      |
| ErrorMessage | Invalid address: no Zip or State given |
| AddressLine1 | 122, DONALD LYNCH BLVD                 |
| AddressLine2 | MARLBOROUGH                            |
| Number       |                                        |
| PreDir       |                                        |
| Street       |                                        |
| Suffix       |                                        |
| PostDir      |                                        |
| Sec          |                                        |
| SecNumber    |                                        |
| City         | MARLBOROUGH                            |
| State        |                                        |
| Zip          |                                        |
| Zip4         |                                        |
| County       |                                        |
| StateFP      |                                        |
| CountyFP     |                                        |
| CensusTract  |                                        |
| CensusBlock  |                                        |
| Latitude     | 0.0                                    |
| Longitude    | 0.0                                    |
| GeoPrecision | 0                                      |


Scenario: #9 Verify error code for empty Zip code and City
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : MA
Then Validate Response :
| key          | value                        |
| ErrorCode    | 3                            |
| ErrorMessage | Street not found in Zip code |
| AddressLine1 | 122, DONALD LYNCH BLVD       |
| AddressLine2 | MA                           |
| Number       | 122                          |
| PreDir       |                              |
| Street       |                              |
| Suffix       |                              |
| PostDir      |                              |
| Sec          |                              |
| SecNumber    |                              |
| City         |                              |
| State        | MA                           |
| Zip          |                              |
| Zip4         |                              |
| County       |                              |
| StateFP      |                              |
| CountyFP     |                              |
| CensusTract  |                              |
| CensusBlock  |                              |
| Latitude     | 42.230147                    |
| Longitude    | -71.527131                   |
| GeoPrecision | 3                            |

Scenario: #10 Verify error code for empty Street address
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122 and AddressLine2 : Marlborough, MA 01752
Then Validate Response :
| key          | value                                        |
| ErrorCode    | 2                                            |
| ErrorMessage | Invalid address: invalid street address line |
| AddressLine1 | 122                                          |
| AddressLine2 | MARLBOROUGH, MA 01752                        |
| Number       |                                              |
| PreDir       |                                              |
| Street       |                                              |
| Suffix       |                                              |
| PostDir      |                                              |
| Sec          |                                              |
| SecNumber    |                                              |
| City         | MARLBOROUGH                                  |
| State        | MA                                           |
| Zip          | 01752                                        |
| Zip4         |                                              |
| County       | MIDDLESEX                                    |
| StateFP      | 25                                           |
| CountyFP     | 017                                          |
| CensusTract  |                                              |
| CensusBlock  |                                              |
| Latitude     | 42.349157                                    |
| Longitude    | -71.544146                                   |
| GeoPrecision | 3                                            |

Scenario: #11 Verify error code for empty house number
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : Donald Lynch Blvd and AddressLine2 : Marlborough, MA 01752
Then Validate Response :
| key          | value                              |
| ErrorCode    | 8                                  |
| ErrorMessage | No such house number in the street |
| AddressLine1 | DONALD LYNCH BLVD                  |
| AddressLine2 | MARLBOROUGH, MA 01752              |
| Number       |                                    |
| PreDir       |                                    |
| Street       | DONALD LYNCH                       |
| Suffix       | BLVD                               |
| PostDir      |                                    |
| Sec          |                                    |
| SecNumber    |                                    |
| City         | MARLBOROUGH                        |
| State        | MA                                 |
| Zip          | 01752                              |
| Zip4         |                                    |
| County       | MIDDLESEX                          |
| StateFP      | 25                                 |
| CountyFP     | 017                                |
| CensusTract  |                                    |
| CensusBlock  |                                    |
| Latitude     | 42.349157                          |
| Longitude    | -71.544146                         |
| GeoPrecision | 3                                  |


Scenario: #12 Verify error code for invalid house number
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 1000, Donald Lynch Blvd and AddressLine2 : Marlborough, MA 01752
Then Validate Response :
| key          | value                              |
| ErrorCode    | 8                                  |
| ErrorMessage | No such house number in the street |
| AddressLine1 | 1000 DONALD LYNCH BLVD             |
| AddressLine2 | MARLBOROUGH, MA 01752              |
| Number       | 1000                               |
| PreDir       |                                    |
| Street       | DONALD LYNCH                       |
| Suffix       | BLVD                               |
| PostDir      |                                    |
| Sec          |                                    |
| SecNumber    |                                    |
| City         | MARLBOROUGH                        |
| State        | MA                                 |
| Zip          | 01752                              |
| Zip4         |                                    |
| County       | MIDDLESEX                          |
| StateFP      | 25                                 |
| CountyFP     | 017                                |
| CensusTract  |                                    |
| CensusBlock  |                                    |
| Latitude     | 42.349157                          |
| Longitude    | -71.544146                         |
| GeoPrecision | 3                                  |

Scenario: #13 Verify success code for partial street name
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch and AddressLine2 : Marlborough, MA 01752
Then Validate Response :
| key          | value                      |
| ErrorCode    | 0                          |
| ErrorMessage |                            |
| AddressLine1 | 122 DONALD LYNCH BLVD      |
| AddressLine2 | MARLBOROUGH, MA 01752-4720 |
| Number       | 122                        |
| PreDir       |                            |
| Street       | DONALD LYNCH               |
| Suffix       | BLVD                       |
| PostDir      |                            |
| Sec          |                            |
| SecNumber    |                            |
| City         | MARLBOROUGH                |
| State        | MA                         |
| Zip          | 01752                      |
| Zip4         | 4720                       |
| County       | MIDDLESEX                  |
| StateFP      | 25                         |
| CountyFP     | 017                        |
| CensusTract  |                            |
| CensusBlock  |                            |
| Latitude     | 42.349157                  |
| Longitude    | -71.544146                 |
| GeoPrecision | 3                          |

Scenario: #14 Verify success code for partial City name
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : Marlb, MA 01752
Then Validate Response :
| key          | value                      |
| ErrorCode    | 0                          |
| ErrorMessage |                            |
| AddressLine1 | 122 DONALD LYNCH BLVD      |
| AddressLine2 | MARLBOROUGH, MA 01752-4720 |
| Number       | 122                        |
| PreDir       |                            |
| Street       | DONALD LYNCH               |
| Suffix       | BLVD                       |
| PostDir      |                            |
| Sec          |                            |
| SecNumber    |                            |
| City         | MARLBOROUGH                |
| State        | MA                         |
| Zip          | 01752                      |
| Zip4         | 4720                       |
| County       | MIDDLESEX                  |
| StateFP      | 25                         |
| CountyFP     | 017                        |
| CensusTract  |                            |
| CensusBlock  |                            |
| Latitude     | 42.349157                  |
| Longitude    | -71.544146                 |
| GeoPrecision | 3                          |

Scenario: #15 Verify error code for invalid city name in the state
Given URL : https://www.yaddress.net/api/address
When Send Request with  AddressLine1 : 122, Donald Lynch Blvd and AddressLine2 : NEW YORK, MA
Then Validate Response :
| key          | value                   |
| ErrorCode    | 4                       |
| ErrorMessage | City not found in state |
| AddressLine1 | 122, DONALD LYNCH       |
| AddressLine2 | NEW YORK, MA            |
| Number       | 122                     |
| PreDir       |                         |
| Street       |                         |
| Suffix       |                         |
| PostDir      |                         |
| Sec          |                         |
| SecNumber    |                         |
| City         | NEW YORK                |
| State        | MA                      |
| Zip          |                         |
| Zip4         |                         |
| County       |                         |
| StateFP      |                         |
| CountyFP     |                         |
| CensusTract  |                         |
| CensusBlock  |                         |
| Latitude     | 42.230147               |
| Longitude    | -71.527131              |
| GeoPrecision | 1                       |