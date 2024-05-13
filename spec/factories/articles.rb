# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { FFaker::LoremJA.sentence }
    body { FFaker::LoremJA.paragraph }

    trait :full do
      transient do
        organization { association :organization, :with_users }
      end

      user { association :user, organization: }
    end
  end
end
