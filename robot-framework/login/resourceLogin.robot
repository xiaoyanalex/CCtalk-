*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${url}  http://118.31.19.120:3000/
${browser}    Chrome
${login url}    http://118.31.19.120:3000/signin
${valid user}   testuser4
${valid password}   123456
${title}    CNode：Node.js专业中文社区
${welcome page}     http://118.31.19.120:3000/

*** Keywords ***
Open browser to login page
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element   link:登录

login page title 
    Title Should Be     CNode：Node.js专业中文社区

Go to login page 
    Go To   ${login url}

Input username
    [Arguments]     ${username}
    Input Text  id:name     ${username}

Input password
    [Arguments]     ${password}
    Input Text    id:pass    ${password}

Submit
    Click Element   css:.span-primary

Welcome page
    Location Should Be      ${welcome page}
    Title Should Be     CNode：Node.js专业中文社区