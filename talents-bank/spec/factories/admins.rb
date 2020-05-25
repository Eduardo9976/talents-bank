FactoryBot.define do
  factory :admin do
    sequence(:email) {  |n| "admin#{n}@admin.com.br" }
    password { '12345678' }
  end
end
