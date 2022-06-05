class Tourist < ApplicationRecord
  has_one :tour, dependent: :destroy

  validates_presence_of :firstname, :lastname, :age, :email
  validates :age, numericality: { :greater_than_or_equal_to => 14 }
end