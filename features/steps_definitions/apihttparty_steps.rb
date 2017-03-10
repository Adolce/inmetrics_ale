require 'httparty'
require 'cucumber'
require 'rspec'


# encoding: utf-8
#!/usr/bin/env ruby


Given /^Eu envio uma requisição de consulta a url filmes $/ do
        response =  HTTParty.get("http://swapi.co/api/films/")
 end
  
When /^a resposta de codigo de status deve ser$/ do
       puts response.code
	   code.expectStatus(200)
end

Then /^devo Listar todo os titulos de resultado $/ do 
       JSON.parse(@response.body).should == JSON.parse(json)
	   response.each do | item |
       puts item["title"]
end
end     

Given /^Eu envio uma requisição de consulta a url planet $/ do
        response =  HTTParty.get("http://swapi.co/api/planets/")
 end
  
When /^eu verifico a resposta codigo de status "<status_code>"$/ do
       puts response.code
end

Then /^eu armazeno o valor contido no counts $/ do 
       JSON.parse(@response.body).should == JSON.parse(json)
	   reponse.each do | item |
       puts item["count"]
end

end   
Then /^Eu envio um get para a api com um valor aleatorio maior que o armazenado $/ do 
       response HTTParty.get("http://swapi.co/api/planets/",:query => { :count => "77" })
end
When /^eu verifico a resposta codigo de status "<status_code>"$/ do
       puts response.headers.inspect
end 
Then /^Eu exibo a mensagem de status recebida $/ do 
       JSON.parse(@response.body).should == JSON.parse(json)
	   puts response.code
	   puts response.message
	   code.expectStatus(200)
end
