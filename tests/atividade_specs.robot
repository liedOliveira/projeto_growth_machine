*** Settings ***
Documentation    Ceários de teste de cadastro de atividades

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Take Screenshot

*** Test Cases ***

Criar modelo de atividade do tipo PESQUISA
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário cria um modelo de atividade do tipo PESQUISA
    ...    Then a atividade é exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    Pesquisa
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade    Pesquisa    ${nome_atividade}
    Abrir menu dropdown de opções   ${nome_atividade} 
    Excluir atividade criada    Pesquisa    ${nome_atividade}

Criar modelo de atividade do tipo E-MAIL
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário cria um modelo de atividade do tipo E-MAIL
    ...    Then a atividade é exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade       E-mail
    Set Viewport Size    2292    1108
    Preencher nome da atividade        20
    Preencher descrição da atividade
    Preencher assunto do E-mail    20
    Preencher corpo do E-mail
    Salvar atividade
    Exibir tipo e nome da atividade    E-mail    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    E-mail    ${nome_atividade}

Criar modelo de atividade do tipo LIGAÇÃO
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário cria um modelo de atividade do tipo LIGAÇÃO
    ...    Then a atividade é exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade        Ligação
    Preencher nome da atividade         20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade     Ligação    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    E-mail    ${nome_atividade}

Criar modelo de atividade do tipo LINKEDIN
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário cria um modelo de atividade do tipo LINKEDIN
    ...    Then a atividade é exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    LinkedIn
    Set Viewport Size    1698    821
    Preencher nome da atividade      20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade     LinkedIn    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    LinkedIn    ${nome_atividade}

Criar modelo de atividade do tipo WHATSAPP
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário cria um modelo de atividade do tipo WHATSAPP
    ...    Then a atividade é exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    WhatsApp
    Set Viewport Size    1698    821
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade     WhatsApp    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    WhatsApp    ${nome_atividade}

Tentar criar modelo de atividade do tipo PESQUISA com campos obrigatórios vazios
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário tenta criar um modelo de atividade do tipo PESQUISA
    ...    And não preenche os campos obrigatórios
    ...    Then a atividade não é criada

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    Pesquisa
    Preencher descrição da atividade
    Salvar atividade
    Wait For Elements State    xpath=//h2[contains(.,'Informações do Modelo de Atividade')]

Tentar criar modelo de atividade do tipo E-MAIL com campos obrigatórios vazios
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário tenta criar um modelo de atividade do tipo E-MAIL
    ...    And não preenche os campos obrigatórios
    ...    Then a atividade não é criada

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    E-mail
    Preencher descrição da atividade
    Salvar atividade
    Wait For Elements State    xpath=//h2[contains(.,'Informações do Modelo de Atividade')]

Tentar criar modelo de atividade do tipo LIGAÇÃO com campos obrigatórios vazios
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário tenta criar um modelo de atividade do tipo LIGAÇÃO
    ...    And não preenche os campos obrigatórios
    ...    Then a atividade não é criada

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    Ligação
    Preencher descrição da atividade
    Salvar atividade
    Wait For Elements State    xpath=//h2[contains(.,'Informações do Modelo de Atividade')]

Tentar criar modelo de atividade do tipo LINKEDIN com campos obrigatórios vazios
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário tenta criar um modelo de atividade do tipo LINKEDIN
    ...    And não preenche os campos obrigatórios
    ...    Then a atividade não é criada

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    LinkedIn
    Preencher descrição da atividade
    Salvar atividade
    Wait For Elements State    xpath=//h2[contains(.,'Informações do Modelo de Atividade')]

Tentar criar modelo de atividade do tipo WHATSAPP com campos obrigatórios vazios
    [Documentation]
    ...    Given que o usuário está na home page
    ...    When o usuário tenta criar um modelo de atividade do tipo WHATSAPP
    ...    And não preenche os campos obrigatórios
    ...    Then a atividade não é criada

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    WhatsApp
    Preencher descrição da atividade
    Salvar atividade
    Wait For Elements State    xpath=//h2[contains(.,'Informações do Modelo de Atividade')]

