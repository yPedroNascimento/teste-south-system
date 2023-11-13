*** Settings ***
Documentation            Ações e elementos do cabeçalho

Library    Browser

*** Variables ***
${searchOpenButton}       id=search-open
${searchDesktop}          xpath=//header//div[@style="display: block;"]
${searchField}            xpath=//div[@class="desktop-search"]//input[@class="search-field"]
${searchSubmit}           xpath=//div[@class="desktop-search"]//input[@class="search-submit"]

*** Keywords ***
Open search field
    Wait For Elements State    ${searchOpenButton}
    Click                      ${searchOpenButton}

    Wait For Elements State    ${searchDesktop}    visible    4

Do search
    [Arguments]        ${search}

    Wait For Elements State    ${searchField}
    Fill Text                  ${searchField}    ${search}
    Click                      ${searchSubmit}