class SwordType < ApplicationRecord
  TYPES = %w[Iron Silver]

  has_many :swords

  validates :material, presence: true, inclusion: TYPES
end
