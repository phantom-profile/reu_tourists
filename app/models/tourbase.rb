class Tourbase < ApplicationRecord
  belongs_to :region
  has_many :tourists, dependent: :nullify
  has_many :tours, dependent: :destroy
  has_many :users, dependent: :restrict_with_error

  validates_presence_of :region, :name, :max_capacity
  validates :current_capacity, numericality: { :greater_than_or_equal_to => 0 }
  before_validation :count_current_capacity

  def count_current_capacity
    self.current_capacity = max_capacity - tours.count
  end
end