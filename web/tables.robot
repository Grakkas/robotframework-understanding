***Settings***
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerrar sessao

***Variables***
${value_FirstRow}    $ 10.000.000

***Test Cases***
Should check the value by entering the line number
    [tags]                      tables_FindAndValidateByLineNumber
    Go To                       ${url}/tables
    Table Row Should Contain    id:actors                             1    ${value_FirstRow}


Should Find the line by the key text and validate the other values
    [tags]            tables_FindAndValidateByKeyText
    Go To             ${url}/tables
    ${target}=        Get WebElement                     xpath:.//tr[contains(.,'@robertdowneyjr')]
    Should Contain    ${target.text}                     @robertdowneyjr
    Should Contain    ${target.text}                     Homem de Ferro
    Should Contain    ${target.text}                     Vingadores