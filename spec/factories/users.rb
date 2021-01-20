FactoryBot.define do
  factory :user do
    nickname               {"noah"}
    family_name            {"桃屋"}
    first_name             {"のあ"}
    family_name_kana       {"モモヤ"}
    first_name_kana        {"ノア"}
    email                  {Faker::Internet.free_email}
    password               {"123456a"}
    password_confirmation  {"123456a"}
    birthday               { Faker::Date.backward }
  end
end

# FactoryBot.define do
#   factory :user do
#     transient do
#       person { Gimei.name }
#    end
#    date { Faker::Date.backward }
#    first_name { person.first.kanji }
#    last_name { person.last.kanji }
#    first_name_kana { person.first.katakana }
#    last_name_kana { person.last.katakana }
#  end
# end