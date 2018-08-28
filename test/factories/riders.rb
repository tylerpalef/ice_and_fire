FactoryBot.define do
  factory :rider do
    nickname "The Conqueror"
    email {'#{name.downcase}@westeros.com'}
  end
end
