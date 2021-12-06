# frozen_string_literal: true

class Witcher < ApplicationRecord
  belongs_to :school

  has_one :sword

  validates_presence_of :name, :nickname, :age, :sword, :school_id, :location
  validates :age, numericality: { greater_than_or_equal_to: 1, only_integer: true }
end
