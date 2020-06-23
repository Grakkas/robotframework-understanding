***Settings***
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerrar sessao

**Variables***
${radio_capAmerica}            cap
${radio_guardioesDaGalaxia}    guardians

**Test Cases***
Should sign in successfully
    [tags]            login_successfully
    Go To             ${url}/login
    Realizar Login    stark                                           jarvis!
    Validar Login     Olá, Tony Stark. Você acessou a área logada!

Should sign in with a wrong password
    [tags]            login_WrongPassword
    Go To             ${url}/login
    Realizar Login    stark                  1234
    Validar Login     Senha é invalida!

Should sign in with a wrong username
    [tags]            login_WrongUsername
    Go To             ${url}/login
    Realizar Login    grakkas                                     jarvis!
    Validar Login     O usuário informado não está cadastrado!





