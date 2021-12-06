# frozen_string_literal: true

class School < ApplicationRecord
  has_many :witchers, foreign_key: :school_id, dependent: :nullify

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates_presence_of :location
end