Excluir modelo de atividade criada
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada
    ...    When o usuário exclui o modelo de atividade
    ...    Then a atividade não é mais exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade       Pesquisa
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade    Pesquisa    ${nome_atividade}
    Abrir menu dropdown de opções      ${nome_atividade}
    Excluir atividade criada           Pesquisa    ${nome_atividade}

Duplicar atividade criada
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada
    ...    When o usuário duplica essa atividade
    ...    Then a atividade duplicada é exibida
    ...    And a atividade original também é exibida

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade        Ligação
    Preencher nome da atividade         20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade     Ligação    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Duplicar atividade criada    Ligação    ${nome_atividade}
    Abrir menu dropdown de opções      nome_atividade=${nome_atividade} (Cópia)
    Excluir atividade criada           Ligação    nome_atividade=${nome_atividade} (Cópia)
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    Ligação    ${nome_atividade}

Editar atividade do tipo PESQUISA
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada do tipo PESQUISA
    ...    When o usuário edita essa atividade
    ...    Then a atividade é exibida com os novos dados editados

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    Pesquisa
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade    Pesquisa    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Selecionar o botão editar
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade    Pesquisa    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    Pesquisa    ${nome_atividade}

Editar atividade do tipo E-MAIL
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada do tipo E-MAIL
    ...    When o usuário edita essa atividade
    ...    Then a atividade é exibida com os novos dados editados

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade       E-mail
    Set Viewport Size    2292    1108
    Preencher nome da atividade        20
    Preencher descrição da atividade
    Preencher assunto do E-mail    20
    Preencher corpo do E-mail
    Salvar atividade
    Exibir tipo e nome da atividade    E-mail    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Selecionar o botão editar
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_ASSUNTO_EMAIL}
    clear text    ${BANCO_ATIVIDADE_PAGE_INPUT_CORPO_EMAIL}
    Preencher nome da atividade        20
    Preencher descrição da atividade
    Preencher assunto do E-mail    20
    Preencher corpo do E-mail
    Salvar atividade
    Exibir tipo e nome da atividade    E-mail    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    E-mail    ${nome_atividade}

Editar atividade do tipo LIGAÇÃO
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada do tipo LIGAÇÃO
    ...    When o usuário edita essa atividade
    ...    Then a atividade é exibida com os novos dados editados

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade        Ligação
    Preencher nome da atividade         20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade     Ligação    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Selecionar o botão editar
    Clear text    ${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}
    Preencher nome da atividade         20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade     Ligação    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    Ligação    ${nome_atividade}

Editar atividade do tipo LINKEDIN
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada do tipo LINKEDIN
    ...    When o usuário edita essa atividade
    ...    Then a atividade é exibida com os novos dados editados

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    LinkedIn
    Set Viewport Size    1698    821
    Preencher nome da atividade      20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade     LinkedIn    ${nome_atividade}
    Abrir menu dropdown de opções       ${nome_atividade}
    Selecionar o botão editar
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_MENSAGEM}
    Preencher nome da atividade      20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade     LinkedIn    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    LinkedIn    ${nome_atividade}

Editar atividade do tipo WHATSAPP
    [Documentation]
    ...    Given que o está na home page
    ...    And existe uma atividade criada do tipo WHATSAPP
    ...    When o usuário edita essa atividade
    ...    Then a atividade é exibida com os novos dados editados

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    WhatsApp
    Set Viewport Size    1698    821
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade     WhatsApp    ${nome_atividade}
    Abrir menu dropdown de opções       ${nome_atividade}
    Selecionar o botão editar
    Clear text    ${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}
    Clear Text    ${BANCO_ATIVIDADE_PAGE_INPUT_MENSAGEM}
    Preencher nome da atividade      20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade     WhatsApp    ${nome_atividade}
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    WhatsApp     ${nome_atividade}

