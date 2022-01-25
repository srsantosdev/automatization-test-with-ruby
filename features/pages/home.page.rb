class HomePage < SitePrism::Page
  element :userName, :xpath, "/html/body/div[5]/div[3]/div/div/div[2]/div/div/div/div[1]/div[1]/a/div[2]"
  element :navBarHome, :xpath, "//*[@id='ember18']/span"

  def checkLoginSuccessfully
    expect(navBarHome.text).to eql "Início"
    expect(userName.text).to eql "Samuel Ramos"
  end
end