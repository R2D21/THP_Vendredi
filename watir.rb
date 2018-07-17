# coding: utf-8
#
# watir.rb for watir in /home/remi/Informatique/THP/semaine_2/THP_Vendredi
#
# Made by Rémi Boivin
# Login   <remi@remi-info.fr>
#
# Started on  Sun Jul 15 20:11:46 2018 Rémi Boivin

require 'watir'
@browser = Watir::Browser.new()
@browser.goto 'https://startuponly.com/# '
def clicks(browser)
  submit_button = browser
  submit_button.click
  @browser.driver.manage.timeouts.implicit_wait = 3
end

def aff_pres
  search_result_divs = @browser.p(class:"company__job__description")
  puts search_result_divs.text
end

def perform
  clicks(@browser.div(class:"filters__tag"))
  search_result_divs = @browser.div(:id, "jobs__list row")
  i = 0
  sleep(2)
  i = 0
  for i in (1..19)
  search_result_divs = @browser.article(:class => ["job col-12"], :index => i).div
  puts search_result_divs.a.href
  end
  # search_result_divs = @browser.article(:class => ["job col-12"]).div
  # puts search_result_divs.a.href
  # puts search_result_divs.parent.parent.div.text

  # clicks(@browser.div(class:"job__name").a)
  # aff_pres
  # p "Méfait accompli, fermeture du browser"
  @browser.close
end

perform
