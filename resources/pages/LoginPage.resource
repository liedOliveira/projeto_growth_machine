*** Settings ***
Documentation    Ações e elementos da página de login

Library    Browser

*** Variables ***
${user_email}                  alan_nichols_717@growthmachine.com.br
${user_pass}                   senha123
${LOGIN_PAGE_INPUT_EMAIL}      css=input[type='email']
${LOGIN_PAGE_INPUT_SENHA}      css=input[type='password']
${LOGIN_PAGE_BUTTON_ENTRAR}    xpath=//button[contains(.,'Entrar')]

*** Keywords ***
Enviar formulário de login
    [Arguments]    ${email}=${user_email}    ${password}=${user_pass}
    [Documentation]    Preenche o email, a senha e faz login

    Fill Text    ${LOGIN_PAGE_INPUT_EMAIL}        ${email}
    Fill Text    ${LOGIN_PAGE_INPUT_SENHA}        ${password}

    Click    ${LOGIN_PAGE_BUTTON_ENTRAR}
Exibir mensagem de erro no login
    [Arguments]    ${text}
    [Documentation]    Garante a exibição da mensagem de erro de login

    Wait For Elements State    //span[contains(.,'${text}')]    visible    


Fazer logout
    [Documentation]    Faz logout    

    Click    xpath=//button[contains(.,'UT')]
    Click    xpath=//a[contains(.,'Sair')]