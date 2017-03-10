require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :firefox

wd.get "https://www.google.com.br/?gws_rd=ssl"
wd.find_element(:id, "lst-ib").click
wd.find_element(:id, "lst-ib").clear
wd.find_element(:id, "lst-ib").send_keys "inmetrics"
wd.find_element(:id, "_fZl").click
wd.find_element(:link_text, "Quem Somos - Inmetrics").click
wd.find_element(:xpath, "//label[@for='slides_2']").click
if not wd.find_element(:id, "slides_2").selected?
    wd.find_element(:id, "slides_2").click
end
wd.find_element(:xpath, "//div[@class='csslider']//div[.=' 2016']").click
wd.find_element(:css, "div.arrows").click
wd.action.double_click(wd.find_element(:xpath, "//div[@class='entry-content']//div[.='mais de 15 anos de atuação']")).perform
wd.action.double_click(wd.find_element(:xpath, "//div[@class='entry-content']/div[1]/div/div/div[1]/div/div/div[1]/h3")).perform
wd.find_element(:xpath, "//label[@for='slides_2']").click
wd.find_element(:id, "slides_2").click
wd.find_element(:xpath, "//div[@class='csslider']//div[.=' 2016']").click
wd.find_element(:xpath, "//div[@class='csslider']//div[.=' 2016']").click
wd.find_element(:xpath, "//div[@class='csslider']/ul/li[2]/div/ul/li[5]/p").click
wd.find_element(:xpath, "//div[@class='csslider']/ul/li[2]/div/ul/li[5]/p").click
wd.action.double_click(wd.find_element(:css, "div.arrows")).perform
wd.quit
