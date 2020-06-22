**Settings***
Library    app.py

***Test Cases***
Deve retornar mensagem de boas vindas
    ${result}=         Welcome      Gabriel 
    Should Be Equal    ${result}    Olá Gabriel, bem vindo ao curso básico de Robot Framework!