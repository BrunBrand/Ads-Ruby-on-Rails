require "application_system_test_case"
require 'factory_bot_rails'

class LoginsTest < ApplicationSystemTestCase
  
  def setup
    @user = FactoryBot.create(:user)
  end

  test "login com credencial valida" do 
   
    login_as(@user)

    assert_text "Bem vindo Bruno!"
  end

  test "login com credencial invalida" do
    
    login_as(@user, "invalidpassword")

    assert_equal new_session_path, current_path
    assert_text "E-mail ou senha invalidos"

  end

end
