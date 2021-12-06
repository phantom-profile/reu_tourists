# frozen_string_literal: true

class SwordType < ApplicationRecord
  TYPES = %w[Iron Silver].freeze

  has_many :swords

  validates :material, presence: true, inclusion: TYPES
end
