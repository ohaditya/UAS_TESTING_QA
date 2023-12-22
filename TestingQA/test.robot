*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://demoqa.com/text-box
${BROWSER}        Chrome

*** Test Cases ***
Testcase-Input-Text
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    xpath://input[@id='userName']    timeout=10s
    Input Text        id:userName            Muhammad Iqbal
    Input Text        id:userEmail           iqbal@gmail.com
    Input Text        id:currentAddress      Bogor,Indonesia.
    Input Text        id:permanentAddress    Bogor,Indonesia.
    Click Element    xpath://button[@id='submit']
    Sleep            100s
