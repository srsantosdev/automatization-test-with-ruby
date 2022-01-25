class LoginPage < SitePrism::Page
  element :emailField, :id, "session_key"
  element :passwordField, :id, "session_password"
  element :loginButton, :xpath, "//button[@class='sign-in-form__submit-button']"

  def userLogin
    emailField.set "email@example.com"
    passwordField.set "senha123"
    loginButton.click
  end
end