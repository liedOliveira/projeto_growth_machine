*** Settings ***
Documentation    Cenários de teste de login

Resource    ../resources/base.resource

Test Setup    Start session

*** Test Cases ***

Realizar Login com dados válidos
    [Documentation]
    ...    Given que o usuário está na página de login
    ...    And insere email e senha corretos
    ...    When o usuário clica em "Entrar"
    ...    Then o usuário é logado no sistema

    Enviar formulário de login
    Exibir título da home page    Banco de Atividades
    
Tentar realizar login com campo email vazio
    [Documentation]
    ...    Given que o usuário está na página de login
    ...    And insere somente a senha correta
    ...    When o usuário clica em "Entrar"
    ...    Then o usuário não é logado no sistema

    Enviar formulário de login          email=${EMPTY}        
    Exibir mensagem de erro no login    *E-mail ou senha inválidos

Tentar realizar login com email incorreto
    [Documentation]
    ...    Given que o usuário está na página de login
    ...    And insere um email incorreto
    ...    When o usuário clica em "Entrar"
    ...    Then o usuário não é logado no sistema
    
    Enviar formulário de login          email=liedson18@teste.com        
    Exibir mensagem de erro no login    *E-mail ou senha inválidos

Tentar realizar login com email no formato inválido
    [Documentation]
    ...    Given que o usuário está na página de login
    ...    And insere um email com formato inválido
    ...    When o usuário clica em "Entrar"
    ...    Then o usuário não é logado no sistema

    Enviar formulário de login          email=@liedson.teste     
    Exibir mensagem de erro no login    *E-mail ou senha inválidos

Tentar realizar login com campo senha vazio
    [Documentation]
    ...    Given que o usuário está na página de login
    ...    And insere somente o email correto
    ...    When o usuário clica em "Entrar"
    ...    Then o usuário não é logado no sistema

    Enviar formulário de login          password=${EMPTY}
    Exibir mensagem de erro no login    *E-mail ou senha inválidos

Tentar realizar login com senha incorreta
    [Documentation]
    ...    Given que o usuário está na página de login
    ...    And insere uma senha incorreta
    ...    When o usuário clica em "Entrar"
    ...    Then o usuário não é logado no sistema

    Enviar formulário de login          password=liedson.teste
    Exibir mensagem de erro no login    *E-mail ou senha inválidos

Realizar logout
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário realiza o logout
    ...    Then o usuário é redirecionado para a página de login

    Enviar formulário de login
    Fazer logout
    Get Title    equal    Login - Growth Station
