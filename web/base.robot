***Settings***
Library    SeleniumLibrary

***Variables***
${url}    http://training-wheels-protocol.herokuapp.com/

**Keywords***
Nova sessao
    Open Browser               ${url}    chrome
    Maximize Browser Window

Realizar Login
    [Arguments]      ${username}                 ${password}
    Input Text       css:input[name=username]    ${username}
    Input Text       css:input[name=password]    ${password}
    Click Element    class:btn-login

Validar Login
    [Arguments]       ${expected_message}
    ${message}=       Get WebElement         id:flash 
    Should Contain    ${message.text}        ${expected_message}

Encerrar sessao
    Sleep                      2
    Capture Page Screenshot
    Close Browser