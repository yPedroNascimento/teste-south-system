*** Settings ***
Documentation        Ações e elementos da página principal

Library        Browser

*** Variables ***
${resultSearch}           xpath=//div[@id="blog-wrap"]//h1
${resultInvalidSearch}    xpath=//header//h1["entry-header"]

*** Keywords ***
Validate search with results
    [Arguments]        ${search}

    Wait For Elements State    ${resultSearch}
    ${textResultSearch}        Get Text    ${resultSearch}

    Should Be Equal    ${textResultSearch}    Resultados da busca por: ${search}

Validate search no results    

    Wait For Elements State    ${resultInvalidSearch}
    ${textInvalidResultSearch}    Get Text    ${resultInvalidSearch}
    Should Be Equal    ${textInvalidResultSearch}    Nenhum resultado