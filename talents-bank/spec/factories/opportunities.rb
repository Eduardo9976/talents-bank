FactoryBot.define do
  factory :opportunity do
   sequence(:title) {  |n| "Desenvolvedor #{n}" }
    description { "Back-end" }
    skills { "Ruby on Rails, HTML, JavaScript" }
    salary { "3000.00" }
    level { "Junior" }
    region { "Paulista" }
    end_date { "#{3.days.from_now}" }
    #code { "MyString" }
  end
end
