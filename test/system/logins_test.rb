require "application_system_test_case"
require 'factory_bot_rails'

class LoginsTest < ApplicationSystemTestCase
  
  def setup
    @user = FactoryBot.create(:user)
  end

  test "login com credencial valida" do 
   

    visit root_path
    click_link "Entrar"

    fill_in "E-mail", with: @user.email
    fill_in "Senha", with: "password"

    click_button "Entrar"

    assert_text "Bem vindo Bruno!"
  end

  test "login com credencial invalida" do
    
    visit root_path
    click_link "Entrar"

    fill_in "E-mail", with: @user.email
    fill_in "Senha", with: "invalidpassword"

    click_button "Entrar"

    assert_equal new_session_path, current_path
    assert_text "E-mail ou senha invalidos"

  end

end
