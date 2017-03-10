# encoding: utf-8
# !/usr/bin/env ruby
class ResultadoBusca < SitePrism::Page
  elements :link_text, 'Quem Somos - Inmetrics'
  elements :slide_2, 'slide_2'
  elements :2016, '2016'
  elements :inicio_operacoes, 'Início das operações em Bogotá (Colômbia)'

  def clicar_slide_2
    slide_2.click
    sleep 1
  end

  
end