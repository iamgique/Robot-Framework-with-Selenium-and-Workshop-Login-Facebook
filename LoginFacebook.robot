*** Settings ***
Library    Selenium2Library
Library    BuiltIn
Library    String

Suite Teardown     Close Browser

*** Variable ***
${url_facebook}        https://www.facebook.com
${title_facebook}      Facebook - เข้าสู่ระบบหรือสมัครใช้งาน
${input_user}          //*[@id="email"]
${input_pass}          //*[@id="pass"]
${btn_login}           //*[@class="uiButton uiButtonConfirm"]
${txt_not_me}          //*[@id="not_me_link"]
${txt_message}         //div//textarea[@name="xhpc_message"]
${username_fail}            xxxxx@xxxxx.com
${password_fail}            12345678
${username_success}            iamgique@iamgique.com
${password_success}            iamgique@iamgique.com


*** Test Cases ***
Login facebook - Fail
    [tags]    fail
    Open Browser    about:blank    chrome
    Go To           ${url_facebook}
    Verify facebook page           ${title_facebook}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail}      ${password_fail}
    Click Button Login          ${btn_login}
    Verify Login Fail           ${txt_not_me}

Login facebook - success
    [tags]    success
    Open Browser    about:blank    chrome
    Go To           ${url_facebook}
    Verify facebook page           ${title_facebook}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_success}      ${password_success}
    Click Button Login          ${btn_login}
    Verify Login Success           ${txt_message}

*** Keywords ***
Verify facebook page
    [Arguments]               ${title}
    Title Should Be            ${title}

Input Username and Password
     [Arguments]      ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Element Should Be Visible    ${xpath_user}
     Element Should Be Visible    ${xpath_pass}
     Input Text       ${xpath_user}       ${username}
     Input Text       ${xpath_pass}       ${password}

Click Button Login
     [Arguments]       ${btn}
     Element Should Be Visible    ${btn}
     Click Element        ${btn}

Verify Login Fail
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}

Verify Login Success
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}


