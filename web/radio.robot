***Settings***
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerrar sessao

**Variables***
${radio_capAmerica}            cap
${radio_guardioesDaGalaxia}    guardians

**Test Cases***
Should mark an radio button by its ID
    [tags]                           radio_MarkByID
    Go To                            ${url}/radios
    Select Radio Button              movies            ${radio_capAmerica}
    Radio Button Should Be Set To    movies            ${radio_capAmerica}

Should mark an radio button by its Value
    [tags]                           radio_MarkByValue
    Go To                            ${url}/radios
    Select Radio Button              movies               ${radio_guardioesDaGalaxia}
    Radio Button Should Be Set To    movies               ${radio_guardioesDaGalaxia}