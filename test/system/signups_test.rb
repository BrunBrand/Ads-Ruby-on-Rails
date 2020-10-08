require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase

  test "usuario faz cadastro com dados validos" do
    visit "/"
    click_on "Cadastre-se"

    fill_in "Nome", with: "Brunao"
    fill_in "E-mail", with: "Brun@ao.com"
    fill_in "Senha", with: "umasenha"
    fill_in "Confirme sua senha", with: "umasenha"

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!"
  
  end


  test "usuario faz cadastro com dados invalidos" do
    visit "/"
    click_on "Cadastre-se"
    click_on "Cadastrar"

    assert_text "Erro nos dados"
  
  end

end
