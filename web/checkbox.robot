***Settings***
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerrar sessao

***Variables***
${checkbox_thor}             thor
${checkbox_iron-man}         input[value='iron-man']
${checkbox_black-panther}    //input[@value='black-panther']

***Test Cases***
Should select checkbox by its ID and verify its selection
    [tags]                         checkbox_SelectByID
    Go To                          ${url}/checkboxes
    Select Checkbox                id:${checkbox_thor}
    Checkbox should be selected    id:${checkbox_thor}

Should select checkbox by its CSS Selector and verify its selection
    [tags]                         checkbox_SelectByCSS
    Go To                          ${url}/checkboxes
    Select Checkbox                css:${checkbox_iron-man}
    Checkbox should be selected    css:${checkbox_iron-man}

Should select checkbox by its XPath and verify its selection
    [tags]                         checkbox_SelectByXPath
    Open Browser                   ${url}                             chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                XPath:${checkbox_black-panther}
    Checkbox should be selected    XPath:${checkbox_black-panther}