# frozen_string_literal: true

class Organization < ApplicationRecord
  has_many :users, dependent: :destroy
end
