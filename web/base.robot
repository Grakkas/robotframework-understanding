***Settings***
Library    SeleniumLibrary

***Variables***
${url}    http://training-wheels-protocol.herokuapp.com/

**Keywords***
Nova sessao
    Open Browser    ${url}    chrome

Encerrar sessao
    Sleep            2
    Close Browser