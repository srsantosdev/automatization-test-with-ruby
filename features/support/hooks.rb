Before do
  Capybara.page.driver.browser.manage.window.maximize
end

After do
  puts "Finished!"
end