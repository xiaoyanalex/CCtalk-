*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${url}  http://118.31.19.120:3000/
${browser}  Chrome
${register_url}     http://118.31.19.120:3000/signup
${title}    CNode：Node.js专业中文社区



*** Keywords ***
Open browser to register page
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Click Element   link:注册

Input content
    [Arguments]     ${username}     ${password}        ${re_password}   ${email}
    Input Text  id:loginname        ${username}
    Input Text  id:pass     ${password}
    Input Text  id:re_pass      ${re_password}
    Input Text  id:email        ${email}

submit
    Click Element   css:.span-primary

