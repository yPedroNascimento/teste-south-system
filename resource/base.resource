*** Settings ***

Library    Browser

Resource    env.resource

Resource    pages/components/Header.resource
Resource    pages/SearchPage.resource

*** Keywords ***
Start Session
    New Browser             browser=${BROWSER}    headless=False
    New Page                ${BASE_URL}