# frozen_string_literal: true

FactoryBot.define do
  factory :organization do
    name { FFaker::CompanyJA.name }

    trait :with_users do
      transient do
        users_count { 5 }
      end

      after(:create) do |organization, evaluator|
        create_list(:user, evaluator.users_count, organization:)
      end
    end

    trait :with_rrum_users do
      transient do
        users_count { 5 }
      end

      after(:create) do |organization, evaluator|
        create_list(:user, evaluator.users_count, :with_rrum, organization:)
      end
    end
  end
end
