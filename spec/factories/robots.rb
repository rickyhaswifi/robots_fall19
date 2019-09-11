FactoryBot.define do
  factory :robot do
    name { "Arnold" }
    serial { "1234" }
    friendly { true }
    color { "Red" }
    sound { "Brrperp!" }
    inventor
  end
end

#FactoryBot.create(:robot)
#FactoryBot.create(:robot, friendly: false, name: 'Bender')