*** Settings ***
Library   SeleniumLibrary

*** Variables ***

${URL}  https://www.amazon.com.br

${MENU_VENDAS}            //a[@href='/gp/browse.html?node=17877554011&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
${Hearde_Vendas}         //h1[@class='heading align-start font-size-xxxlarge color-squid-ink ember font-heavy'][contains(.,'Comece a vender na Amazon')]
${Texto_Hearde_Vendas}   Comece a vender na Amazon

*** Keywords ***
Abrir o navegador

    Open Browser     browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser   

Acessar a home page do site Amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    locator=${MENU_VENDAS}

Entrar no menu "Vendas na Amazon"
    Click Element    locator=${MENU_VENDAS} 
    
Verificar se aparece a frase "Comece a vender na Amazon"
    Wait Until Page Contains         text=${Texto_Hearde_Vendas}  
    Wait Until Element Is Visible    locator=${Hearde_Vendas}  

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "Venda para milhões de clientes"
   Element Should Be Visible    locator=//h2[@class='heading align-start font-size-large color-squid-ink ember font-heavy'][contains(.,'Venda para milhões de clientes')]
   
Digitar o nome de produto "${PRODUTO}" no campo de Pesquisa"
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa 
    Click Element    locator=


    
       
    
    