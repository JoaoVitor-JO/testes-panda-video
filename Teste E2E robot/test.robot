*** Settings ***
Documentation    Primeira automação com robot
Library           SeleniumLibrary
Library    XML

*** Variables ***
#links
${URL_sauce}    https://www.saucedemo.com/
${URL_inventory}    https://www.saucedemo.com/inventory.html 
${URL_checkout_one}    https://www.saucedemo.com/checkout-step-one.html
${URL_checkout_two}    https://www.saucedemo.com/checkout-step-two.html
${URL_chckout_complete}    https://www.saucedemo.com/checkout-complete.html

#dados de usuarios
${valid_user}    standard_user
${valid-password}    secret_sauce
${first_name}    Airton
${last_name}    Senna
${cep}    4002-8922

#dados de produtos
${backpack_name}    Sauce Labs Backpack

*** Keywords ***
abrir pagina login
    Open Browser    ${URL_sauce}


realizar login
    abrir pagina login
    Input Text    user-name    ${valid_user}
    Input Password    password    ${valid-password}
    Click Button    login-button
    Location Should Be    ${URL_inventory} 

adicionar backpack
    Click Button    add-to-cart-sauce-labs-backpack
    Click Element    shopping_cart_container
    Element Text Should Be    css:.inventory_item_name    ${backpack_name}

acessar checkout
    Click Button    checkout
    Location Should Be    ${URL_checkout_one}

preencher checkout
    Input Text    first-name    ${first_name}
    Input Text    last-name     ${last_name}
    Input Text    postal-code    ${cep}
    Click Button    continue
    Location Should Be    ${URL_checkout_two}

finalizar compra
    Click Button    finish
    Location Should Be    ${URL_chckout_complete}

*** Test Cases ***
Automação do login
    realizar login

Adicionar item ao carrinho
    realizar login
    adicionar backpack

Acessar checkout
    realizar login
    adicionar backpack
    acessar checkout

Preencher dados 
    realizar login
    adicionar backpack
    acessar checkout
    preencher checkout

Fluxo de compra completo
    realizar login
    adicionar backpack
    acessar checkout
    preencher checkout
    finalizar compra
    


	