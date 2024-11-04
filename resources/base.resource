*** Settings ***
Documentation    Arquivo principal do projet Robot

Library    Browser
Library    FakerLibrary

Resource   pages/LoginPage.resource
Resource   pages/BancoAtividadePage.resource

# Resource    pages/Landing.resource
# Resource    pages/Welcome.resource

*** Variables ***
${BASE_URL}         https://growth-station-client-git-junk-teste-qa-growthmachine.vercel.app/login\
${BROWSER}          chromium
${IS_HEADLESS}      True

*** Keywords ***
Start session
    [Documentation]    Abre o navegador e vai para o endereço indicado
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Page       ${BASE_URL}
