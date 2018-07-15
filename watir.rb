# coding: utf-8

require 'watir'
@browser = Watir::Browser.new()
@browser.goto 'https://startuponly.com/# '
def     clicks(browser)
  submit_button = browser
  submit_button.click
  @browser.driver.manage.timeouts.implicit_wait = 3
end
clicks(@browser.div(class:"filters__tag"))
clicks(@browser.div(class:"job__name").a)
search_result_divs = @browser.p(class:"company__job__description")
puts search_result_divs.text
p "Méfait accompli, fermeture du browser"
@browser.close
