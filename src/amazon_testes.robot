*** Settings ***
Documentation   Essa suite testa o site da Amazon.com.br
Resource        amazon_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador
    

*** Test Cases ***

Casos de teste 1 Acesso ao menu "Vendas na Amazon"
    
    [Documentation]  Esse teste Verificar o menu Vendas na Amazon no site da Amazon.com.br
    ...              e verifica a categoria Ganhe dinheiro 
    [Tags]           menus categoria
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Vendas na Amazon"
    Verificar se aparece a frase "Comece a vender na Amazon"
    Verificar se aparece a categoria "Venda para milhões de clientes"

Casos de teste 2 Pesquisa de um Produto
   
   [Documentation]  Esse teste verifica a busca de um produto
   [Tags]           buscar produtos  lista da busca
   Acessar a home page do site Amazon.com.br
   Digitar o nome de produto "Xbox Series S" no campo de Pesquisa"
   Clicar no botão de pesquisa 
#    Verificar o resultado da pesquisa, se está listando o produto pesquisado (conferir um)

