*** Settings ***
Documentation    Ações e elementos da página banco de atividades

Library    Browser
Library    FakerLibrary

*** Variables ***
${BANCO_ATIVIDADE_PAGE_HOME_TITULO}                    css=h1
${BANCO_ATIVIDADE_PAGE_INPUT_PESQUISA}                 css=input[placeholder='Pesquise pelo nome...']
${BANCO_ATIVIDADE_PAGE_BUTTON_CRIAR_ATIVIDADE}         css=button[data-testid='create-task-btn']
${BANCO_ATIVIDADE_PAGE_COMBO_FILTRAR_ATIVIDADE}        xpath=//div[@type='button' and @data-testid='task-type-filter']
${BANCO_ATIVIDADE_PAGE_OPCAO_ATIVIDADE}                css=button[data-testid='task-list-item-dropdown-trigger']
${BANCO_ATIVIDADE_PAGE_COMBO_SELECIONAR_ATIVIDADE}     xpath=//div[@type='button' and @data-testid='task-type-select']
${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}           id=title
${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}      css=div[data-testid='task-description-editor'] [contenteditable='true'] 
${BANCO_ATIVIDADDE_PAGE_BUTTON_SALVAR}                 css=button[type='submit']
${BANCO_ATIVIDADE_PAGE_INPUT_ASSUNTO_EMAIL}            id=emailSubject
${BANCO_ATIVIDADE_PAGE_INPUT_CORPO_EMAIL}              css=div[data-testid='task-email-body-editor'] [contenteditable='true']
${BANCO_ATIVIDADE_PAGE_INPUT_MENSAGEM}                 id=socialMessageBody
${BANCO_ATIVIDADE_PAGE_BUTTON_EXCLUIR}                 css=div[data-testid='task-list-item-dropdown-delete']
${BANCO_ATIVIDADE_PAGE_BUTTON_DUPLICAR}                css=div[data-testid='task-list-item-dropdown-duplicate']
${BANCO_ATIVIDADE_PAGE_OPCAO_EDITAR}                   css=div[data-testid='task-list-item-dropdown-edit']
${BANCO_ATIVIDADE_PAGE_MENU_DROPDOWN}                  xpath=(//button[@data-testid='task-list-item-dropdown-trigger'])[1]
${BANCO_ATIVIDADE_PAGE_BUTTON_CANCELAR}                css=button[data-testid='task-cancel-button']


*** Keywords ***
Exibir título da home page
    [Arguments]    ${titulo_pagina}
    [Documentation]    Garante a exibição do título da home page

    Wait For Elements State    ${BANCO_ATIVIDADE_PAGE_HOME_TITULO} >> text=${titulo_pagina}    visible

Exibir tipo e nome da atividade
    [Arguments]    ${tipo_atividade}    ${nome_atividade}
    [Documentation]    Garante a exibição do tipo de atividade na home page
    
    Wait For Elements State    xpath=//p[@title='${nome_atividade}']//span[text()='${tipo_atividade}']    visible
    
Acessar formulário de cadastro de atividade
    [Documentation]    Acessa o fomulário de cadastro de atividade
    Click    ${BANCO_ATIVIDADE_PAGE_BUTTON_CRIAR_ATIVIDADE}

Selecionar tipo de atividade
    [Arguments]        ${tipo_atividade}
    [Documentation]    Seleciona o tipo de atividade no formulário de cadastro de atividade

    Click    ${BANCO_ATIVIDADE_PAGE_COMBO_SELECIONAR_ATIVIDADE}
    Click    xpath=//div[@role='menuitem'][contains(.,'${tipo_atividade}')]
    Wait For Elements State    xpath=//div[@data-testid='task-type-select'][contains(.,'${tipo_atividade}')]    stable

Preencher nome da atividade
    [Arguments]    ${quantidade_caracteres}
    [Documentation]    Preenche o nome da atividade no formulário de cadastro de atividade

    ${nome_atividade}    FakerLibrary.Text    ${quantidade_caracteres}
    Set Test Variable    ${nome_atividade}
    Fill Text    ${BANCO_ATIVIDADE_PAGE_INPUT_NOME_ATIVIDADE}    ${nome_atividade}

Preencher descrição da atividade
    [Arguments]    ${quantidade_caracteres}=500
    [Documentation]    Preenche a descrição da atividade no formulário de cadastro de atividade
    
    ${descricao_atividade}    FakerLibrary.Text    ${quantidade_caracteres}
    Set Test Variable    ${descricao_atividade}
    Fill Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}    ${descricao_atividade}

Preencher descrição da atividade com quebra de linha
    [Arguments]    ${quantidade_caracteres}=200
    [Documentation]    Preenche a descrição da atividade com quebra de linha no formulário de cadastro de atividade 
    
    ${paragrafo1}    Set Variable    quebra de linha
    ${paragrafo2}    Set Variable    quebra de linha
    ${paragrafo3}    Set Variable    quebra de linha
    ${paragrafo4}    Set Variable    quebra de linha
    
    ${descricao_atividade}    FakerLibrary.Text    ${quantidade_caracteres}
    Set Test Variable    ${descricao_atividade}
    
    # Preenche o campo com o texto inicial
    Fill Text    ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}    ${descricao_atividade}
    
    # Insere quatro quebras de linha consecutivas usando "Press Keys"
    Press Keys      ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}    Enter
    Press Keys      ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}    Enter
    Press Keys      ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}    Enter
    Press Keys      ${BANCO_ATIVIDADE_PAGE_INPUT_DESCRICAO_ATIVIDADE}    Enter

