# encoding: utf-8
# language: pt
#!/usr/bin/env ruby

# Feature: Projeto Website

=begin Como parte de uma avali��o devo criar uma funcionalidade com o seguinte cenario, validar se existe o texto: 
"2016 - Inicio das operacoes em Bogota (Col0mbia)" que esta contido na pagina/menu �Quem Somos� que se
encontra dentro do portal da InMetrics.
=end


Scenario: Devo digitar o nome inmetrics na pagina de buscar e ver o link direto Quem Somos e clicar

      Given que eu estou na p�gina do buscador
      Then eu preencher o campo da pesquisa com o nome da empresa
      Then clico no botao de pesquisa
      Then devo ver a lista de sites relacionado com o nome da empresa e procurar por  "Quem Somos"
      When clicar no link direto 
	  Given sou redirecionada para a pagina da empresa na se��o "quem somos"
	  When devo buscar o bot�o para o proximo slide e clicar
	  Then deve ser localizado o texto "In�cio das opera��es em Bogot� (Col�mbia)"
	  Then deve ser buscado a refer�ncia "2016"
	  

