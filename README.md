# Projeto Growth Machine
O projeto de automação compreende os níveis de serviço UI (WEB)
Para o correto funcionamento do projeto, é necessário que os requisitos mínimos de instalação sejam executados:

## Python
Instalar o [Python](https://www.python.org/downloads/), pois é um pré-requisito para a execução do Robot Framework.
> Durante a instalação, marcar a opção que o adiciona às variáveis de ambiente automaticamente.
## Node.js
Instalar o [Node.js](https://nodejs.org/pt-br/download), pois é um pré-requisito para a execução do Playwright.
## Robot Framework
Após instalar o Python, instalar o Robot Framework, através do comando abaixo no terminal do SO (modo administrador):
```
pip install robotframework
```
Consulte as keywords da [Library BuiltIn](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Log), nativas do Robot Framework.

# Próximos Passos
O nível de UI se comnunica com o de serviço para obter massa de dados, portanto é essencial seguir cada passo indicado abaixo:

# Automação Web - Robot Framework e Playwright
Passo a passso para configuração e instalação do projeto de automação Web, utilizando o Robot Framework com Playwright, no ambiente local.
## Playwright (Instalação e inicialização)
O Robot Framework interage com outros frameworks para automatizar os testes. <br/>
É necessário instalar o framework Playwright, para automatizar testes Web. <br/>
Execute a sequência de comandos abaixo no terminal do SO:
```
npm install @playwright/test
```
```
npx playwright install-deps
```
## Library Browser
Após instalar o Robot Framework e o Playwright: instalar a library Browser, que implementa as keywords para a excução dos testes via Playwright. <br/>
Para instalar a library Browser, executar o comando abaixo no terminal do SO (modo administrador):
```
pip install robotframework-browser
```
Consulte as keywords da [Library Browser](https://marketsquare.github.io/robotframework-browser/Browser.html).
## Inicialização da Library Browser
Execute o comando abaixo no terminal do SO (modo administrador):
```
rfbrowser init
```
## Library Faker
Para este projeto, é necessário instalar a library:
- Faker Library (gera dados dinâmicos e ficticios para os testes)
```
pip install robotframework-faker
```