require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "nome é obrigatório" do
        user = User.new(name: nil)
        user.save
        assert user.errors[:name].any?

    end

    test "email é obrigatorio" do
    user = User.new(email: nil)
    user.save

    assert user.errors[:email].any?    
    
    user = User.new(email: "invalido")
    user.save

    assert user.errors[:email].any?

    user = User.new(email: "valido@example.com")
    user.save

    refute user.errors[:email].any?

    end

    test "email é unico" do
        user = User.create!(name: "Bruno", email: "Bruno@exemplo.com", password: "senha", password_confirmation: "senha")
        
        another_user = User.create(name: "Bruno", email: "Bruno@exemplo.com", password: "senha", password_confirmation: "senha")
    
        assert another_user.errors[:email].any?

    end



end
