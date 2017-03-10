# encoding: utf-8
# !/usr/bin/env ruby
class Busca < SitePrism::Page
  element :lst-ib, 'lst-ib'
  element :gs_htif0, 'gs_htif0'
  element :_fZl, '_fZl'
  

  def selecionar_empresa empresa
    lst-ib.click
	gs_htif0.fill
    
    
  end

  def clicar_fZl
    _fZl.click
    sleep 5
    ResultadoBusca.new
  end
end