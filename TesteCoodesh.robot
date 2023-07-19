*** Settings ***
Resource  ResourceCoodesh.robot 

*** Test Cases *** 
Caso de Teste 01: Carregar corretamente a homepage
  Acessar a homepage da Beta Coodesh
  
Caso de Teste 02: Criar conta
  Clicar no botão criar conta de usuário

Caso de Teste 03: Preencher form
  Digitar nome completo
  Digitar email
  Digitar senha
  Clicar aceitar politica de privacidade
  Clicar no botão inscreva-se

Caso de Teste 04: Dados pessoais
  Acessar pagina dados pessoais e preencher





