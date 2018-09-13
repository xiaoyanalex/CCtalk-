*** Settings ***
Documentation      A single testcase for sendTopic
Resource        resourceSend.robot

*** Test Cases ***
sendTopic
    Open browser to login page
    Input username  testuser4
    Input password  123456
    Submit
    SendTopicButton
    Choose block
    Locate title
    Input Topic_title  皆非自渡皆非
    Input Topic_content
    Submit topic   