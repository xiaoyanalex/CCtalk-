*** Settings ***
Documentation     A test suite with a single test for valid register.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resourceReg.robot

*** Test Cases ***
valid register
    Open browser to register page
    Input content  testuer4     123456      123456      18893722140@163.com
    submit