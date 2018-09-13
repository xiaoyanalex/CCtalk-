*** Settings ***
Documentation       A resource file with reusable keywords and variables
Library           Selenium2Library
Library           BuiltIn

*** Variables ***
${url}  http://118.31.19.120:3000/
${browser}    Chrome
${login url}    http://118.31.19.120:3000/signin
${valid user}   testuser4
${valid password}   123456


*** Keywords ***
Open browser to login page
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element   link:登录

Input username
    [Arguments]     ${username}
    Input Text  id:name     ${username}

Input password
    [Arguments]     ${password}
    Input Text    id:pass    ${password}

Submit
    Click Element   css:.span-primary

SendTopicButton
    Click Element   css:.span-success

Choose block
    Click Element       id:tab-value
    Click Element       Xpath://*[@id="tab-value"]/option[2]

Locate title
    Click Element       id:title

Input Topic_title
    Locate title      
    [Arguments]      ${title}
    Input Text      id:title       ${title}  
      
Locate content
    Mouse Down      class:CodeMirror-code
    Click Element   class:CodeMirror-code

Input Topic_content
    Mouse Down Cliclk Sendkeys      class:CodeMirror-code        最是人间留不住，朱颜辞镜花辞树                     

Submit topic
    Click Element       css:.span-primary.submit_btn
   