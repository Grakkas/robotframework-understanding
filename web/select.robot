***Settings***
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerrar sessao

***Variables***
${select_ScottLang}    Scott Lang
${select_Loki}         6

***Test Cases***
Should select an option by its Label
    Go To                        ${url}/dropdown
    Select From List By Label    class:avenger-list         ${select_ScottLang} 
    ${selected}=                 Get Selected List Value    class:avenger-list
    Should Be Equal              ${selected}                7

Should select an option by its Value
    Go To                        ${url}/dropdown
    Select From List By Value    id:dropdown                ${select_Loki} 
    ${selected}=                 Get Selected List Label    class:avenger-list
    Should Be Equal              ${selected}                Loki