*** Settings ***
Library   SeleniumLibrary

*** Variables ***

${URL}  https://www.amazon.com.br

${MENU_VENDAS}            //a[@href='/gp/browse.html?node=17877554011&ld=ASBRSOA_retail_sell_header&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
${Hearde_Vendas}         //h1[@class='heading align-start font-size-xxxlarge color-squid-ink ember font-heavy'][contains(.,'Comece a vender na Amazon')]
${Texto_Hearde_Vendas}   Comece a vender na Amazon

*** Keywords ***
Abrir o navegador

    Open Browser            browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser   

Acessar a home page do site amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    locator=${MENU_VENDAS}

Entrar no menu "Vendas na amazon"
    Click Element                        locator=${MENU_VENDAS} 
    
Verificar se aparece a frase "Comece a vender na amazon"
    Wait Until Page Contains             text=${Texto_Hearde_Vendas}  
    Wait Until Element Is Visible        locator=${Hearde_Vendas}  

Verificar se o título da página fica "${TITULO}"
    Title Should Be                     title=${TITULO}

Verificar se aparece a categoria "Venda para milhões de clientes"
   Element Should Be Visible             locator=//h2[contains(.,'Venda para milhões de clientes')]

Digitar o nome de produto "${PRODUTO}" no campo de Pesquisa"
    Click Element                        locator=twotabsearchtextbox
    Input Text                           locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa 
    Click Element                       locator=//input[@id='nav-search-submit-button']

Verificar o resultado da pesquisa, se está listando o produto "${NOME_DO_PRODUTO}"
    Wait Until Element Is Visible      locator=(//span[contains(.,'${NOME_DO_PRODUTO}')])[2]

 Clicar no botão "Olá, faça seu login Contas e Listas"
      Wait Until Element Is Visible    locator=//a[contains(.,'Ofertas do Dia')]
      Click Element                    locator=//a[contains(@data-nav-ref,'nav_ya_signin')]
    
Acessar a tela de login
     Wait Until Element Is Visible    locator=//span[@class='a-expander-prompt'][contains(.,'Precisa de ajuda?')]
    
Inserir e-mail
     Wait Until Element Is Visible      locator=continue
     Input Text                         locator=ap_email   text=testeqa20222@gmail.com
     Click Element                      locator=continue  

Inserir senha e Fazer login
     Input Text                         locator=ap_password    text=teste2022
     Click Element                      locator=signInSubmit

# Adicionar o número de telefone celular clicar "Agora não"
#     Click Element                        locator=ap-account-fixup-phone-skip-link

Validar login com sucesso
     Wait Until Element Is Visible     locator=//a[contains(.,'Ofertas do Dia')]
     Click Element                    locator=//a[contains(.,'Ofertas do Dia')]
   
#Gherking steps
Dado que estou na home page da Amazon.com.br
     Acessar a home page do site amazon.com.br

Quando entrar no menu "Vendas na amazon"
     Entrar no menu "Vendas na amazon"

Então verificar se aparece a frase "Comece a vender na amazon"
     Verificar se aparece a frase "Comece a vender na amazon"

 E verificar se aparece a categoria "Venda para milhões de clientes"
    Verificar se aparece a categoria "Venda para milhões de clientes"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de Pesquisa"

 E clicar no botão
     Clicar no botão de pesquisa 

E um produto da linha "Console Xbox Series S" deve ser mostrado na página
      Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"

Quando clicar no botão "Olá, faça seu login Contas e Listas" 
    Clicar no botão "Olá, faça seu login Contas e Listas"

E acessar a tela de login 
    Acessar a tela de login

E inserir e-mail
    Inserir e-mail

E inserir senha e Fazer login 
     Inserir senha e Fazer login

Então o login será validado com sucesso
    Validar login com sucesso
