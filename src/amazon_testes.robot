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
    Acessar a home page do site amazon.com.br
    Entrar no menu "Vendas na amazon"
    Verificar se aparece a frase "Comece a vender na amazon"
    Verificar se aparece a categoria "Venda para milhões de clientes"

Casos de teste 2 Pesquisa de um Produto
   
   [Documentation]  Esse teste verifica a busca de um produto
   [Tags]           buscar produtos  lista da busca
   Acessar a home page do site Amazon.com.br
   Digitar o nome de produto "Xbox Series S" no campo de Pesquisa"
   Clicar no botão de pesquisa 
   Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"

Casos de teste 3 Efetuar o login na Amazon
    
     [Documentation]  Esse teste verifica o login com sucesso no site da Amazon.com.br 
     [Tags]           Faça seu login
       Acessar a home page do site Amazon.com.br
       Clicar no botão "Olá, faça seu login Contas e Listas"
       Acessar a tela de login
       Inserir e-mail
       Inserir senha e Fazer login
      #  Adicionar o número de telefone celular clicar "Agora não"
       Validar login com sucesso