Exibir detalhes da atividade criada
    [Documentation]
    ...    Given que o usuário está na home page
    ...    And existe uma atividade criada
    ...    And a descrição possui a partir de 5 parágrafos
    ...    When o usuário clica em "Ver mais"
    ...    Then o formulário da atividade é exibido juntamente com os dados

    Enviar formulário de login
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade       E-mail
    Set Viewport Size    2292    1108
    Preencher nome da atividade        20
    Preencher descrição da atividade com quebra de linha    200
    Preencher assunto do E-mail    20
    Preencher corpo do E-mail
    Salvar atividade
    Exibir tipo e nome da atividade    E-mail    ${nome_atividade}
    Selecionar o botão ver mais    ${nome_atividade}
    Selecionar o botão cancelar
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    E-mail     ${nome_atividade}

Filtrar atividade do tipo PESQUISA
    [Documentation]
    ...    Given que o usuário está na home page
    ...    And existe uma atividade criada do tipo PESQUISA
    ...    When o usuário seleciona a opção PESQUISA no filtro de atividades
    ...    Then são exibidas somente atividades do tipo PESQUISA

    Enviar formulário de login
    Criar atividade Pesquisa
    Selecionar opção no filtro de atividade    Pesquisa
    Não exibir atividade    E-mail
    Não exibir atividade    Ligação
    Não exibir atividade    LinkedIn
    Não exibir atividade    WhatsApp
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    Pesquisa     ${nome_atividade}
    
Filtrar atividade do tipo E-MAIL
    [Documentation]
    ...    Given que o usuário está na home page
    ...    And existe uma atividade criada do tipo E-MAIL
    ...    When o usuário seleciona a opção E-MAIL no filtro de atividades
    ...    Then são exibidas somente atividades do tipo E-MAIL

    Enviar formulário de login
    Criar atividade E-mail
    Selecionar opção no filtro de atividade    E-mail
    Não exibir atividade    Pesquisa
    Não exibir atividade    Ligação
    Não exibir atividade    LinkedIn
    Não exibir atividade    WhatsApp
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    E-mail     ${nome_atividade}

Filtrar atividade do tipo LIGAÇÃO
    [Documentation]
    ...    Given que o usuário está na home page
    ...    And existe uma atividade criada do tipo LIGAÇÃO
    ...    When o usuário seleciona a opção LIGAÇÃO no filtro de atividades
    ...    Then são exibidas somente atividades do tipo LIGAÇÃO

    Enviar formulário de login
    Criar atividade Ligação
    Selecionar opção no filtro de atividade    Ligação
    Não exibir atividade    E-mail
    Não exibir atividade    Pesquisa
    Não exibir atividade    LinkedIn
    Não exibir atividade    WhatsApp
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    Ligação     ${nome_atividade}

Filtrar atividade do tipo LINKEDIN
    [Documentation]
    ...    Given que o usuário está na home page
    ...    And existe uma atividade criada do tipo LINKEDIN
    ...    When o usuário seleciona a opção LINKEDIN no filtro de atividades
    ...    Then são exibidas somente atividades do tipo LINKEDIN

    Enviar formulário de login
    Criar atividade LinkedIn
    Selecionar opção no filtro de atividade    LinkedIn
    Não exibir atividade    E-mail
    Não exibir atividade    Ligação
    Não exibir atividade    Pesquisa
    Não exibir atividade    WhatsApp
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    LinkedIn     ${nome_atividade}

Filtrar atividade do tipo WHATSAPP
    [Documentation]
    ...    Given que o usuário está na home page
    ...    And existe uma atividade criada do tipo WHATSAPP
    ...    When o usuário seleciona a opção WHATSAPP no filtro de atividades
    ...    Then são exibidas somente atividades do tipo WHATSAPP

    Enviar formulário de login
    Criar atividade WhatsApp
    Selecionar opção no filtro de atividade    WhatsApp
    Não exibir atividade    E-mail
    Não exibir atividade    Ligação
    Não exibir atividade    Pesquisa
    Não exibir atividade    LinkedIn
    Abrir menu dropdown de opções    ${nome_atividade}
    Excluir atividade criada    WhatsApp     ${nome_atividade}