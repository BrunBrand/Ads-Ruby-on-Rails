require "application_system_test_case"
require 'factory_bot_rails'

class LoginsTest < ApplicationSystemTestCase
    
  test "login com credencial valida" do 
    user = FactoryBot.create(:user)

    visit root_path
    click_link "Entrar"

    fill_in "E-mail", with: user.email
    fill_in "Senha", with: "password"

    click_button "Entrar"

    assert_text "Bem vindo Bruno!"


    
  end
end