Salvar atividade
    [Documentation]    Clica no botão "Salvar" do formulário de cadastro de atividade

    Click    ${BANCO_ATIVIDADDE_PAGE_BUTTON_SALVAR}

Preencher assunto do E-mail
    [Arguments]    ${quantidade_caracteres}
    [Documentation]    Preenche o assunto do e-mail no formulário de cadastro de atividade
    
    ${assunto_email}    FakerLibrary.Text    ${quantidade_caracteres}
    Set Test Variable    ${assunto_email}
    Fill Text    ${BANCO_ATIVIDADE_PAGE_INPUT_ASSUNTO_EMAIL}    ${assunto_email}

Preencher corpo do E-mail
    [Arguments]    ${quantidade_caracteres}=1500
    [Documentation]    Preenche o corpo do e-mail no formulário de cadastro de atividade

    ${corpo_email}    FakerLibrary.Text     ${quantidade_caracteres}
    Set Test Variable    ${corpo_email}
    Fill Text    ${BANCO_ATIVIDADE_PAGE_INPUT_CORPO_EMAIL}    ${corpo_email}

Preencher corpo da mensagem    
    [Arguments]    ${quantidade_caracteres}=500
    [Documentation]    Preenche o corpo da mensagem do linkedIn ou whatsapp no formulário de cadastro de atividade

    ${corpo_mensagem}    FakerLibrary.Text     ${quantidade_caracteres}
    Set Test Variable    ${corpo_mensagem}
    Fill Text    ${BANCO_ATIVIDADE_PAGE_INPUT_MENSAGEM}    ${corpo_mensagem}


Abrir menu dropdown de opções
    [Arguments]    ${nome_atividade}
    [Documentation]    Abre o menu dropdown de opções

    Click    xpath=//p[@title='${nome_atividade}']/../../..//button[@data-testid='task-list-item-dropdown-trigger']

Excluir atividade criada
    [Documentation]    Exclui atividade criada
    [Arguments]    ${tipo_atividade}    ${nome_atividade}

    Click    ${BANCO_ATIVIDADE_PAGE_BUTTON_EXCLUIR}
    Wait For Elements State    xpath=//p[@title='${nome_atividade}']//span[text()='${tipo_atividade}']    detached

Duplicar atividade criada
    [Documentation]    Duplica atividade criada
    [Arguments]    ${tipo_atividade}    ${nome_atividade}

    Click    ${BANCO_ATIVIDADE_PAGE_BUTTON_DUPLICAR}
    Wait For Elements State    xpath=//p[@title='${nome_atividade} (Cópia)']//span[text()='${tipo_atividade}']    visible

Selecionar o botão editar
    [Documentation]    Seleciona o botão editar

    Click    ${BANCO_ATIVIDADE_PAGE_OPCAO_EDITAR}
    Wait For Elements State    xpath=//h2[contains(.,'Informações do Modelo de Atividade')]    visible
        
Selecionar o botão ver mais
    [Arguments]        ${nome_atividade}
    [Documentation]    Seleciona o botão ver mais

    Click    xpath=//p[@title='${nome_atividade}']/..//button[@data-testid='task-list-item-description-details-button']
    Wait For Elements State    //h2[contains(.,'Informações do Modelo de Atividade')]    visible
        
Selecionar o botão cancelar
    [Documentation]    Selecionar o botão cancelar

    Click    ${BANCO_ATIVIDADE_PAGE_BUTTON_CANCELAR}

Criar atividade Pesquisa
    [Documentation]    Cria uma atividade Pesquisa
    
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    Pesquisa
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade    Pesquisa    ${nome_atividade}

Criar atividade E-mail
    [Documentation]    Cria uma atividade E-mail

    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    E-mail
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Preencher assunto do E-mail    20
    Preencher corpo do E-mail
    Salvar atividade
    Exibir tipo e nome da atividade    E-mail    ${nome_atividade}

Criar atividade Ligação
    [Documentation]    Cria uma atividade Ligação
    
    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    Ligação
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Salvar atividade
    Exibir tipo e nome da atividade    Ligação    ${nome_atividade}

Criar atividade LinkedIn
    [Documentation]    Cria uma atividade LinkedIn

    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    LinkedIn
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade    LinkedIn    ${nome_atividade}

Criar atividade WhatsApp
    [Documentation]    Cria uma atividade WhatsApp

    Acessar formulário de cadastro de atividade
    Selecionar tipo de atividade    WhatsApp
    Preencher nome da atividade    20
    Preencher descrição da atividade
    Preencher corpo da mensagem
    Salvar atividade
    Exibir tipo e nome da atividade    WhatsApp    ${nome_atividade}
Abrir o filtro de opções
    [Documentation]    Abre o filtro de opções

    Click    ${BANCO_ATIVIDADE_PAGE_COMBO_FILTRAR_ATIVIDADE}

Selecionar opção no filtro de atividade
    [Arguments]        ${tipo_atividade}
    [Documentation]    Seleciona uma opção no filtro de atividade

    Abrir o filtro de opções
    Click    xpath=//div[@role='menuitem'][contains(.,'${tipo_atividade}')]

Não exibir atividade
    [Arguments]    ${tipo_atividade}
    [Documentation]    Garante que uma atividade não seja exibida

    Wait For Elements State    xpath=//span[contains(.,'${tipo_atividade}')]    detached