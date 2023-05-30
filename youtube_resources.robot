*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    http://www.youtube.com.br
${BTN_INICIO}            //div[@class='style-scope ytd-guide-section-renderer']//*[contains(@class,'title') and contains(text(), 'Início')]
${BTN_SHORTS}            //div[@class='style-scope ytd-guide-section-renderer']//*[contains(@class,'title') and contains(text(), 'Shorts')]
${BTN_INSCRICOES}        //div[@class='style-scope ytd-guide-section-renderer']//*[contains(@class,'title') and contains(text(), 'Inscrições')]
${INPUT_BUSCA}           //input[@id='search']
${BTN_BUSCA}             //button[@id='search-icon-legacy']

*** Keywords ***
Abrir navegador
    Create Webdriver    Chrome    executable_path=${CURDIR}/driver/chromedriver.exe
    Open Browser        browser= Chrome
    Maximize Browser Window

Dado que acesso acesso o youtube
    Go To    url=${URL}

Quando o menu e carregado
    Wait Until Element Is Visible    ${BTN_INICIO}

Entao visualizo as opcoes de Inicio, Shorts e Inscricoes
    Wait Until Element Is Visible    ${BTN_INICIO}
    Wait Until Element Is Visible    ${BTN_SHORTS}
    Wait Until Element Is Visible    ${BTN_INSCRICOES} 

Quando realizo a pesquisa ${TEXTO}
    Input Text    ${INPUT_BUSCA}    ${TEXTO}
    Click Element    ${BTN_BUSCA}

Entao visualizo videos com a palavra ${TEXTO}
    Wait Until Page Contains    ${TEXTO} 
