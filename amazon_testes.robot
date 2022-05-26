*** Settings ***
Documentation       Essa suite teste o site da amazon.com.br

Resource            amazon_resources.robot

Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador


*** Test Cases ***
Caso de Teste 01 -"Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletronico do site da amazon
    ...    E verifica a categoria computadores.
    [Tags]    menus
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o subtitulo da página aparece "Eletrônicos e Tecnologia"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página


Caso de teste 02 - "Pesquisa de um Produto"
    [Tags]    buscar_produtos
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox"
    E clicar no botão pesquisar
    Então sistema deve exibir a tela com o resultado da pesquisa,listando o produto pesquisado.
