# frozen_string_literal: true

class Sword < ApplicationRecord
  belongs_to :sword_type
  belongs_to :witcher, optional: true

  validates_presence_of :name, :sword_type_id, :min_damage, :max_damage
  validates :min_damage, :max_damage, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  validate :min_damage_less_than_max

  scope :without_owner, -> { where(witcher_id: nil) }
  private

  def min_damage_less_than_max
    return true if min_damage < max_damage

    errors.add(:min_damage, 'must be less than maximum')
  end
end
