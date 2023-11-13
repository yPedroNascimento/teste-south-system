*** Settings ***
Documentation    

Resource    ../resource/base.resource

Test Setup       Start Session
Test Teardown    Take Screenshot

*** Test Cases ***
Validar abertura do campo de busca ao clicar no icone "Lupa".
    Open search field

Validar pesquisa com resultados
    Open search field
    Do search    Pix
    Validate search with results    Pix

Validar pesquisa sem resultados
    Open search field
    Do search    Teste@teste
    Validate search no results    
    