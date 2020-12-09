*** Settings ***
Documentation    Un test care intra pe emag, si cumpara PS5 xD
Library          SeleniumLibrary

***Variables***

${url}                   https://auth.emag.ro/user/login
${browser}               Chrome
${userLogin}             mircea.casapu@gmail.com
${passLogin}             parolacontgoogle
${searchProductQuery}    Solid State Drive (SSD) Kingston A400, 480GB, 2.5", SATA III

*** Test Cases ***
PS5 Emag
    Open Browser                 ${url}                                              ${browser}
    Set Browser Implicit Wait    2
    Click Element                //a[contains(text(),'Google')]
    Input Text                   name:identifier                                     ${userLogin}
    Set Browser Implicit Wait    2
    Click Element                class:VfPpkd-RLmnJb
    Input Text                   name:password                                       ${passLogin}
    Reload Page
    Input Text                   name:password                                       ${passLogin}
    Click Element                class:VfPpkd-RLmnJb
    Set Browser Implicit Wait    5
    Click Element                //a[contains(text(),'Favorite')]
    Set Browser Implicit Wait    2
    Click Element                //span[contains(text(),'${searchProductQuery}')]
    Set Browser Implicit Wait    2
    Click Element                //a[contains(text(),'Nu sunt hotărât acum')]

    FOR                          ${i}                                                IN RANGE        999999
    Set Browser Implicit Wait    3
    Reload Page
    Exit For Loop If             ${i} == 999999
    END


    # Click Element                //button[contains(@class,'gtm_t95ovv')]
    # Wait Until Page Contains Element    //button[contains(@class,'yeahIWantThisProduct')]    100s
    # Click Element                       //button[contains(@class,'yeahIWantThisProduct')]
    # Set Browser Implicit Wait    2
    # Click Element                //a[contains(text(), 'Vezi detalii cos')]
    # Set Browser Implicit Wait    2
    # Reload Page
    # Click Element                //a[contains(@class,'gtm_sn11312018')]
    # Set Browser Implicit Wait    2
    # Reload Page
    # Click Element                //a[contains(@class,'gtm_stj738bt')]
    # Reload Page
    # Click Link       class= gtm_sn11312018

    # ${hasAddCartButton} = Get Element Size    //button[contains(text(), 'Adauga in Cos')]

    # Run Keyword If    ${hasAddCartButton} != 0

    # FOR                          ${i}                                     IN RANGE    999999
    # Set Browser Implicit Wait    2
    # Click Element                //a[contains(text(),'Adauga in Cos')]
    # Reload Page

    # Log                 ${i}
    # Exit For Loop If    ${i} == 999999
    # ENDs
    # Log                 Exited