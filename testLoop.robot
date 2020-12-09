*** Settings ***
Documentation     Un test care intra pe emag, si cumpara PS5 xD
Library           SeleniumLibrary

*** Test Cases ***
For-Loop-In-Range
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}