<<<<<<< HEAD
# encoding: utf-8
#!/usr/bin/env ruby


Given /^que eu estou na página do buscador$/ do
    visit 'http://www.google.com.br'
 end
  
Then /^eu preencher o campo da pesquisa com o nome da empresa$/ do
     page.find(:id, 'lst-ib').click
	 page.find(:id, 'lst-ib').clear
     fill_in'gs_htif0',with=> 'Inmetrics'
end

Then /^clico no botao de pesquisa "(.*?)"$/ do |btnG|
      find_button(:id, '_fZl').click
end
 
Then /^devo ver a lista dos sites relacionado com o nome da empresa e procurar por $/ do 
      expect(page).to have_content 'Quem Somos - Inmetrics'

end	      
When /^clicar no link direto"(.*?)"$/ do |link|
   page.find(:link_text, "Quem Somos - Inmetrics").click
   sleep 03
end

Given /^sou redirecionado para a pagina da empresa na seção $/ do
    @test_site.quem-somos.title.should == "Quem Somos"
end

When /^devo buscar o botao para o proximo slide e clicar $/ do
      @test_site.home.should slides_2_button
	  @test_site.quem-somos.slides_2.click
	  #find_button(:xpath, "//label[@for='slides_2']").click
      find_button(:id, "slides_2").click
end
end

Then /^deve ser localizado o texto "(.*?)"$/ do 
      @test_site.quem-somos.should have_inicio_das_operacoes
      @test_site.quem-somos.should have_inicio_das_operacoes text: 'Início das operações em Bogotá (Colômbia)'
	  assert_equal ("Início das operações em Bogotá (Colômbia)")
	  puts "Texto Encontrado"
end

Then /^deve ser buscado a referência "(.*?)"$/ do 
      # find_(:xpath, "//div[@class='csslider']//div[.=' 2016']").click
	  @test_site.quem-somos.should have_inicio_das_operacoes
      @test_site.quem-somos.should have_inicio_das_operacoes text: '2016'  
	  assert_equal ("2016")
      puts "Texto Encontrado"
end

=======
# encoding: utf-8
#!/usr/bin/env ruby


Given /^que eu estou na página do buscador$/ do
    visit 'http://www.google.com.br'
 end
  
Then /^eu preencher o campo da pesquisa com o nome da empresa$/ do
     page.find(:id, 'lst-ib').click
	 page.find(:id, 'lst-ib').clear
     fill_in'gs_htif0',with=> 'Inmetrics'
end

Then /^clico no botao de pesquisa "(.*?)"$/ do |btnG|
      find_button(:id, '_fZl').click
end
 
Then /^devo ver a lista dos sites relacionado com o nome da empresa e procurar por $/ do 
      expect(page).to have_content 'Quem Somos - Inmetrics'

end	      
When /^clicar no link direto"(.*?)"$/ do |link|
   page.find(:link_text, "Quem Somos - Inmetrics").click
   sleep 03
end

Given /^sou redirecionado para a pagina da empresa na seção $/ do
    @test_site.quem-somos.title.should == "Quem Somos"
end

When /^devo buscar o botao para o proximo slide e clicar $/ do
      @test_site.home.should slides_2_button
	  @test_site.quem-somos.slides_2.click
	  #find_button(:xpath, "//label[@for='slides_2']").click
      find_button(:id, "slides_2").click
end
end

Then /^deve ser localizado o texto "(.*?)"$/ do 
      @test_site.quem-somos.should have_inicio_das_operacoes
      @test_site.quem-somos.should have_inicio_das_operacoes text: 'Início das operações em Bogotá (Colômbia)'
	  assert_equal ("Início das operações em Bogotá (Colômbia)")
	  puts "Texto Encontrado"
end

Then /^deve ser buscado a referência "(.*?)"$/ do 
      # find_(:xpath, "//div[@class='csslider']//div[.=' 2016']").click
	  @test_site.quem-somos.should have_inicio_das_operacoes
      @test_site.quem-somos.should have_inicio_das_operacoes text: '2016'  
	  assert_equal ("2016")
      puts "Texto Encontrado"
end

>>>>>>> 594a3b9ca4c53c33f83581cad5b44b45ed597da8
