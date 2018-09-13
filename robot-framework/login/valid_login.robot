*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resourceLogin.robot

*** Test Cases ***
valid login 
    Open browser to login page
    Input username  testuser1
    Input password  123456
    Submit
    Welcome page
    [Teardown]  Close Browser