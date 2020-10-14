
FactoryBot.define do
    factory :user do
        name {"Bruno"}
        sequence(:email) {|n| "bruno#{n}@gmail.com"}
        password {"password"}
        password_confirmation {"password"}
    end
end