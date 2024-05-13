# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { FFaker::NameJA.first_name }
    last_name { FFaker::NameJA.last_name }

    trait :with_organization do
      organization
    end

    trait :with_rrum do
      first_name { 'りうむ' }
      last_name { 'り' }
    end
  end
end
