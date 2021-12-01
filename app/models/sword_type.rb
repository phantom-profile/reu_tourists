class SwordType < ApplicationRecord
  TYPES = %w[Iron Silver]

  has_many :swords

  validates :type, presence: true, inclusion: TYPES
end
