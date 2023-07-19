*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      https://beta.coodesh.com/auth/signin
${BROWSER}  chrome
${BTN_CRIARCONTA}   //a[@class='chakra-button css-jm60sf'][contains(.,'Criar conta')]
${NOME_COMPLETO}  field-6
${EMAIL}  field-7
${SENHA}  field-8
${RADIO}  (//span[contains(@class,'chakra-switch__thumb css-7roig')])[1]
${INSCREVA_SE}  (//button[@type='submit'][contains(.,'Inscreva-se')])[1]
${BACKEND}  //div[@class='checkbox-outline__label d-flex flex-column justify-content-center mb-3 px-5 py-3 rounded'][contains(.,'Back-End Developer')]


*** Keywords *** 
Acessar a homepage da Beta Coodesh
  Open Browser  url=${URL}  browser=${BROWSER}
  Maximize Browser Window 
  Title Should Be  Entrar | Coodesh
   
Clicar no botão criar conta de usuário
  Wait Until Element Is Visible  locator=${BTN_CRIARCONTA} 
  Click Element  locator=${BTN_CRIARCONTA}

Digitar nome completo
  Wait Until Element Is Visible  locator=${NOME_COMPLETO} 
  Input Text  locator=${NOME_COMPLETO}  text=Zachary Garrett

Digitar email
  Wait Until Element Is Visible  locator=${EMAIL}
  Input Text  locator=${EMAIL}  text=teste17@teste.com

Digitar senha
  Wait Until Element Is Visible  locator=${SENHA}
  Input Text  locator=${SENHA}  text=9638521@A123a#

Clicar aceitar politica de privacidade
  Click Element  locator=${RADIO}

Clicar no botão inscreva-se
  Click Element  locator=${INSCREVA_SE}

Acessar pagina dados pessoais e preencher
  Sleep  5
  Wait Until Element Is Visible    locator=${BACKEND} 
  Click Element  locator=${BACKEND} 



 
  







    







  
