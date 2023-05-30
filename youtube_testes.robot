*** Settings ***
Documentation        Suite de testes para testar o site do Youtube
Resource             youtube_resources.robot
Test Setup           Abrir navegador

*** Test Cases ***
Cenario 01 - Abrir o site Youtube e validar os menus
    Dado que acesso acesso o youtube
	Quando o menu e carregado
	Entao visualizo as opcoes de Inicio, Shorts e Inscricoes
    
 Cenario 02 - Pesquisar video
 	Dado que acesso acesso o youtube
 	Quando realizo a pesquisa Uma Breve História do Universo
 	Entao visualizo videos com a palavra Uma Breve História (do Início) do Universo

# Cenario 03 - Validar Icones 
# 	Dado que acesso acesso o youtube
# 	Quando  realizo a pesquisa “universo”
# 	E Clico no primeiro video
# 	Entao visualizo o icone Inscrever-se, Gostei, Nao Gostei e Compartilhar
