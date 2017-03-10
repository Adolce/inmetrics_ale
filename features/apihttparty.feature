Feature: Test HTTParty API


@sucess
Scenario1: Enviar um Get a API de filmes e listar os titulos dos resultados
  Given Eu envio uma requisição de consulta a url filmes
  When a resposta de codigo de status deve ser "<status_code>"
    |status_code|
    |200        |
	|404        |
  Then devo Listar todo os titulos de resultado
  
   
@sucess  
Scenario2: Enviar um Get a API Planets armazenar o contador enviar um novo get passando um valor aleatorio superior ao armazenado
  Given Eu envio uma requisição de consulta a url planet
  When eu verifico a resposta codigo de status "<status_code>"
  |status_code|
  |200        |
  Then eu armazeno o valor contido no counts
  Then Eu envio um get paraa api com um valor aleatorio maior que o armazenado
  When eu valido o codigo de status da pagina
  |status_code|
  |200        |
  |404        |
  |500        |
  Then Eu exibo a mensagem de status recebida
  






